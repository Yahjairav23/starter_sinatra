class StudentController < Sinatra::Base
    configure do
        set :views, "app/views/students"
    end

    get "/students" do
        @students = Student.all
        erb :index
    end

    get "/students/:id" do
        @student = Student.find(params[:id])
        erb :show
    end
end