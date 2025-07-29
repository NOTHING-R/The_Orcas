#!/bin/bash

# Stop on any error
set -e

echo "🔧 Building the site with Zola..."
zola build --force --output-dir docs

echo "📦 Adding files to Git..."
git add .

echo "📝 Committing changes..."
git commit -m "Updated site"

echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Deployment complete!"
