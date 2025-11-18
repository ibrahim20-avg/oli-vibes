#!/bin/bash

echo "🚀 Starting full Oli Vibes setup..."

# === BASIC FILES ===
cat > README.md << EOF
# Oli Vibes — AI Music Website

Welcome to the official website for **Oli Vibes**, a futuristic AI-powered music artist.

Features:
- Clean responsive interface
- Song streaming & downloads
- Auto-updating metadata
- Custom brand logo
EOF

cat > LICENSE << EOF
MIT License

Copyright (c) $(date +%Y) Oli Vibes

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software...
EOF

cat > COPYRIGHT << EOF
Copyright © $(date +%Y) Oli Vibes
All rights reserved.
EOF

# === LOGO FILES ===
cat > logo.svg << EOF
<svg width="300" height="80" xmlns="http://www.w3.org/2000/svg">
  <rect width="300" height="80" fill="#5a00ff"/>
  <text x="50%" y="50%" fill="gold" font-size="36" font-weight="bold" text-anchor="middle" dominant-baseline="middle">
    OLI VIBES
  </text>
</svg>
EOF

cat > favicon.svg << EOF
<svg width="32" height="32" xmlns="http://www.w3.org/2000/svg">
  <circle cx="16" cy="16" r="16" fill="#5a00ff"/>
  <text x="50%" y="50%" fill="gold" font-size="18" text-anchor="middle" dominant-baseline="middle">OV</text>
</svg>
EOF

# === META FOLDER ===
mkdir -p meta

cat > meta/ABOUT.md << EOF
# About Oli Vibes
Oli Vibes is an AI-powered futuristic artist blending digital creativity with modern sound.
EOF

cat > meta/SOCIALS.md << EOF
# Social Links
Instagram:
Twitter:
YouTube:
TikTok:
EOF

# === SYSTEM FILES ===
echo "*.tmp" > .gitignore
echo "*.log" >> .gitignore
echo "node_modules/" >> .gitignore

date > last_update.txt

# === GIT SETUP ===
git init
git add .
git commit -m "Full initial setup for Oli Vibes"

echo ""
echo "🌍 Enter your GitHub repo URL (example: https://github.com/username/repo.git)"
read repo

git branch -M main
git remote add origin "$repo"

echo "Pushing to GitHub..."
git push -u origin main

echo "🎉 All done! Oli Vibes project created & uploaded!"
