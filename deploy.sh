#!/bin/bash

# 300ETF期权学院 - GitHub Pages 部署脚本

echo "🚀 开始部署到 GitHub Pages..."
echo ""

# 检查是否在 git 仓库中
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
fi

# 创建 .gitignore
cat > .gitignore << EOF
.DS_Store
*.log
node_modules/
.env
EOF

# 添加所有文件
echo "📁 添加文件到 Git..."
git add .

# 提交
echo "💾 提交更改..."
git commit -m "Initial commit: 300ETF期权学院 v2.0"

# 创建 GitHub 仓库（需要用户手动在 GitHub 上创建）
echo ""
echo "=========================================="
echo "📋 请按以下步骤操作："
echo "=========================================="
echo ""
echo "1. 访问 https://github.com/new"
echo "2. 仓库名称填写：300etf-option-academy"
echo "3. 选择 Public（公开）"
echo "4. 点击 Create repository"
echo ""
echo "5. 然后运行以下命令："
echo ""
echo "   git remote add origin https://github.com/你的用户名/300etf-option-academy.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "6. 进入 GitHub 仓库 Settings -> Pages"
echo "7. Source 选择 Deploy from a branch"
echo "8. Branch 选择 main / root"
echo "9. 点击 Save"
echo ""
echo "10. 等待 2-3 分钟，访问："
echo "    https://你的用户名.github.io/300etf-option-academy"
echo ""
echo "=========================================="
echo "✅ 部署指南已生成"
echo "=========================================="
