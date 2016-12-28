context "Bold text (no colors)" do
  string = "Some string"

  output = TerminalColors::Apply.(string, bold: true)

  test do
    bold_string = "\e[1mSome string\e[0m"

    assert output == bold_string

    comment "Example: #{bold_string}"
  end
end
