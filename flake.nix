   
{
  description = "A collection of flake templates";
  outputs = { self }: {
    templates = {
      nodejs = {
        path = ./nodejs;
        description = "NodeJS template";
      };
      rust = {
        path = ./rust;
        description = "Rust template";
      };
    };

    defaultTemplate = self.templates.nodejs;
  };
}