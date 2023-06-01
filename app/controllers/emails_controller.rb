class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::TvShows::BrooklynNineNine.character, body: Faker::TvShows::BrooklynNineNine.quote)
    redirect_to emails_path
  end

  

  # def NomDeMethode
  #   #code de la méthode
    
  #   respond_to do |format|
  #     format.html do 
  #       #code en cas de requête classique 
  #     end
    
  #     format.html.erb do
  
  #     end
  #   end
  # def create
  #   email = Email.new
  #   email.body = params[:body]
  #   email.object = params[:object]
    
  #   if email.save
  #     redirect_to emails_path
  #   else
  #     # Gérer le cas où la sauvegarde a échoué
  #   end
  # end
end


