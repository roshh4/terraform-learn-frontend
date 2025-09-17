# Static Web App with Terraform and GitHub Actions

This is a simple static web application deployed to Azure Static Web Apps using Terraform and GitHub Actions for CI/CD.

## Prerequisites

- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- [Terraform](https://www.terraform.io/downloads.html)
- [GitHub Account](https://github.com/)
- [Azure Subscription](https://azure.microsoft.com/)

## Setup Instructions

### 1. Clone the repository
```bash
git clone <your-repo-url>
cd <repo-directory>
```

### 2. Login to Azure
```bash
az login
```

### 3. Initialize Terraform
```bash
terraform init
```

### 4. Plan and Apply Terraform
```bash
terraform plan
terraform apply
```

### 5. Set up GitHub Secrets
1. Go to your GitHub repository
2. Navigate to Settings > Secrets > Actions
3. Add a new secret named `AZURE_STATIC_WEB_APPS_API_TOKEN` with the value from the Azure Portal

### 6. Push to GitHub
```bash
git add .
git commit -m "Initial commit"
git push origin main
```

## Project Structure

- `index.html` - Main HTML file for the static website
- `main.tf` - Terraform configuration for Azure resources
- `.github/workflows/azure-static-web-apps.yml` - GitHub Actions workflow for CI/CD

## License

This project is licensed under the MIT License.
