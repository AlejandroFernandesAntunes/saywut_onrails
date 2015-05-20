class SayingsController < ApplicationController
  def index
    @saying = Saying.new
  end

  def new
    @saying = Saying.new
  end

  def create
      @saying = Saying.new(saying_params)
      if @saying.save
        redirect_to index
      else
        "Does this unformatted text make you feel miserable enough to understand that this is an error?"
      end
  end

  def slack_me
    debugger
    saying = Saying.order("RANDOM()").first
      @attachments = [
        {
          author_name: saying.who,
          color: 'good',
          title: 'saywut!',
          text: saying.wut
        }
      ]
      Slack::Post.post_with_attachments saying.who,
      @attachments, '#lemon-party-room'
  end

  private

  def saying_params
    params.fetch(:saying, {})
      .permit(:wut, :who)
  end
end
