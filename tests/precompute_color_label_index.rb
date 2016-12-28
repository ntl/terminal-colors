context "Precomputing color label index" do
  label = 'blue'

  index = TerminalColors::Palette.fetch label

  string = "Some string"

  test "Supplying index as foreground color" do
    output = TerminalColors::Apply.(string, fg: index)

    assert output == "\e[0;34mSome string\e[0m"
  end

  test "Supplying index as background color" do
    output = TerminalColors::Apply.(string, bg: index)

    assert output == "\e[0;44mSome string\e[0m"
  end
end
