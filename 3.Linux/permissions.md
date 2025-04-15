# Linux File Permissions

In Linux, file permissions are a critical aspect of the operating system's security model. Understanding how to manage these permissions is essential for maintaining system integrity and protecting sensitive data. This document will cover the following topics:

## User Roles

Linux defines three types of users for file permissions:

1. **Owner**: The user who owns the file. Typically, this is the user who created the file.
2. **Group**: A set of users who share access to the file. Each file is associated with a group.
3. **Others**: All other users who are not the owner or part of the group.

## Permission Types

There are three types of permissions that can be assigned to each user role:

1. **Read (r)**: Permission to read the contents of the file.
2. **Write (w)**: Permission to modify the file or delete it.
3. **Execute (x)**: Permission to execute the file as a program or script.

## Viewing Permissions

You can view the permissions of files in a directory using the `ls -l` command. The output will display the permissions in the following format:

```
-rwxr-xr--
```

The first character indicates the file type (e.g., `-` for a regular file, `d` for a directory). The next nine characters are grouped into three sets of three, representing the permissions for the owner, group, and others, respectively.

## Modifying Permissions

Permissions can be modified using the `chmod` command. The syntax is as follows:

```
chmod [permissions] [file]
```

Permissions can be specified using either symbolic notation (e.g., `u+x` to add execute permission for the owner) or numeric notation (e.g., `755`).

### Examples:

- To add execute permission for the owner:
  ```
  chmod u+x filename
  ```

- To set permissions to `rw-r--r--` (read and write for owner, read for group and others):
  ```
  chmod 644 filename
  ```

## Conclusion

Understanding and managing file permissions in Linux is crucial for system security and user access control. By mastering these concepts, you can ensure that your files are protected and accessible only to the intended users.