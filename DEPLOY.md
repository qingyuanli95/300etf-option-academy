# 300ETF期权学院 - 部署指南

## 📦 项目信息

- **项目名称**: 300ETF期权实战学院
- **版本**: v2.0 商业版
- **大小**: 4.8MB
- **文件数**: 18个HTML页面 + 2个CSS文件

## 🚀 快速部署（推荐 Netlify Drop）

### 最简单方式（1分钟完成）

1. **打开 Netlify Drop**
   - 访问 https://app.netlify.com/drop

2. **拖拽部署**
   - 打开文件夹 `~/Desktop/option-master`
   - 将整个文件夹**拖拽**到 Netlify 网页上
   - 等待 10 秒自动部署

3. **获得网址**
   - 例如：`https://mystifying-goodall-123456.netlify.app`
   - 可以绑定自己的域名

✅ **优点**: 无需注册、无需配置、自动 HTTPS、国内访问快

---

## 🚀 GitHub Pages 部署（推荐长期维护）

### 步骤 1: 创建 GitHub 仓库

1. 访问 https://github.com/new
2. 填写信息：
   - Repository name: `300etf-option-academy`
   - Description: 300ETF期权实战学院 - 零基础学期权
   - 选择 **Public**
3. 点击 **Create repository**

### 步骤 2: 推送代码

```bash
cd ~/Desktop/option-master
git init
git add .
git commit -m "Initial commit: 300ETF期权学院 v2.0"
git remote add origin https://github.com/你的用户名/300etf-option-academy.git
git branch -M main
git push -u origin main
```

### 步骤 3: 开启 GitHub Pages

1. 进入仓库页面
2. 点击 **Settings** → **Pages**（左侧菜单）
3. **Source** 选择 `Deploy from a branch`
4. **Branch** 选择 `main` / `(root)`
5. 点击 **Save**

### 步骤 4: 访问网站

等待 2-3 分钟后访问：
```
https://你的用户名.github.io/300etf-option-academy
```

---

## 🚀 Vercel 部署（国内访问最快）

1. 访问 https://vercel.com/signup
2. 使用 GitHub 账号登录
3. 点击 **New Project**
4. 导入 `300etf-option-academy` 仓库
5. 点击 **Deploy**

---

## 🚀 腾讯云 COS 部署（国内备案域名）

如需绑定国内域名，使用腾讯云 COS + CDN：

1. 登录 https://console.cloud.tencent.com/cos
2. 创建存储桶，开启**静态网站**
3. 上传所有文件
4. 配置 CDN 加速

---

## ✅ 部署检查清单

部署完成后检查：

- [ ] 首页正常显示
- [ ] 课程页面可访问
- [ ] 模拟交易能运行
- [ ] 手机端显示正常
- [ ] 所有链接可点击

---

## 📱 访问测试

部署后请测试以下页面：

```
首页: /
第一课: /lessons/lesson1.html
模拟交易: /games/trading-simulator.html
考试专区: /lessons/exam-zone.html
```

---

## 🔧 更新网站

如需更新内容：

1. 修改本地文件
2. 重新推送：
```bash
git add .
git commit -m "更新内容"
git push
```
3. 自动重新部署

---

**推荐选择**: Netlify Drop（最简单）或 GitHub Pages（最稳定）

---
*部署指南版本: 2026-02-28*
