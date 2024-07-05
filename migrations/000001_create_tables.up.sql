BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TYPE impact_category AS ENUM ('water_saved', 'co2_reduced', 'food_produced', 'waste_composted');

CREATE TABLE impact_logs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL,
    community_id UUID NOT NULL,
    category impact_category,
    amount DECIMAL(10, 2),
    unit VARCHAR(20),
    logged_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE sustainability_challenges (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    title VARCHAR(255) NOT NULL,
    description TEXT,
    goal_amount DECIMAL(10, 2),
    goal_unit VARCHAR(20),
    start_date DATE,
    end_date DATE
);

CREATE TABLE user_challenges (
    user_id UUID NOT NULL,
    community_id UUID NOT NULL,
    challenge_id UUID REFERENCES sustainability_challenges(id),
    progress DECIMAL(10, 2) DEFAULT 0,
    completed_at TIMESTAMP WITH TIME ZONE,
    PRIMARY KEY (user_id, challenge_id)
);

COMMIT;