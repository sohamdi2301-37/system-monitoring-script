# System Monitoring Script

A lightweight, automated Bash script designed to monitor core Linux system metrics—including Disk usage, RAM utilization, and high CPU-consuming processes—and trigger real-time alerts when specified thresholds are exceeded.

---

## Features

* **Disk Usage Monitoring**: Tracks root file system (`/`) storage and alerts if usage exceeds the configurable threshold.
* **Memory Monitoring**: Calculates active RAM utilization and triggers an alert when memory usage breaches the set limit.
* **Process Tracking**: Lists the top 3 CPU-consuming processes along with PID, PPID, command details, memory, and CPU percentages.
* **Lightweight & Portable**: Built entirely using native POSIX/Linux commands (`df`, `free`, `ps`, `awk`, `sed`) with zero external dependencies.

---

## Prerequisites

* **Operating System**: Linux / Unix-based system
* **Shell**: Bash (`/bin/bash`)
* **Core Utilities**: `df`, `free`, `ps`, `awk`, `sed` (standard across virtually all Linux distributions)

---

## Quick Start

### 1. Clone the Repository
```bash
git clone [https://github.com/sohamdi2301-37/system-monitoring-script.git](https://github.com/sohamdi2301-37/system-monitoring-script.git)
cd system-monitoring-script
