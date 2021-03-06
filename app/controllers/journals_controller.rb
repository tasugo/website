class JournalsController < ToolsController
  # See tools_controller.rb for inherited behavior
  def index
    @journals = Journal.includes(:issues)
    render "#{Current.theme}/journals/index"
  end

  def show
    @journal = Journal.find_by(slug: params[:id])
    render "#{Current.theme}/journals/show"
  end
end
