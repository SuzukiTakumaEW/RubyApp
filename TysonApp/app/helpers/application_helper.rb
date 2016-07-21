module ApplicationHelper
  
   # 選択中のサイドメニューのクラスを返す
  def sidebar_activate(sidebar_link_url)
    current_url = request.headers['PATH_INFO']
    if current_url.match(sidebar_link_url)
      ' class="active"'
    else
      ''
    end
  end

#action: "firstdb"

  # サイドメニューの項目を出力する
  def sidebar_list_items
    items = [
      {:text => 'Users',      :path => "http://daisakusen.unity3d.jp/interviews/interview01.html"},
      {:text => 'Contacts',      :path => "http://daisakusen.unity3d.jp/interviews/interview01.html"}
      #{:text => 'Users',      :path => admin_users_path},
      #{:text => 'Contacts',   :path => admin_contacts_path}
    ]

    html = ''
    items.each do |item|
      text = item[:text]
      path = item[:path]
      
      #html = html + %Q(<li{sidebar_activate(path)}><a href="#{path}">#{text}</a></li>)
      html = html + %Q(<li#{sidebar_activate(path)}><a href="#{path}">#{text}</a></li>)
    end

    raw(html)
  end

  
end
