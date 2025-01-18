# Born2beroot

This project explores virtualization, system management, and key Linux tools for setting up and managing virtual environments. Below is a detailed guide covering concepts, commands, and practical implementations.

---

## Virtual Machine Basics

### What is a Virtual Machine?  
A Virtual Machine (VM) abstracts the host's physical resources (CPU, RAM, and storage) to create an isolated, virtualized environment. A hypervisor manages these resources, enabling multiple operating systems to run on the same physical machine.

### How Do Virtual Machines Work?  
VMs share physical resources via hardware emulation by the hypervisor. This allows guest operating systems to coexist independently while utilizing the host system’s resources.

### What is a Hypervisor?  
A hypervisor is software that abstracts physical hardware for virtual machines. It allocates resources like CPU, memory, and storage to VMs, ensuring efficient operation and isolation.

---

## System Management and Commands

### SSH and Connecting Host to Guest  

SSH (Secure Shell) is used to establish secure connections between the host and guest systems. This enables remote management and data transfer.
### Hypervisor

A hypervisor manages virtual machines by emulating physical hardware. It allows multiple operating systems to run on a single host while isolating their resources

### UFW (Uncomplicated Firewall)  

UFW simplifies firewall management. Common commands include:
- Enable/Disable Firewall**:
  ```bash
  sudo ufw enable
  sudo ufw disable
  ```
- Allow/Deny Ports

 ```bash
    sudo ufw allow 22
    sudo ufw deny 80
 ```
### User and Group Management

- Create a User:
 ```bash
    sudo adduser username
 ```
- Add a User to a Group:
 ```bash
    sudo usermod -aG groupname username
 ```
- Configure Sudo Permissions:
    Use visudo to safely edit the /etc/sudoers file for managing user access
### APT vs. APTITUDE

- APT
    APT is a command-line tool for installing, upgrading, and removing packages. It is efficient and widely used for package management tasks.
- APTITUDE
    Aptitude is a package manager with a command-line interface and an optional Text User Interface (TUI). It offers advanced features such as improved dependency resolution.
- Key Differences
    * APT: Lightweight and straightforward, ideal for routine tasks
    * APTITUDE: More advanced, with an interactive interface for additional control
### LVM (Logical Volume Management)

    LVM is used to dynamically manage disk partitions, allowing resizing and extension without downtime. It is crucial for efficient storage management in modern Linux systems
- tty (Teletype)
    The tty command displays the terminal being used, helping users understand system interactions
- Configuring Sudo and User Permissions
    ```bash
    sudo usermod -aG sudo username
    ```
    * Use visudo to securely edit /etc/sudoers for fine-grained permission control
### Conclusion

The Born2beroot project combines theoretical knowledge and practical applications, preparing you for effective system administration in virtualized environments. Dive into concepts like virtualization, firewall management, and logical volume management, and implement your learnings through real-world tasks like setting up WordPress or enforcing password policies. Master these skills and become proficient in Linux system management!

