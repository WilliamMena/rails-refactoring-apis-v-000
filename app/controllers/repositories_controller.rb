class RepositoriesController < ApplicationController
  def index
    call = GithubService.new({"access_token" => session[:token]})
    @repos_array = call.get_repos

  end

  def create
    call = GithubService.new({"access_token" => session[:token]})
    call.create_repo(params[:name])
    redirect_to '/'
  end
end
