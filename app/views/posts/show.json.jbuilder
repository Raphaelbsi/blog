json.content format_content(@post.content)
json.(@post, :created_at, :updated_at)