class ParseController < ApplicationController
  def index
    @parse = "hello world"
  end

  def show
    @catch_parse = parse_params
  end

  def parse_params
    params.require(:parse).permit(:description)
  end
end
