COMPOSER = YAML.load_file("#{Rails.root.to_s}/config/composer.yml")[Rails.env].with_indifferent_access
