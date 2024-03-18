# NGINX

## Make Self Signed Certificate

To self-sign an SSL certificate means to generate a certificate and sign it with its own private key instead of having it signed by a certificate authority (CA). This is commonly done for development and testing purposes or for internal systems where the certificate does not need to be trusted by external parties. Here's a step-by-step guide on how to self-sign an SSL certificate:

1. **Generate a Private Key**: You need to generate a private key. This key will be used to sign the certificate. You can generate a private key using the OpenSSL command-line tool:
```bash
openssl genrsa -out privatekey.key 2048
```
This command will generate a 2048-bit RSA private key and save it to a file named privatekey.key.

2. **Create a Certificate Signing Request (CSR)**: Next, you need to create a CSR, which contains information about the entity (e.g., organization name, domain name) requesting the certificate. This step is skipped when self-signing, but some tools may require it. You can create a CSR using the following command:
```bash
openssl req -new -key privatekey.key -out csr.pem
```
Follow the prompts to enter the relevant information.

3. **Generate the SSL Certificate**: Now, you can generate the SSL certificate using the private key you generated earlier. The certificate is signed with the private key itself, hence "self-signing". Run the following command:
```bash
openssl req -x509 -sha256 -days 365 -key privatekey.key -out certificate.crt
```
This command generates a self-signed certificate (certificate.crt) that is valid for 365 days (-days 365) and signed with the private key (-key privatekey.key). Adjust the number of days as needed.

4. **Use the Certificate**: You can now use the generated SSL certificate (certificate.crt) and private key (privatekey.key) in your application or web server. Make sure to configure your server to use these files for SSL/TLS connections.

Remember that self-signed certificates are not trusted by default by web browsers or other client applications, so users will typically see a warning when accessing a site secured with a self-signed certificate. However, for internal use or testing purposes, self-signed certificates can be very useful. If you require a certificate that is trusted by external parties, you will need to obtain a certificate from a trusted CA.

5. **Remove Key Password**:

```bash
openssl rsa -in private.key -out private.key
``` 

## Create certificate when building docker image

*Dockerfile*
```bash
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=login"
```