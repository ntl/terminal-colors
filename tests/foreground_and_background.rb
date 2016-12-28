context "Foreground and background colors" do
  [false, true].each do |bold|
    bold_octet = bold ? '1' : '0'

    TerminalColors::Palette.list.each_with_index do |bg_color, bg_index|
      TerminalColors::Palette.list.each_with_index do |fg_color, fg_index|
        context "Color: #{'Bold ' if bold}#{fg_color} on #{bg_color}" do
          string = "Some string"

          output = TerminalColors::Apply.(string, fg: fg_color, bg: bg_color, bold: bold)

          test do
            colored_string = "\e[#{bold_octet};3#{fg_index};4#{bg_index}mSome string\e[0m"

            assert output == colored_string

            comment "Example: #{colored_string}"
          end
        end
      end
    end
  end
end
