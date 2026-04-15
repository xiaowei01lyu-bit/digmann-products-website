#!/bin/bash

# DIGMANN PRODUCTS 自动化部署脚本
# 启用 GitHub Pages 并部署网站

set -e

echo "========================================"
echo "DIGMANN PRODUCTS 网站自动化部署"
echo "========================================"
echo ""

# 配置
REPO_URL="https://xiaowei01lyu-bit@github.com/xiaowei01lyu-bit/digmann-products-website.git"
BRANCH="main"
PAGES_BRANCH="gh-pages"

echo "📦 步骤 1: 准备仓库配置"
cd /home/lv/.hermes/workspace/DIGMANN_Products

# 配置 git 用户
git config user.email "david@digmannproducts.com"
git config user.name "David Lv"

# 设置远程仓库
git remote set-url origin $REPO_URL

echo "✅ 仓库配置完成"
echo ""

echo "📦 步骤 2: 创建 GitHub Pages 分支"
# 如果分支不存在则创建
git branch --list | grep -q $PAGES_BRANCH || git checkout --orphan $PAGES_BRANCH

echo "✅ GitHub Pages 分支已创建"
echo ""

echo "📦 步骤 3: 添加并推送网站文件"
# 删除旧的 gh-pages 分支内容（如果有）
git rm -rf .
git add .
git commit -m "🚀 Deploy DIGMANN PRODUCTS website"

# 推送到 gh-pages 分支
git push -u origin $PAGES_BRANCH -f

echo "✅ 网站已推送到 GitHub Pages"
echo ""

echo "📦 步骤 4: 配置 GitHub Pages"
echo "⚠️  请在 GitHub 仓库中手动启用 Pages 功能："
echo ""
echo "1. 打开: https://github.com/xiaowei01lyu-bit/digmann-products-website/settings/pages"
echo "2. 点击 'Configure' 按钮"
echo "3. 选择 Branch: gh-pages"
echo "4. 点击 'Save'"
echo ""
echo "启用后，网站将自动部署到："
echo "https://xiaowei01lyu-bit.github.io/digmann-products-website"
echo ""
echo "========================================"
echo "部署完成！🎉"
echo "========================================"
