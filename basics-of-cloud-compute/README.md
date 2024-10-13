# Basics of Google Cloud Compute

The Basics of Google Cloud Compute includes learning about how to work with virtual machines (VMs), persistent disks, and web servers using Compute Engine.

## The Basics - Def & Diagrams

### Virtual Machines

A virtual machine (VM) is a computer file that mimics the functionality of a physical computer. VMs are created by isolating computing resources, such as CPU, memory, and storage, from a physical machine and making them available as a pool of resources.

### Instances

An instance is a virtual machine (VM) hosted on Google's infrastructure. You can create an instance or create a group of managed instances (MIG) by using the Google Cloud console, the Google Cloud CLI, or the Compute Engine API. When you create an instance in a project, you specify the zone, operating system, and machine type of that instance.

### Boot Disk

A boot disk is a removable storage device that contains the files needed to start a computer's operating system (OS) or utility program. The computer's BIOS or UEFI firmware looks for a system on all storage devices, and a bootable disk has the special files that the computer needs to load the OS.

### SSH (Secure Socket Shell)

SSH is a network communication protocol that gives users, particularly systems administrators, a secure way to access a computer over an unsecured network. It uses encryption (public key cryptography) to keep communication between the computers secure.

SSH allows for tunneling, or port forwarding, which enables data packets to cross networks they normally wouldn't be able to.

### Instance Templates

An instance template is a convenient way to save a virtual machine (VM) instance's configuration, which includes machine type, boot disk image, labels, startup script, and other VM properties.

### Instance Group

An instance group is a collection of virtual machine (VM) instances that you can manage as a single entity.

Compute Engine offers two kinds of VM instance groups:

- **Managed Instance Groups (MIGs):** Let you operate apps on multiple identical VMs.
- **Unmanaged Instance Groups:** Let you load balance across a fleet of VMs that you manage yourself.
