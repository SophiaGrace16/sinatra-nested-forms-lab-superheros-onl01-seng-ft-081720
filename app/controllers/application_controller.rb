require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    #what the heck is this ^
    get "/" do 
        erb :super_hero
    end

    post "/teams" do 
        @team = Team.new(params[:team])

        params[:team][:members].each do |details|
            Member.new(details)
            # binding.pry
        end

        @members = Member.all

        erb :team
    end


end

# This was in the team.erb (og code)
# <h2>Hero Name: <%= @members.first.name %> </h2>
# <p>
# Hero Power: <%= @members.first.power %>
# Hero Biography: <%= @members.first.bio %>
# </p>

# <h2>Hero Name: <%= @members.[1].name %> </h2>
# <p>
# Hero Power: <%= @members.[1].power %>
# Hero Biography: <%= @members.first.bio %>
# </p>


# <h2>Hero Name: <%= @members.last.name %> </h2>
# <p>
# Hero Power: <%= @members.last.power %>
# Hero Biography: <%= @members.last.bio %>
# </p>
