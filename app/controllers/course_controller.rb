class CourseController < Sinatra::Base
    configure do
        set :views, "app/views/courses"
    
    end

    get "/courses" do
        @courses= Course.all
        erb :index
    end

    get "/courses/:id" do
        @course = Course.find(params[:id])
        erb :show
    end
end