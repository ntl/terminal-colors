require_relative '../test_init'

context "No styling" do
  string = "Some string"

  output = TerminalColors::Apply.(string)

  test do
    assert output == string

    comment "Example: #{string}"
  end

  test "String is copied to new instance" do
    refute output.equal? string
  end
end
