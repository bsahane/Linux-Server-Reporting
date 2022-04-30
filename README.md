# Linux-Server-Reporting

### Remote Linux Server Reporting on Local System using Shell Script

Explanation:
| File | Description |
|------|-------------|
| `main.sh` | This Script is used to execute `script.sh` on Remote Server and Generate Remote on Local System | 
| `script.sh` | Actual Script which will be Executed on Remote Server | 
| `ServerReport.txt` | Generated Report of Remote Server on Local System |

Simply Run below command it will ask you Remote Server IP address and User Creadetials

```bash
sh main.sh
```

##### Report includes below details,
OS Type, OS Name, OS Version, Architecture, Kernel Release, Hostname, IP Address, Nameserver, Logged In Users, Memory Usage in MB, Swap Usage in MB, Disk Usages, Load Average, and System Uptime.
