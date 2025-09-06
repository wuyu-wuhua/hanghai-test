import { NextResponse } from "next/server";

export async function GET() {
  return NextResponse.json({ 
    status: "ok", 
    timestamp: new Date().toISOString(),
    env: {
      REPLICATE_API_TOKEN: process.env.REPLICATE_API_TOKEN ? "configured" : "missing",
      POSTGRES_URL: process.env.POSTGRES_URL ? "configured" : "missing"
    }
  });
}

export async function POST() {
  return NextResponse.json({ message: "POST method works" });
}