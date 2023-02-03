class Site::AnswerController < SiteController
    def question
       @answer = Answer.find(params[:answer_id])
       USerStatistic.set_user_statistc(@answer, current_user)
    end
end
