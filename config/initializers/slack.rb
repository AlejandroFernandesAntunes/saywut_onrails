require 'slack/post'
Slack::Post.configure(
  webhook_url: ENV['SLACK_WEBHOOK_URL'],
  subdomain: ENV['SLACK_DOMAIN'],
  token: ENV['SLACK_TOKENS'],
  username: ENV['SLACK_USER_NAME']
)
