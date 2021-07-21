Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = 'api_entreprise'
  theme.title = 'API Entreprise'

  # Parts
  # Define all editable parts you want to use in your view templates
  #
  # Built-in part types:
  # - Line
  # - MultiLine
  # - Text (Rich text editor)
  # - Image
  # - ImageCollection
  # - Attachment
  # - Option
  # - Repeater
  theme.parts = [
    {
      name: 'text',
      title: "Body",
      part_type: "Spina::Parts::Text",
    },
    {
      name: 'markdown',
      title: 'Contenu',
      part_type: 'Spina::Parts::Markdown',
    }
  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {
      name: 'documentation',
      title: 'Documentation',
      parts: %w(markdown),
    },
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: 'homepage', title: "Homepage", deletable: false, view_template: "homepage"},
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
  ]

  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = []

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = []

  # Plugins (optional)
  theme.plugins = []
end
