SecurityRails::Application.routes.draw do
  match '/' => 'welcome#index'
  match '/hm' => 'welcome#hm'
end
