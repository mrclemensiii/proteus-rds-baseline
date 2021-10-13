my_apps = yaml(content: inspec.profile.file('apps.yml')).params

my_apps.each do |s|
    describe package(s['app_name']) do
      it { should be_installed }
    end
  end