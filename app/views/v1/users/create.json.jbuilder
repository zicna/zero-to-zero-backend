json.data do
    json.user do
        json.call(
            @user,
            :id,
            :email,
            :username
        )
    end
    json.token token
    json.questions questions
    json.languages languages
    json.levels levels
    json.answers answers
    json.takes takes
end 