defmodule ElixirExperience.ProblemTest do
  use ExUnit.Case, async: true

  test "problem struct" do
    problem = %ElixirExperience.Problem{number: 5, question: "some question", answer: "some answer"}
    assert problem.number == 5
    assert problem.question == "some question"
    assert problem.answer == "some answer"
  end

  test "load_all" do
    problems = ElixirExperience.Problem.load_all
    assert Enum.count(problems) > 2

    first_problem = Enum.at(problems, 0)
    assert first_problem.number == 1
    assert String.contains?(first_problem.question, "prints the number 42") == true
    assert first_problem.answer == "42"
  end
end