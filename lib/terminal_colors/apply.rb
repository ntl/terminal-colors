module TerminalColors
  module Apply
    def self.call string, fg: nil, bg: nil, bold: nil
      output = String.new

      styled = fg || bg || bold

      if styled
        fg = Palette.fetch fg if fg
        bg = Palette.fetch bg if bg
        bold_octet = bold ? '1' : '0'

        output << "\e[#{bold_octet}"
        output << ";" if fg or bg
        output << "3#{fg}" if fg
        output << ";" if fg and bg
        output << "4#{bg}" if bg
        output << "m"
      end

      output << string

      if styled
        output << "\e[0m"
      end

      output
    end
  end
end
