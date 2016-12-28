context "Background colors" do
  TerminalColors::Palette.list.each_with_index do |color, index|
    context "Color: #{color}" do
      string = "Some string"

      output = TerminalColors::Apply.(string, bg: color)

      test do
        colored_string = "\e[0;4#{index}mSome string\e[0m"

        assert output == colored_string

        comment "Example: #{colored_string}"
      end
    end
  end
end
