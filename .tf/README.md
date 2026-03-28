# Terraform DNS configuration

This Terraform module creates a Google Cloud DNS managed zone and CNAME records for:

- `app.studyguideace.com`
- `api.studyguideace.com`

## Usage

```bash
cd terraform
terraform init
terraform apply -var="project_id=YOUR_PROJECT_ID"
```

## Notes

- This configuration creates a new managed zone named `studyguideace-com-zone` by default.
- The DNS records are created as CNAMEs to `ghs.googlehosted.com.`, which is the standard mapping target for Google-managed custom domains.
- If your domain is managed outside Cloud DNS, you can use the created record values in your external DNS provider instead of creating the managed zone.
