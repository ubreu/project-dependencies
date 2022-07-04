   
{
  description = "A collection of flake templates";
  outputs = { self }: {
    templates = {
      angular = {
        path = ./angular;
        description = "Angular template";
      };
      gradle = {
        path = ./gradle;
        description = "Gradle template";
      };
      nodejs = {
        path = ./nodejs;
        description = "NodeJS template";
      };
      python = {
        path = ./python;
        description = "Python template";
      };
      rust = {
        path = ./rust;
        description = "Rust template";
      };
    };

    defaultTemplate = self.templates.nodejs;
  };
}