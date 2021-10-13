my_services = yaml(content: inspec.profile.file('services.yml')).params

my_services.each do |s|
  describe service(s['service_name']) do
    it { should be_running }
  end
end