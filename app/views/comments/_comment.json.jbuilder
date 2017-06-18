json.extract! comment, :id, :user, :date, :body, :image, :notice_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
