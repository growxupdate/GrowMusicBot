# GrowMusicBot 🎵

A Telegram Music Bot project template.

> ⚠️ This repository is only for **Heroku setup & buildpack configuration**.  
> It does NOT deploy a working bot directly.

---

## 🚀 Deploy to Heroku (Dummy)

Click the button below to create a **dummy app on Heroku**:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/Growxupdate/GrowMusicBot)

---

## 📌 Important Note

This deploy button is **only for initial setup**:
- Create a Heroku app
- Add required **Buildpacks**
- Configure environment variables

After that, you must:
1. Open **Heroku Dashboard**
2. Go to **Deploy → GitHub**
3. Connect your **own repository**
4. Deploy your actual music bot code

---

## 🔧 Required Buildpacks

Add these buildpacks **in order**:

1. `heroku/python`
2. `https://github.com/jonathanong/heroku-buildpack-ffmpeg-latest`
3. `https://github.com/heroku/heroku-buildpack-opus.git`

---

## ✅ Done

Once buildpacks are added and your GitHub repo is connected,  
deploy your app normally from Heroku.

---

### 💡 Tip
If deployment fails, recheck:
- Buildpack order
- Python version
- Environment variables
