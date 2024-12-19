-- +goose Up
-- +goose StatementBegin
CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    createdAt DATETIME NOT NULL
);
-- +goose StatementEnd
INSERT INTO posts (title, content, createdAt) VALUES 
('The Joy of Coding', 'Exploring the beauty and elegance of programming languages.', '2024-12-19 10:00:00'),
('AI Revolution', 'How AI is transforming industries and our daily lives.', '2024-12-18 14:30:00'),
('Travel Guide to Japan', 'Discover the best places to visit in Japan.', '2024-12-17 09:15:00'),
('Healthy Eating Tips', '10 simple ways to maintain a balanced diet.', '2024-12-16 08:00:00'),
('Future of Space Exploration', 'NASA’s plans for Mars and beyond.', '2024-12-15 11:45:00'),
('Introduction to Quantum Computing', 'Demystifying the quantum world.', '2024-12-14 16:20:00'),
('Top 10 Movies of 2024', 'A look back at the most iconic films of the year.', '2024-12-13 20:10:00'),
('Building a Startup', 'Lessons learned from launching a tech startup.', '2024-12-12 13:00:00'),
('Photography Tips for Beginners', 'How to capture stunning photos with ease.', '2024-12-11 18:30:00'),
('Climate Change and You', 'What you can do to make a difference.', '2024-12-10 21:40:00');
-- +goose Down
-- +goose StatementBegin
DROP TABLE posts;
-- +goose StatementEnd
