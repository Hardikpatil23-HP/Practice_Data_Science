
**Infrastructure as a Service (IaaS)** in Azure provides **virtualized computing resources** over the cloud, including VMs, storage, networking, and security.

---

## **1. Azure Virtual Machines (VMs)**

- Fully managed **cloud-based virtual servers**.
- Supports **Windows, Linux, and custom OS images**.
- Allows users to choose CPU, RAM, disk size, and networking configurations.
- **Example Use Case**: Hosting web applications, running databases, or deploying enterprise software.

---

## **2. Azure Virtual Machine Scale Sets (VMSS)**

- Automatically **scales multiple VMs** based on demand.
- Supports **load balancing** for high availability.
- **Example Use Case**: Handling varying traffic for web applications or microservices.

---

## **3. Azure Storage (Blob, Disk, File, Queue, Table)**

- **Blob Storage**: Stores **unstructured data** (e.g., images, videos, backups).
- **Disk Storage**: SSD/HDD disks for **virtual machines**.
- **File Storage**: Cloud-based **SMB file shares**.
- **Queue/Table Storage**: For **message-based and NoSQL storage**.
- **Example Use Case**: Hosting **backups, logs, and media files**.

---

## **4. Azure Virtual Network (VNet)**

- Creates a **private, isolated network** for your cloud resources.
- Supports **subnets, network security groups (NSGs), VPNs, and ExpressRoute**.
- **Example Use Case**: Secure **VM communication and hybrid cloud networking**.

---

## **5. Azure Load Balancer**

- Distributes traffic across multiple **VMs or resources** for **high availability**.
- Supports **public and internal load balancing**.
- **Example Use Case**: Handling **web application traffic efficiently**.

---

## **6. Azure Bastion**

- Provides **secure remote access** to Azure VMs **without public IPs**.
- Eliminates the need for **RDP/SSH exposure on the internet**.
- **Example Use Case**: Securely managing VMs using **Azure Portal-based SSH/RDP**.

---

## **7. Azure Backup & Site Recovery (ASR)**

- **Azure Backup**: Protects **VMs, files, and SQL databases** from data loss.
- **Azure Site Recovery (ASR)**: Provides **disaster recovery and failover** solutions.
- **Example Use Case**: **Ensuring business continuity** during outages.

---

## **8. Azure Kubernetes Service (AKS)**

- Fully managed **Kubernetes container orchestration service**.
- Allows auto-scaling, monitoring, and networking for containerized apps.
- **Example Use Case**: Deploying **microservices-based applications**.

---

## **9. Azure VPN Gateway**

- Enables **secure connectivity** between **on-premises networks and Azure VNets**.
- Supports **Point-to-Site (P2S) and Site-to-Site (S2S) VPNs**.
- **Example Use Case**: **Hybrid cloud infrastructure** setup.

---

## **10. Azure Dedicated Hosts**

- Provides **physical servers** dedicated to a **single customer**.
- Offers **high compliance, security, and performance** for workloads.
- **Example Use Case**: Running **highly secure applications** in regulated industries.

---

### **🔹 Summary**

|**Azure IaaS Service**|**Purpose**|
|---|---|
|**Azure Virtual Machines (VMs)**|Cloud-based servers for applications|
|**VM Scale Sets (VMSS)**|Auto-scalable VM clusters|
|**Azure Storage**|Blob, file, and disk storage|
|**Virtual Network (VNet)**|Private cloud networking|
|**Azure Load Balancer**|Distributes traffic for high availability|
|**Azure Bastion**|Secure VM access without public IP|
|**Azure Backup & ASR**|Disaster recovery and backup solutions|
|**Azure Kubernetes Service (AKS)**|Container orchestration|
|**Azure VPN Gateway**|Secure hybrid cloud networking|
|**Azure Dedicated Hosts**|Physical cloud servers for compliance|
