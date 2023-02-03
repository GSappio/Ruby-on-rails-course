class Site::AnswerController < SiteController
    def question
       @answer = Answer.find(params[:answer_id])
       set_user_statistc(@answer)
    end

    private
    
    def set_user_statistc(answer)
        if user_signed_in?
            user_statistic = USerStatistic.find_or_create_by(user: current_user)
            answer.correct? user_statistic.right_questions += 1 :  user_statistic.wrong_questions += 1
            user_statistic.save
       end
    end
end
