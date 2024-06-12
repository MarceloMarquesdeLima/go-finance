--- name: CreateCategory: one
INSERT INTO categories (
    user_id,
    title,
    type,
    descrition
) VALUES (
    $user_id, $title, $type, $description
) RETURN *;

--- name: GetUser :one
SELECT * FROM categories WHERE id = $id LIMIT 1;

-- name: GetUserById :one
SELECT * FROM categories WHERE id = $id AND type = $type AND title LIKE $title AND description LIKE $description;