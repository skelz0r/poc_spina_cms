
documentation_resource = Spina::Resource.find_or_initialize_by(
  name: 'documentation',
)

documentation_resource.assign_attributes(
  label: 'Documentation',
  view_template: 'documentation',
)
documentation_resource.slug = 'documentation/'

documentation_resource.save!

if ENV['DUMMY']
  account = Spina::Account.first_or_create
  account.update_attribute(:name, 'API Entreprise')
  account.theme = 'api_entreprise'
  account.save!

  user = Spina::User.find_or_initialize_by(email: 'loic.delmaire@beta.gouv.fr')
  user.name = 'Loïc Delmaire'
  user.admin = true
  user.password = user.password_confirmation = 'password'
  user.save!

  dummy_page = documentation_resource.pages.all.find { |page| page.title == 'Démarrer avec API Entreprise' } || documentation_resource.pages.new
  dummy_page.title ||= 'Démarrer avec API Entreprise'

  dummy_page.view_template = 'documentation'
  dummy_page.json_attributes['en_content'] = [
    Spina::Parts::Markdown.new(
      raw: File.read(File.join(__dir__, './dummy_page_content.md')),
      name: 'markdown',
      title: 'Contenu',
    )
  ]
  dummy_page.save!
end
