# Backup Script

## 📌 Overview

This Bash script automates the backup process by copying files from a specified source directory to an offline storage device using `rsync`. It ensures efficient synchronization while keeping a log of all backup activities.

## 🚀 Features

- Automated file backup using `rsync`
- Supports external hard drives and USB storage
- Logs backup activity for tracking
- Deletes files in the backup that no longer exist in the source

## 📂 Directory Structure

```
📁 backup-script/
│-- 📜 backup.sh      # The main backup script
│-- 📜 README.md      # Documentation
│-- 📜 backup.log     # Backup activity log
```

## 🔧 Requirements

- Linux-based OS (Ubuntu, Debian, Kali, etc.)
- `rsync` installed (`sudo apt install rsync` if missing)
- External storage mounted at `/media/$USER/BackupDrive`

## 📌 Usage

1. **Modify the script** to set your source (`SOURCE_DIR`) and destination (`BACKUP_DIR`).
2. **Make the script executable:**
   ```bash
   chmod +x backup.sh
   ```
3. **Run the script:**
   ```bash
   ./backup.sh
   ```
4. Check `backup.log` for details on the backup process.

## 🔄 Automating with Cron

To schedule automatic backups, edit the crontab:

```bash
crontab -e
```

Add this line to run the script daily at 2 AM:

```bash
0 2 * * * /path/to/backup.sh
```

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
