+++
title = "Linux Command Line Essentials"
date = 2025-01-20
description = "Essential Linux commands every developer should know"
+++

# Linux Command Line Essentials

The Linux command line is a powerful tool that every developer and cybersecurity professional should master. Here are some essential commands that will make your life easier.

## File and Directory Operations

### Navigation
```bash
# Change directory
cd /path/to/directory

# List files and directories
ls -la

# Print working directory
pwd
```

### File Management
```bash
# Copy files
cp source.txt destination.txt

# Move/rename files
mv oldname.txt newname.txt

# Remove files
rm filename.txt

# Remove directories
rm -rf directory_name
```

## Text Processing

### Viewing Files
```bash
# Display file content
cat filename.txt

# View file with pagination
less filename.txt

# Show first/last lines
head -n 10 filename.txt
tail -n 10 filename.txt
```

### Searching
```bash
# Search for text in files
grep "pattern" filename.txt

# Search recursively in directories
grep -r "pattern" /path/to/search
```

## System Information

```bash
# Display running processes
ps aux

# Show system resource usage
top

# Display disk usage
df -h

# Show memory usage
free -h
```

## Permissions

```bash
# Change file permissions
chmod 755 script.sh

# Change file ownership
chown user:group filename.txt
```

## Conclusion

These commands form the foundation of Linux system administration and are essential for anyone working with Linux systems. Practice them regularly to build muscle memory!

Remember: with great power comes great responsibility. Always double-check your commands, especially when using `rm` or `chmod`.
