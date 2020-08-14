require_relative '../test_init'

context "Invalid label" do
  invalid_label = 'not-a-color'

  string = "Some string"

  context "Foreground" do
    test "Error is raised" do
      assert proc { TerminalColors::Apply.(string, fg: invalid_label) } do
        raises_error? TerminalColors::InvalidLabelError
      end
    end
  end

  context "Background" do
    test "Error is raised" do
      assert proc { TerminalColors::Apply.(string, fg: invalid_label) } do
        raises_error? TerminalColors::InvalidLabelError
      end
    end
  end
end
