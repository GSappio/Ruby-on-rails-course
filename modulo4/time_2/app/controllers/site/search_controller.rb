class Site::SearchController < SiteController
    def questions
       @questions = Question._ search_(params[:page], params[:term])
    end
end 
