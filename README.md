
# DevOps Gurus Website – Netlify + Terraform + HCP Remote State

This project deploys the **DevOps Gurus website** to **Netlify** using **Terraform**, 
with **remote state managed by HCP Terraform (Terraform Cloud)**.

---

## ✅ Features
- Netlify for static site hosting
- HCP Terraform for remote state
- Unique site naming via random suffix
- Secrets kept out of repo (NETLIFY_TOKEN as env var)
- Clear README and .gitignore

---

## 🧩 Prerequisites
- Terraform v1.6+
- Netlify account + Personal Access Token (PAT)
- HCP Terraform organization + workspace

---

## 🔐 Secrets
Set `NETLIFY_TOKEN` as an environment variable or HCP Terraform sensitive env var.

```bash
export NETLIFY_TOKEN="your-netlify-pat"
```

---

## 🚀 Deploy
```bash
terraform init
terraform plan
terraform apply -auto-approve
terraform output site_url
```

---

## 📂 Project Structure
```
.
├─ main.tf
├─ variables.tf
├─ outputs.tf
├─ versions.tf
├─ .gitignore
├─ site/
│  ├─ index.html
│  ├─ our-services.html
│  └─ (add styles.css, icons/ etc.)
└─ README.md
```

---

## 🖥️ Outputs
- `site_name`: Netlify site name
- `site_url`: Live site URL (Netlify subdomain)
