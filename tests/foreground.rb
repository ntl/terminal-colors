context "Foreground colors" do
  TerminalColors::Palette.list.each_with_index do |color, index|
    context "Color: #{color}" do
      string = "Some string"

      output = TerminalColors::Apply.(string, fg: color)

      test do
        colored_string = "\e[0;3#{index}mSome string\e[0m"

        assert output == colored_string

        comment "Example: #{colored_string}"
      end
    end
  end

  context "Bold" do
    TerminalColors::Palette.list.each_with_index do |color, index|
      context "Color: #{color}" do
        string = "Some string"

        output = TerminalColors::Apply.(string, fg: color, bold: true)

        test do
          colored_string = "\e[1;3#{index}mSome string\e[0m"

          assert output == colored_string

          comment "Example: #{colored_string}"
        end
      end
    end
  end
end
