# DNS Info

__DNSRecon Pulldown__
```
git clone https://github.com/darkoperator/dnsrecon.git
cd dnsrecon
pip install -r requirements.txt
```

__DNSrecon Commands__
- Reverse DNS lookup on the target host `dnsrecon -r <Target IP range>`
- Subdomain brute-force of a domain `dnscan.py -d target.com -o outfile -w $wordlist`
