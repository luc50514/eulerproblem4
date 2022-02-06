defmodule Eulerproblem4 do
  @moduledoc """
  Documentation for `Eulerproblem4`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Eulerproblem4.hello()
      :world

  """
  def hello do
    :world
  end
  def productOfIntegersIsPaladrom(a, b) do
    String.reverse(Integer.to_string(a*b)) == Integer.to_string(a*b)
  end

  def getTheLargestpossiblePaladromFromRange(a,b) do
    if(Enum.any?(Enum.uniq(getArrayOfPossibleValues(a,b)), fn(s) -> s != [] end)) do
     [head | _tail] = Enum.uniq(Enum.sort(Enum.filter(Enum.uniq(getArrayOfPossibleValues(a,b)), fn(s) -> s != [] end ), :desc))
     [answer | _head] = Enum.sort(head, :desc)
     answer
    end
  end

  def getArrayOfPossibleValues(a,b) do
    for firstNumber <- a..b  do
      for secondNumber <- a..b , productOfIntegersIsPaladrom(firstNumber, secondNumber) do
          firstNumber*secondNumber
      end
    end
  end

end
