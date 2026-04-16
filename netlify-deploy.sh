#!/bin/bash

# 使用 Netlify 部署 DIGMANN PRODUCTS 网站
# 完全免费，自动 HTTPS，自动从 GitHub 部署

echo "🚀 开始 Netlify 部署..."
echo ""

# 1. 准备部署
cd /home/lv/.hermes/workspace/DIGMANN_ProductS

# 2. 创建 netlify.toml 配置文件
cat > netlify.toml << 'EOF'
[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200

[build]
  command = "echo 'Deploying DIGMANN PRODUCTS...'"
  publish = "."

[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options = "DENY"
    X-Content-Type-Options = "nosniff"
    Referrer-Policy = "strict-origin-when-cross-origin"
EOF

echo "✅ Netlify 配置已创建"
echo ""

# 3. 显示部署说明
echo "========================================"
echo "Netlify 部署说明"
echo "========================================"
echo ""
echo "方式 1：使用 Netlify CLI（推荐）"
echo ""
echo "1. 安装 Netlify CLI:"
echo "   npm install -g netlify-cli"
echo ""
echo "2. 登录 Netlify:"
echo "   netlify login"
echo ""
echo "3. 部署网站:"
echo "   netlify deploy --prod --dir=/home/lv/.hermes/workspace/DIGMANN_ProductS"
echo ""
echo "部署后会自动连接到您的 GitHub 仓库，实现自动部署！"
echo ""
echo "========================================"
echo ""
echo "方式 2：直接上传到 Netlify"
echo ""
echo "访问：https://app.netlify.com/drop"
echo ""
echo "将 /home/lv/.hermes/workspace/DIGMANN_ProductS 文件夹拖拽上传"
echo ""
echo "========================================"
echo ""
