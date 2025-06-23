## 📄 setup-guide.md

### DevOps Setup: Trigger GitHub Actions and Push to Docker Hub

---

### ✅ 1. **Triggering GitHub Actions Workflow**

The workflow runs **automatically** when you:

* Push code to the `main` branch
* Modify the `.github/workflows/maven-docker.yml` file
* Click **"Re-run job"** from the **Actions tab** (if job exists)

**To trigger manually:**

```
git commit --allow-empty -m "Trigger CI workflow"
git push origin main
```

---

### 🔐 2. **Set GitHub Secrets (Required for Docker Push)**

Go to:

> `GitHub Repository → Settings → Secrets and Variables → Actions → New repository secret`

Add the following two secrets:

| Secret Name       | Value                                                        |
| ----------------- | ------------------------------------------------------------ |
| `DOCKER_USERNAME` | Your Docker Hub username                                     |
| `DOCKER_PASSWORD` | Your Docker Hub password (or access token if 2FA is enabled) |

---

### 🐳 3. **Create Docker Hub Account (If Not Yet Created)**

1. Go to: [https://hub.docker.com/](https://hub.docker.com/)
2. Click **Sign Up**
3. Provide:

   * Docker Hub **username** (public part of image name)
   * Email address
   * Password
4. Verify your email

You can now push Docker images using:

```
docker push <DOCKER_USERNAME>/<image-name>:tag
```

