BEGIN;

INSERT INTO impact_logs (user_id, community_id, category, amount, unit)
VALUES
(uuid_generate_v4(), uuid_generate_v4(), 'water_saved', 100.0, 'liters'),
(uuid_generate_v4(), uuid_generate_v4(), 'co2_reduced', 50.0, 'kg'),
(uuid_generate_v4(), uuid_generate_v4(), 'food_produced', 30.0, 'kg'),
(uuid_generate_v4(), uuid_generate_v4(), 'waste_composted', 20.0, 'kg'),
(uuid_generate_v4(), uuid_generate_v4(), 'water_saved', 150.0, 'liters'),
(uuid_generate_v4(), uuid_generate_v4(), 'co2_reduced', 70.0, 'kg'),
(uuid_generate_v4(), uuid_generate_v4(), 'food_produced', 40.0, 'kg'),
(uuid_generate_v4(), uuid_generate_v4(), 'waste_composted', 25.0, 'kg'),
(uuid_generate_v4(), uuid_generate_v4(), 'water_saved', 200.0, 'liters'),
(uuid_generate_v4(), uuid_generate_v4(), 'co2_reduced', 90.0, 'kg'),
(uuid_generate_v4(), uuid_generate_v4(), 'food_produced', 50.0, 'kg'),
(uuid_generate_v4(), uuid_generate_v4(), 'waste_composted', 30.0, 'kg');

INSERT INTO sustainability_challenges (title, description, goal_amount, goal_unit, start_date, end_date)
VALUES
('Challenge 1', 'Description 1', 100.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 2', 'Description 2', 200.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 3', 'Description 3', 300.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 4', 'Description 4', 400.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 5', 'Description 5', 500.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 6', 'Description 6', 600.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 7', 'Description 7', 700.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 8', 'Description 8', 800.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 9', 'Description 9', 900.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 10', 'Description 10', 1000.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 11', 'Description 11', 1100.0, 'kg', '2023-01-01', '2023-12-31'),
('Challenge 12', 'Description 12', 1200.0, 'kg', '2023-01-01', '2023-12-31');

INSERT INTO user_challenges (user_id, community_id, challenge_id, progress, completed_at)
VALUES
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 0 LIMIT 1), 10.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 1 LIMIT 1), 20.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 2 LIMIT 1), 30.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 3 LIMIT 1), 40.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 4 LIMIT 1), 50.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 5 LIMIT 1), 60.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 6 LIMIT 1), 70.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 7 LIMIT 1), 80.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 8 LIMIT 1), 90.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 9 LIMIT 1), 100.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 10 LIMIT 1), 110.0, NULL),
(uuid_generate_v4(), uuid_generate_v4(), (SELECT id FROM sustainability_challenges OFFSET 11 LIMIT 1), 120.0, NULL);

COMMIT;
