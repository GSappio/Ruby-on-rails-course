class Site::AnswerController < SiteController
    def question
        puts ">>>>>>>>>>>>#{params[:answers]}"
    end
end
