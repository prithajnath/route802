# route802

A pet project to turn a Linux machine (such as a Raspberry Pi) with required hardware into a basic router

## Required functionality
   * Web interface
   * Route packets between the firewall and the application servers.
   * Handle ARP requests and replies.
   * Handle traceroutes through it (where it is not the end host) and to it (where it is the end host).
   * Respond correctly to ICMP echo requests.
   * Handle TCP/UDP packets sent to one of its interfaces. In this case the router should respond with an ICMP port unreachable.
   * Maintain an ARP cache whose entries are invalidated after a timeout period (timeouts should be on the order of 15 seconds).
   * Queue all packets waiting for outstanding ARP replies. If a host does not respond to 5 ARP requests, the queued packet is dropped and an ICMP host unreachable message is sent back to the source of the queued packet.
   * Retain packets (for example when waiting for an ARP reply)
   * Enforce guarantees on timeouts--that is, if an ARP request is not responded to within a fixed period of time, the ICMP host unreachable message is generated even if no more packets arrive at the router. You can guarantee this by implementing the sr_arpcache_sweepreqs function in sr_arpcache.c correctly.
