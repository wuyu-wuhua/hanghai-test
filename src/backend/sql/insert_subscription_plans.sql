-- 插入订阅计划数据，基于前端 pricing-tiers.tsx 的配置

-- Basic Plan - OneTime (ID: 1)
INSERT INTO subscription_plans (id, name, interval, price, currency, credit_per_interval, stripe_price_id, is_active, created_at) VALUES 
(1, 'Basic OneTime', 'month', 15.90, 'USD', 100, 'price_basic_onetime_1590', true, CURRENT_TIMESTAMP);

-- Basic Plan - Monthly (ID: 2)
INSERT INTO subscription_plans (id, name, interval, price, currency, credit_per_interval, stripe_price_id, is_active, created_at) VALUES 
(2, 'Basic Monthly', 'month', 14.90, 'USD', 100, 'price_basic_monthly_1490', true, CURRENT_TIMESTAMP);

-- Standard Plan - Monthly (ID: 3)
INSERT INTO subscription_plans (id, name, interval, price, currency, credit_per_interval, stripe_price_id, is_active, created_at) VALUES 
(3, 'Standard Monthly', 'month', 27.90, 'USD', 200, 'price_standard_monthly_2790', true, CURRENT_TIMESTAMP);

-- Premium Plan - Monthly (ID: 4)
INSERT INTO subscription_plans (id, name, interval, price, currency, credit_per_interval, stripe_price_id, is_active, created_at) VALUES 
(4, 'Premium Monthly', 'month', 43.90, 'USD', 400, 'price_premium_monthly_4390', true, CURRENT_TIMESTAMP);

-- Basic Plan - Yearly (ID: 5)
INSERT INTO subscription_plans (id, name, interval, price, currency, credit_per_interval, stripe_price_id, is_active, created_at) VALUES 
(5, 'Basic Yearly', 'year', 150.00, 'USD', 1000, 'price_basic_yearly_15000', true, CURRENT_TIMESTAMP);

-- Standard Plan - Yearly (ID: 6)
INSERT INTO subscription_plans (id, name, interval, price, currency, credit_per_interval, stripe_price_id, is_active, created_at) VALUES 
(6, 'Standard Yearly', 'year', 288.00, 'USD', 2000, 'price_standard_yearly_28800', true, CURRENT_TIMESTAMP);

-- Premium Plan - Yearly (ID: 8)
INSERT INTO subscription_plans (id, name, interval, price, currency, credit_per_interval, stripe_price_id, is_active, created_at) VALUES 
(8, 'Premium Yearly', 'year', 470.00, 'USD', 4200, 'price_premium_yearly_47000', true, CURRENT_TIMESTAMP);

-- Standard Plan - OneTime (ID: 9)
INSERT INTO subscription_plans (id, name, interval, price, currency, credit_per_interval, stripe_price_id, is_active, created_at) VALUES 
(9, 'Standard OneTime', 'month', 29.90, 'USD', 200, 'price_standard_onetime_2990', true, CURRENT_TIMESTAMP);

-- Premium Plan - OneTime (ID: 11)
INSERT INTO subscription_plans (id, name, interval, price, currency, credit_per_interval, stripe_price_id, is_active, created_at) VALUES 
(11, 'Premium OneTime', 'month', 48.90, 'USD', 400, 'price_premium_onetime_4890', true, CURRENT_TIMESTAMP);

-- 重置序列到最大ID之后
SELECT setval('subscription_plans_id_seq', 11, true);