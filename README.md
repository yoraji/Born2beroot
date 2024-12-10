### Virtual Machine Questions  
    **What is a Virtual Machine?**  
        Virtualization allows the creation of a computer system inside a host machine, isolating 
        resources .A hypervisor manages physical hardware (CPU, RAM, storage) for guest systems.  
    **How Do Virtual Machines Work?**  
        VMs use shared physical resources, allowing multiple operating systems to run on the same mach
        ine via hardware emulation by the hypervisor.  
    **Who Works with Virtual Machines?**  
        Virtual machines interact with the host OS, using resources abstracted by the hypervisor.

### System Management and Commands  
    **SSH and Connecting Host to Guest**  
        Understand how SSH is used to connect host and guest systems.  
    **UFW (Uncomplicated Firewall)**  
        Common UFW commands for project needs.  
    **User and Group Management**  
        Creating users, adding to groups, and sudo configuration.

### Key Concepts and Tools  
    **APT vs. APTITUDE**  
        **APT**: Package management tool for installing, upgrading, and removing packages.  
        **APTITUDE**: A more advanced tool for package management with a command-line interface and 
                      optional TUI (Text User Interface).  

    **LVM (Logical Volume Management)**  
        Dividing and extending disk partitions efficiently with LVM.  
        The importance of LVM in modern Linux systems for managing disk space.  

    **tty (Teletype)**  
        Understanding tty commands for system interaction.  

### Practical Implementations  
    **WordPress Setup**  
        Basic steps for setting up a WordPress site with lighttpd, MariaDB, and PHP.  
    **Password Policy Configuration**  
        Setting up password policies and configuring security settings.  

### Additional Notes  
    **Hypervisor**  
        A program managing virtual machines by emulating physical hardware, enabling multiple 
        systems to run on the same physical host.  
    **Configuring sudo and User Permissions**  
        Detailed explanations on sudo configuration, adding users to groups, and managing root
        privileges.
    --------------------------------------------------------------------------------------------
    Virtual Machines and Hypervisors
    --------------------------------
    
    What is a Virtual Machine?
    --------------------------
    
    A Virtual Machine (VM) is a system that abstracts the host's physical resources
    (CPU, RAM, storage)to create a virtualized environment. It uses a hypervisor to
    manage virtual hardware and run multiple operating systems on the same physical machine.


    How Do Virtual Machines Work?
    -----------------------------
        
        Virtual machines are created using virtualization, which involves running a guest 
        operating system on top of a host OS. The hypervisor manages the physical resources
        and allocates them to the VM, allowing multiple operating systems to coexist.

    What is a Hypervisor?
    ---------------------
        A hypervisor is software that abstracts physical hardware, enabling virtual 
        machines to run on the host system. It manages resources such as CPU, memory, 
        and storage for each VM.

    APT vs. APTITUDE
    ----------------
        APT
        ---
    APT is a package management tool for advanced tasks such as installing, upgrading, and removing 
    packages. It also allows the user to view a list of packages and perform package management.

    APTITUDE
    --------
    Aptitude is another package management tool with a command-line interface and optional TUI 
    (Text User Interface) for managing packages. It is used for software management programs to work
    properly (apt full-update, apt remove, apt search, etc.). Aptitude downloads all 
    required packages for installing, upgrading, configuring, and removing packages,
    and querying package information.

    Key Differences
    ---------------
        
        APT:
        ----
        Command-line tool for installing, upgrading, and managing packages.
        
        APTITUDE:
        ---------
        Provides an interface for managing packages, offering more features
        like dependency resolution and optional TUI.
# Born2beroot
