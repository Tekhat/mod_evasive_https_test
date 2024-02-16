# HTTPS Test Script for mod_evasive

Welcome to the HTTPS Test Script repository! This simple yet powerful Perl script is designed to help you test the effectiveness of the `mod_evasive` module on your Apache server, especially when SSL is enabled. Whether you're a system administrator, a security enthusiast, or just curious about how  `mod_evasive` handles multiple rapid requests, this script is tailored for you.
## Overview

 `mod_evasive` is an Apache module that helps protect your web server from various forms of attacks such as DoS, DDoS, and brute force attacks by dynamically blocking the IP addresses of clients making requests too rapidly. This script,`test_https.pl`, automates the process of sending multiple requests to your server to see how  `mod_evasive` reacts, making it an invaluable tool for testing and hardening your server's security.

## Features

- Easy to use and lightweight
- Configurable to target any server running Apache with  `mod_evasive` and SSL
- Bypasses SSL certificate verification for testing purposes with self-signed certificates

## Prerequisites

Before running this script, ensure you have Perl installed on your system along with the `IO::Socket::SSL` module. This script is designed to work on any Unix-like operating system.
If you don't have installed the `IO::Socket::SSL` yet, you can install it using this command (Debian/Ubuntu based distribution) :

```bash
sudo apt update && sudo apt install -y libssl-dev cpanminus zlib1g-dev gcc
sudo cpanm IO::Socket::SSL
```

## Installation
Clone this repository to your local machine:

```bash
git clone https://github.com/Tekhat/mod_evasive_https_test.git
```

## Utilisation
Navigate to the cloned directory : 

```bash
cd mod_evasive_https_test
```

Run the script with 
```bash
perl test_https.pl
```
By default, the script targets 127.0.0.1:443. To target a different server, modify the PeerAddr parameter within the script.

## Security Considerations

Please use this script responsibly. It is intended for testing purposes only, specifically to evaluate the configuration of mod_evasive on your own servers. Running this script against servers without permission may be considered an attack and is unethical.

## Contributing
Contributions to improve the script or address issues are welcome. Please feel free to fork the repository, make changes, and submit pull requests.

## Disclaimer 
This script is provided "as is", without warranty of any kind. Use it at your own risk.
