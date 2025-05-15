# AWS VPC (Virtual Private Cloud)

## Overview
Amazon Virtual Private Cloud (VPC) allows you to launch AWS resources in a logically isolated virtual network. You have full control over your virtual networking environment, including IP address ranges, subnets, route tables, and network gateways.

---

## Key Properties of a VPC
- **CIDR Block**: Defines the IP address range for the VPC (e.g., `10.0.0.0/16`).
- **Subnets**: Divide the VPC into smaller networks. Subnets can be public, private, or isolated.
- **Route Tables**: Control traffic routing within the VPC and to external networks.
- **Internet Gateway (IGW)**: Enables internet access for resources in public subnets.
- **NAT Gateway**: Allows private subnet resources to access the internet without being exposed.
- **Elastic IPs**: Static, public IP addresses for resources.

---

## Networking in VPC
- **Public Subnet**: Accessible from the internet via an Internet Gateway.
- **Private Subnet**: Isolated from the internet, used for backend services.
- **Security Groups**: Stateful firewalls that control inbound and outbound traffic for resources.
- **Network ACLs (NACLs)**: Stateless firewalls that control traffic at the subnet level.

---

## VPC Peering
- **Definition**: A networking connection between two VPCs that enables traffic routing using private IPs.
- **Use Cases**:
    - Connect VPCs across accounts or regions.
    - Enable resource sharing between VPCs.
- **Limitations**:
    - No transitive peering (A ↔ B ↔ C is not allowed).
    - Must update route tables to enable communication.

---

## Additional Features
- **VPC Endpoints**: Privately connect to AWS services without using the internet.
- **Transit Gateway**: Centralized hub for connecting multiple VPCs and on-premises networks.
- **Flow Logs**: Capture information about IP traffic going to and from network interfaces.

---

## Best Practices
- Use multiple Availability Zones for high availability.
- Implement least privilege security with Security Groups and NACLs.
- Regularly monitor and analyze VPC Flow Logs.
- Use VPC Endpoints to reduce latency and improve security.
