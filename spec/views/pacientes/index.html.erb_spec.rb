require 'spec_helper'

describe "pacientes/index" do
  before(:each) do
    assign(:pacientes, [
      stub_model(Paciente,
        :nome => "Nome",
        :fone => "Fone",
        :endereco => "Endereco",
        :email => "Email"
      ),
      stub_model(Paciente,
        :nome => "Nome",
        :fone => "Fone",
        :endereco => "Endereco",
        :email => "Email"
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Fone".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
