class V2014::FeedbacksController < V2014::AppController
  
  def create
    create!(:notice => "Thanks for your feedback."){ root_url }
  end

  private
    def permitted_params
      params.permit(:feedback => [:name, :email, :age, :college, :role, :how_long_been_part, :activities, :suggestions, :how_you_contribute])
    end 
end
