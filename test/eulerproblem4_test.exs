defmodule Eulerproblem4Test do
  use ExUnit.Case
  doctest Eulerproblem4

  test "greets the world" do
    assert Eulerproblem4.hello() == :world
  end
  test "Number should be a Paladrom when when 1 and 11 are given" do
    assert Eulerproblem4.productOfIntegersIsPaladrom(11,1) == true
  end
  test "Number should be a Paladrom when when 1 and 22 are given" do
    assert Eulerproblem4.productOfIntegersIsPaladrom(22,1) == true
  end
  test "Number should be a Paladrom when when 91 and 99 are given" do
    assert Eulerproblem4.productOfIntegersIsPaladrom(91,99) == true
  end
  test "Number should be a Paladrom when when 92 and 99 are given" do
    assert Eulerproblem4.productOfIntegersIsPaladrom(92,99) == false
  end
  test "Number should be a Paladrom when when 900 and 901 are given" do
    assert Eulerproblem4.productOfIntegersIsPaladrom(900,901) == false
  end
  test "Range Of numbers should return largest Paladrom when 90 to  99 " do
    assert Eulerproblem4.getTheLargestpossiblePaladromFromRange(90,99) == 9009
  end
  test "Range Of numbers should return largest Paladrom when 100 to  999 " do
    assert Eulerproblem4.getTheLargestpossiblePaladromFromRange(100,999) == 906609
  end
end
