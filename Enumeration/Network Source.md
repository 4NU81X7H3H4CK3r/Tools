# Network Source

## Quick Host Discovery using ARP Protcol

Using **NetDiscover** to perform **ARP Protocol**
```

sudo netdiscover -i <interface> -r <targetSubnet>
```
Using **ARP-SCAN** to perform **ARP scan**

```

sudo arp-scan -I <interface> <targetSubnet>
```

## Fingerprint Routes & Gateways
**Windows box:** 
```

ipconfig /all
ipconfig /displaydns
netstat -ano
```
**Linux box:**
```

traceroute <targetIP> -m 5
```
**Checking the routing table:**
```
route
```
**Indetify routes I currently have access to:**
```

ip route show dev <interface>
```
