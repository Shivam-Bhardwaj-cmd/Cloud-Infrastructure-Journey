# Linux Day 1 – Navigation & File Operations

## Navigation Commands

### pwd
- Print Working Directory
- Shows the current directory.

Example:
```bash
pwd
```

---

### ls
- Lists files and folders in the current directory.

```bash
ls
```

### ls -l
- Long listing format.
- Shows permissions, owner, size, date.

```bash
ls -l
```

### ls -la
- Shows all files including hidden files.

```bash
ls -la
```

---

### cd
- Change Directory.

Examples:

```bash
cd linux
cd ..
cd ../../docker
cd ~
```

Special Symbols:

- `.` → Current directory
- `..` → Parent directory
- `~` → Home directory
- `/` → Root directory

---

## File Operations

### touch

Creates a new empty file.

```bash
touch demo.txt
```

---

### mkdir

Creates a directory.

```bash
mkdir backups
```

Nested folders:

```bash
mkdir -p labs/day1
```

---

### cp

Copies a file.

```bash
cp demo.txt demo_backup.txt
```

Result:

- Original remains.
- New copy is created.

---

### mv

Moves or renames files.

Move:

```bash
mv demo_backup.txt backups/
```

Rename:

```bash
mv demo.txt notes.txt
```

---

### find

Lists files recursively.

```bash
find .
```

---

## Key Learnings

- Relative Path starts from current directory.
- Absolute Path starts from root.
- `cp` keeps the original file.
- `mv` removes the original after moving.
- Linux is case-sensitive.
- Small spelling mistakes cause command failures.

---

## Interview Questions

Q1. Difference between cp and mv?

cp → Creates a copy.
mv → Moves or renames.

Q2. Difference between Relative and Absolute Path?

Relative → Current location.
Absolute → Complete path from root.