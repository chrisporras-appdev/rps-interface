class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "game/homepage.html.erb"})
  end

  def play_rock
    moves = ["rock", "paper","scissors"]

    @computer_move = moves.sample

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    elsif @computer_move == "scissors"
      @outcome = "won"
    end

    render({ :template => "game/rock.html.erb"})
  end

  def play_scissors
    moves = ["rock", "paper","scissors"]

    @computer_move = moves.sample

    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    elsif @computer_move == "scissors"
      @outcome = "tied"
    end

    render({ :template => "game/scissors.html.erb"})
  end

  def play_paper
    moves = ["rock", "paper","scissors"]

    @computer_move = moves.sample

    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tied"
    elsif @computer_move == "scissors"
      @outcome = "lost"
    end

    render({ :template => "game/paper.html.erb"})
  end
end
