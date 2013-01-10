include_recipe "pivotal_workstation::git"

git "#{Chef::Config[:file_cache_path]}/z.sh" do
  repository node['z']['repository']
  # revision bash_it_version
  destination "#{Chef::Config[:file_cache_path]}/z.sh"
  action :sync
end