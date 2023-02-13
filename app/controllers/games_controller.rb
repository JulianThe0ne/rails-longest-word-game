class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10).join(' ').upcase
  end

  def score
    @letters = params[:letters].split
    @guess = params[:score]
    @included = @guess.chars.all? do |letter|
      @letters.include?(letter)
    end
  end
end
