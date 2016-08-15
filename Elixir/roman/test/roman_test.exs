defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

  test "given integer correctly translates to roman numerals" do
    expected_translations = %{
      "I"         => 1,
      "III"       => 3,
      "IV"        => 4,
      "V"         => 5,
      "VI"        => 6,
      "VIII"      => 8,
      "IX"        => 9,
      "X"         => 10,
      "XIII"      => 13,
      "XIV"       => 14,
      "XV"        => 15,
      "XVI"       => 16,
      "XVIII"     => 18,
      "XIX"       => 19,
      "XX"        => 20,
      "XXI"       => 21,
      "XL"        => 40,
      "XLI"       => 41,
      "L"         => 50,
      "XC"        => 90,
      "C"         => 100,
      "DCCVII"    => 707,
      "MCMLXXVII" => 1977,
    }

    Enum.each(expected_translations, fn ({roman, input}) ->
      assert Roman.to_roman(input) == roman
    end)
  end
end