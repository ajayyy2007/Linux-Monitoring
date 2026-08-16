# Linux System Monitoring Toolkit

A modular Linux system monitoring toolkit built with **Bash scripting** on **Ubuntu WSL**.

The project collects useful system information such as CPU, memory, disk usage, network connectivity, system information, and running processes. The individual monitoring modules are combined through a central Bash script and their results are stored in a log file.

## 🚀 Features

* System information monitoring
* CPU information and load monitoring
* Memory usage monitoring
* Disk usage monitoring
* Network connectivity checking
* Process monitoring
* Modular Bash scripts
* Centralized monitoring logs
* Exit status handling
* Linux `/proc` filesystem usage
* Command output redirection

## 🛠️ Technologies

* Bash
* Linux
* Ubuntu
* WSL
* Git
* GitHub

## 📁 Project Structure

```text
linux-system-monitor/
│
├── monitor.sh
│
├── modules/
│   ├── system.sh
│   ├── cpu.sh
│   ├── memory.sh
│   ├── disk.sh
│   ├── network.sh
│   └── process.sh
│
├── logs/
│   └── .gitkeep
│
├── README.md
└── .gitignore
```

## ⚙️ How It Works

The project uses separate Bash modules for different monitoring tasks.

```text
                    monitor.sh
                        │
        ┌───────────────┼───────────────┐
        ↓               ↓               ↓
   system.sh         cpu.sh        memory.sh
        ↓               ↓               ↓
    disk.sh        network.sh     process.sh
        │               │               │
        └───────────────┼───────────────┘
                        ↓
                 monitor.log
```

Each module collects information from Linux using commands and system files such as `/proc`.

The main `monitor.sh` script executes all modules and redirects their output into a centralized log file.

## ▶️ Usage

Clone the repository:

```bash
git clone <your-repository-url>
cd linux-system-monitor
```

Give execution permission:

```bash
chmod +x monitor.sh
chmod +x modules/*.sh
```

Run the complete monitoring tool:

```bash
./monitor.sh
```

The monitoring results are stored in:

```text
logs/monitor.log
```

To view the log:

```bash
cat logs/monitor.log
```

## 🔍 Individual Modules

You can also execute each module separately.

### System

```bash
./modules/system.sh
```

Displays:

* Hostname
* Operating system
* Kernel version
* Architecture
* System uptime
* Current date/time

### CPU

```bash
./modules/cpu.sh
```

Displays:

* CPU model
* Number of logical CPUs
* CPU cores
* Load average

### Memory

```bash
./modules/memory.sh
```

Displays:

* Total memory
* Used memory
* Available memory
* Memory usage percentage

### Disk

```bash
./modules/disk.sh
```

Displays filesystem:

* Total size
* Used space
* Available space
* Usage percentage
* Mount point

### Network

```bash
./modules/network.sh
```

Checks:

* Network interfaces
* IP address
* Internet connectivity
* DNS connectivity

### Processes

```bash
./modules/process.sh
```

Displays processes with high:

* CPU usage
* Memory usage

## 📚 Linux Concepts Practiced

This project was built to gain practical experience with:

* Bash variables
* Command substitution
* Pipes
* Input/output redirection
* Exit codes
* Conditional statements
* Bash arithmetic
* `grep`
* `awk`
* `cut`
* `tail`
* `df`
* `ps`
* `top`
* `ping`
* `/proc/cpuinfo`
* `/proc/meminfo`
* `/proc/loadavg`
* Modular shell scripting
* Centralized logging

## 🎯 Learning Objective

The goal of this project was to move beyond learning Linux commands individually and use Bash scripting to combine them into a practical Linux monitoring utility.

This project is part of my journey toward learning **DevOps, Linux administration, automation, and cloud technologies**.

## 🔮 Future Improvements

Possible future improvements include:

* CPU usage threshold alerts
* Automated monitoring with cron
* Email or messaging notifications
* Remote server monitoring
* Configuration-based thresholds
* Integration with Prometheus and Grafana

## 👨‍💻 Author

Built as a hands-on Linux and Bash scripting project while learning DevOps.


Example output image:

<img width="938" height="888" alt="image" src="https://github.com/user-attachments/assets/f671e7e4-d401-4590-89b3-672f70e5851d" />

