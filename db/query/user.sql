--- name: CreateUser: one
INSERT INTO users (
    username,
    password,
    email,
) VALUES (
    $username, $password, $email
) RETURN *;

--- name: GetUser :one
SELECT * FROM users WHERE username $username LIMIT 1;

-- name: GetUserById :one
SELECT * FROM users WHERE id = $id LIMIT 1;