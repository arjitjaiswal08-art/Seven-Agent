# Seven Agent - 100% Free Deployment Guide

## 🎉 Deploy Seven Agent for FREE!

This guide will help you deploy Seven Agent to the internet **completely free** using Render.com and OpenRouter.

---

## ✅ What You Already Have

- ✅ OpenRouter API key configured
- ✅ Application configured for cloud deployment
- ✅ Ready to deploy!

---

## 🚀 Step-by-Step Deployment (15 minutes)

### **Step 1: Push to GitHub** (5 minutes)

First, we need to upload your code to GitHub (Render will deploy from there).

#### 1.1 Create a GitHub account (if you don't have one)
- Go to https://github.com
- Sign up (it's free!)

#### 1.2 Create a new repository
1. Click the **"+"** icon (top right) → **"New repository"**
2. Name it: `seven-agent`
3. Keep it **Public** (required for free tier)
4. **DON'T** check "Initialize with README"
5. Click **"Create repository"**

#### 1.3 Push your code
Open Terminal and run these commands:

```bash
# Navigate to your project
cd /Users/arjitjaiswal/Downloads/Namma-Agent-main

# Initialize git (if not already done)
git init

# Add all files EXCEPT sensitive ones
git add .

# Remove .env from git (we'll add it in Render dashboard)
git rm --cached .env 2>/dev/null || true
echo ".env" >> .gitignore

# Commit
git commit -m "Initial commit - Seven Agent"

# Connect to your GitHub repo (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/seven-agent.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Note:** Replace `YOUR_USERNAME` with your actual GitHub username!

If it asks for credentials:
- Username: your GitHub username
- Password: use a **Personal Access Token** (not your password)
  - Go to GitHub → Settings → Developer Settings → Personal Access Tokens → Generate new token
  - Select "repo" scope
  - Copy the token and use it as password

---

### **Step 2: Deploy to Render** (5 minutes)

#### 2.1 Create Render account
1. Go to https://render.com
2. Click **"Get Started"**
3. Sign up with **GitHub** (easiest option)
4. Authorize Render to access your GitHub

#### 2.2 Create a new Web Service
1. Click **"New +"** → **"Web Service"**
2. Connect your `seven-agent` repository
3. Click **"Connect"**

#### 2.3 Configure the service
Fill in these settings:

- **Name:** `seven-agent` (or any name you like)
- **Region:** Choose the closest to you
- **Branch:** `main`
- **Root Directory:** (leave empty)
- **Runtime:** `Python 3`
- **Build Command:**
  ```bash
  pip install -r namma_agent/requirements.txt && cd namma_agent/webui && npm install && npm run build
  ```
- **Start Command:**
  ```bash
  python -m namma_agent --server --host 0.0.0.0 --port $PORT
  ```
- **Instance Type:** `Free`

#### 2.4 Add Environment Variables
Scroll down to **"Environment Variables"** and add:

1. Click **"Add Environment Variable"**
2. Add these:

| Key | Value |
|-----|-------|
| `OPENAI_API_KEY` | `YOUR_OPENROUTER_API_KEY_HERE` |
| `OPENAI_BASE_URL` | `https://openrouter.ai/api/v1` |
| `PYTHON_VERSION` | `3.11.0` |

#### 2.5 Deploy!
1. Click **"Create Web Service"**
2. Wait 5-10 minutes for the build to complete
3. You'll see logs scrolling

---

### **Step 3: Access Your Deployed App** (1 minute)

Once deployment is complete:

1. Render will show you a URL like: `https://seven-agent-xxxx.onrender.com`
2. Click on it or copy it to your browser
3. **Your Seven Agent is now live!** 🎉

---

## 🎯 Quick Test

1. Go to your Render URL
2. You should see the Seven Agent interface
3. Try asking: "Hello, what's your name?"
4. It should respond using the OpenRouter API!

---

## 📊 Free Tier Limitations

### Render Free Tier:
- ✅ 750 hours/month (always on if you have multiple services)
- ⚠️ Spins down after 15 minutes of inactivity
- ⚠️ First request after spin-down takes ~30 seconds
- ✅ Automatic HTTPS included
- ✅ No credit card required

### OpenRouter Free Tier:
- ✅ Multiple free models available
- ⚠️ Rate limits apply (usually enough for personal use)
- ✅ No credit card required

---

## 🔧 Managing Your Deployment

### View Logs:
- Go to your Render dashboard
- Click on your service
- Click **"Logs"** tab

### Update Your App:
1. Make changes locally
2. Commit and push to GitHub:
   ```bash
   git add .
   git commit -m "Update"
   git push
   ```
3. Render auto-deploys!

### Change Environment Variables:
- Render Dashboard → Your Service → "Environment" tab
- Update values → Save Changes
- Service will restart automatically

---

## 🐛 Troubleshooting

### Build Failed:
- Check logs in Render dashboard
- Most common issue: Missing dependencies
- Solution: Make sure all files are pushed to GitHub

### App Not Responding:
- Free tier spins down after 15 minutes
- First request takes ~30 seconds to wake up
- This is normal for free tier

### API Errors:
- Check if OpenRouter key is correct in Environment Variables
- Check OpenRouter dashboard for rate limits

### "Application Failed to Start":
- Check the Start Command is correct
- Verify PORT environment variable is used
- Check logs for Python errors

---

## 💡 Pro Tips

### Keep It Awake (Optional):
Use a free uptime monitor to ping your app every 10 minutes:
1. Sign up at https://uptimerobot.com (free)
2. Add your Render URL as a monitor
3. Set interval to 10 minutes
4. Your app won't sleep!

### Custom Domain (Optional):
Render free tier supports custom domains:
1. Buy a domain (or use a free one from Freenom)
2. Render Dashboard → Settings → Custom Domain
3. Add your domain and update DNS

### Monitor Usage:
- OpenRouter Dashboard: Check your API usage
- Render Dashboard: Check your service metrics

---

## 🎉 You Did It!

Your Seven Agent is now:
- ✅ Deployed to the internet
- ✅ Accessible from anywhere
- ✅ Running 24/7 (with free tier limitations)
- ✅ Completely FREE!

Share your URL with friends and enjoy your AI assistant!

---

## 📞 Need Help?

If you get stuck:
1. Check the Render logs
2. Verify environment variables are set correctly
3. Make sure your OpenRouter API key is valid
4. Check that all files are pushed to GitHub

---

## 🔄 Alternative Free Options

If Render doesn't work for you, try these:

### Railway (Free Tier):
```bash
npm install -g @railway/cli
railway login
railway init
railway up
```

### Vercel (Frontend + Serverless):
- Good for frontend hosting
- Limited backend support

### Fly.io (Free Tier):
- 3 VMs free
- Good alternative to Render

---

## 🎊 What's Next?

Now that your app is deployed:
1. Test all features
2. Share with friends
3. Explore the Learning Room
4. Set up Telegram bot (optional)
5. Customize your agent

Enjoy your free Seven Agent deployment! 🚀
