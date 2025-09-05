import { Pool } from "pg";

// 链接池，所有的连接都维护在这个连接池里面
let globalPool: Pool;

export function getDb() {
  if (!globalPool) {
    const connectionString = process.env.POSTGRES_URL;

    if (!connectionString) {
      throw new Error("POSTGRES_URL environment variable is not set");
    }

    if (!isValidConnectionString(connectionString)) {
      throw new Error("Invalid POSTGRES_URL format");
    }

    globalPool = new Pool({
      connectionString,
      max: 20,
      idleTimeoutMillis: 30000,
      connectionTimeoutMillis: 2000,
    });

    // 测试连接
    globalPool.on('error', (err) => {
      console.error('Unexpected error on idle client', err);
    });
  }

  return globalPool;
}

function isValidConnectionString(connectionString: string): boolean {
  try {
    const url = new URL(connectionString);
    return url.protocol === 'postgres:' || url.protocol === 'postgresql:';
  } catch {
    return false;
  }
}

export async function testConnection(): Promise<boolean> {
  try {
    const pool = getDb();
    const client = await pool.connect();
    await client.query('SELECT NOW()');
    client.release();
    return true;
  } catch (error) {
    console.error('Database connection test failed:', error);
    return false;
  }
}