# TerraformAWS
Create a S3 Bucket:
Start by creating a S3 bucket to store the website files. The bucket name should be globally unique across all AWS accounts.

Configure Bucket for static website hosting:
In the S2 bucket properties, enable static website hosting and specify the detault index document(eg. "index.html") and optional error document(eg. "error.html)

Upload Website Files:
Upload static website files(HTML,CSS,JS,images, etc) to S3bucket. Make sure to set appropriate permissions(e.g., "public-read") for the objects to make them publicly accesible.

Enable Public Access:
Allow public access to S3 bucket and its objects by configuring the bucket policy or Access Control Lists(ACLs)

Configure DNS(Optional):
If you want to use a custom domain for your website (e.g. www.yourdomain.com), you can setup a DNS record using Route S3 or any other DNS provider. This step is optional if you are using the default S3 website endpoint.

Testing the Website:
Once the setup is done. you can test your static website by accessing it through the S3 bucket website URL or you custom domain.