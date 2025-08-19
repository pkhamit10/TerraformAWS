# Hosting a Static Website on Amazon S3

## 1. Create an S3 Bucket

Start by creating an S3 bucket to store the website files. The bucket name must be **globally unique** across all AWS accounts.

---

## 2. Configure Bucket for Static Website Hosting

In the S3 bucket properties:

- Enable **static website hosting**.
- Specify the default index document (e.g., `index.html`).
- Optionally, specify an error document (e.g., `error.html`).

---

## 3. Upload Website Files

Upload your static website files (HTML, CSS, JS, images, etc.) to the S3 bucket.

- Make sure to set appropriate permissions (e.g., `"public-read"`) for the objects.
- This ensures the files are publicly accessible.

---

## 4. Enable Public Access

Allow public access to the S3 bucket and its objects by configuring:

- The **Bucket Policy**, or
- **Access Control Lists (ACLs)**

---

## 5. Configure DNS (Optional)

If you want to use a **custom domain** for your website (e.g., `www.yourdomain.com`):

- Set up a **DNS record** using **Amazon Route 53** or another DNS provider.
- This step is optional if you are using the default S3 website endpoint.

---

## 6. Testing the Website

Once setup is complete:

- Test your static website by accessing it via the **S3 website endpoint URL** or your **custom domain**.
