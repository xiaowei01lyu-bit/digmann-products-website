# 产品图片目录

## 📁 目录结构

```
images/
├── products/        # 产品图片
│   ├── magnets/     # 磁铁产品
│   ├── plastic/     # 塑料零件
│   ├── auto/        # 汽车零部件
│   └── fasteners/   # 紧固件
├── about/           # 关于我们图片
├── quality/         # 质量保证图片
└── production/      # 生产工艺图片
```

## 📤 上传图片

### 方法 1：网页上传（推荐）

1. 访问 GitHub 仓库：https://github.com/xiaowei01lyu-bit/digmann-products-website
2. 点击 **"Add file"** → **"Create new file"**
3. 选择或创建对应的文件夹
4. 上传图片
5. 提交更改

### 方法 2：命令行上传

```bash
# 进入项目目录
cd /home/lv/.hermes/workspace/DIGMANN_Products

# 复制图片到对应目录
cp /path/to/magnet.jpg images/products/magnets/
cp /path/to/plastic.jpg images/products/plastic/

# 添加到 Git
git add images/

# 提交
git commit -m "更新产品图片"

# 推送
git push origin main
```

## 📏 图片规范

### 尺寸建议

| 类型 | 宽度 | 高度 | 文件大小 |
|------|------|------|----------|
| 产品主图 | 800-1200px | 自适应 | < 500KB |
| 缩略图 | 300-500px | 自适应 | < 100KB |
| Banner 图 | 1200-1920px | 自适应 | < 1MB |

### 格式建议

- **产品照片：** JPG
- **透明背景：** PNG
- **图标：** SVG
- **现代浏览器：** WebP

### 命名规范

```
✓ magnets-neodymium-01.jpg
✓ plastic-injection-molding.jpg
✓ auto-parts-dashboard.jpg
✗ Magnet.jpg
✗ 磁铁 01.jpg
```

## 🔧 更新网站链接

### 方法 1：修改 index.html

```html
<!-- 旧链接 -->
<img src="https://www.digmannproducts.com/images/magnets.jpg">

<!-- 新链接 -->
<img src="images/products/magnets/neodymium-01.jpg">
```

### 方法 2：使用相对路径

```html
<!-- 推荐：相对路径 -->
<img src="products/magnets/neodymium-01.jpg">
```

## 🚀 快速更新流程

1. **准备图片**
   - 压缩到 < 500KB
   - 命名规范
   - 放到 images/ 对应目录

2. **上传到 GitHub**
   - GitHub 网页或命令行

3. **更新 index.html**
   - 修改图片链接

4. **提交并推送**
   ```bash
   git add images/ index.html
   git commit -m "更新产品图片"
   git push origin main
   ```

5. **等待部署**
   - 时间：5-15 分钟
   - 访问：https://digmannproducts.com

## 📊 本地测试

```bash
# 本地预览网站
python -m http.server 8000

# 访问
http://localhost:8000/
```

## 📞 需要帮助？

如需批量上传或图片压缩，请告诉我！
