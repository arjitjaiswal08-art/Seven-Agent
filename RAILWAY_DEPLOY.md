# 🚄 Deploy to Railway (Fastest Free Option!)

Railway is **much faster** than Render and super easy to use.

---

## ⚡ **Quick Deploy (5 minutes)**

### **Step 1: Sign Up**
1. Go to **https://railway.app**
2. Click **"Login"**
3. Sign in with **GitHub** (one click!)

### **Step 2: Deploy from GitHub**
1. Click **"New Project"**
2. Select **"Deploy from GitHub repo"**
3. Find and select **"Seven-Agent"**
4. Click **"Deploy Now"**

### **Step 3: Add Environment Variables**
1. After deployment starts, click on your service
2. Go to **"Variables"** tab
3. Click **"New Variable"** and add these **4 variables**:

```
OPENAI_API_KEY = YOUR_OPENROUTER_KEY_HERE
OPENAI_BASE_URL = https://openrouter.ai/api/v1
HOST = 0.0.0.0
PYTHON_VERSION = 3.11.0
```

4. Railway will automatically redeploy with these variables

### **Step 4: Get Your URL**
1. Go to **"Settings"** tab
2. Scroll to **"Networking"**
3. Click **"Generate Domain"**
4. Copy your URL (e.g., `seven-agent.up.railway.app`)
5. Open it in your browser!

---

## ✅ **Done!**

Your Seven Agent should be live in **5-7 minutes** (much faster than Render!)

---

## 🆓 **Railway Free Tier**

- ✅ $5 of free credits per month
- ✅ No credit card required initially
- ✅ Fast builds and deployments
- ✅ Automatic HTTPS
- ✅ Better performance than Render free tier

---

## 📊 **Monitor Your Deployment**

1. Click on your service in Railway dashboard
2. Go to **"Deployments"** tab
3. Watch the logs
4. Wait for "Build successful" and "Started"

---

## 🎯 **What to Expect**

- **Build time:** 5-7 minutes (first time)
- **Cold start:** Instant (no spin down like Render)
- **Performance:** Much faster than Render free tier

---

## 🆘 **Troubleshooting**

**Deployment failed?**
- Check the logs in Railway dashboard
- Make sure all 4 environment variables are set
- Click "Redeploy" if needed

**Can't access the URL?**
- Make sure domain is generated
- Wait 1-2 minutes after deployment completes
- Check if service shows "Active"

---

## 💡 **Alternative: Deploy via CLI (Even Faster!)**

If you want even more control:

```bash
# Install Railway CLI
npm install -g @railway/cli

# Login
railway login

# Link to your project (after creating it on the web)
railway link

# Add environment variables
railway variables set OPENAI_API_KEY=YOUR_KEY_HERE
railway variables set OPENAI_BASE_URL=https://openrouter.ai/api/v1
railway variables set HOST=0.0.0.0

# Deploy!
railway up
```

---

## 🎉 **Why Railway is Better**

| Feature | Railway | Render Free |
|---------|---------|-------------|
| Build Speed | ⚡ 5-7 min | 🐌 10-15 min |
| Cold Start | ✅ None | ❌ 30 seconds |
| Uptime | ✅ Always on | ⚠️ Spins down |
| Setup | ✅ Super easy | ⚠️ More config |

---

## 🚀 **Ready to Deploy?**

Go to **https://railway.app** and follow the steps above!

Your Seven Agent will be live in **5-7 minutes**! 🎊
