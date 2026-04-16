#!/bin/bash

echo "🚀 部署 DIGMANN PRODUCTS 网站到 Netlify..."
echo ""

cd /home/lv/.hermes/workspace/DIGMANN_ProductS

# 创建 netlify.toml
cat > netlify.toml << 'EOF'
[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200
EOF

echo "✅ 网站已配置好，准备部署..."
echo ""
echo "请运行以下命令登录 Netlify 并部署："
echo ""
echo "  netlify login"
echo "  netlify init"
echo "  netlify deploy --prod"
echo ""
echo "或者，您也可以直接访问："
echo "  https://app.netlify.com/drop"
echo ""
echo "将文件夹拖拽上传，5 秒完成！"
