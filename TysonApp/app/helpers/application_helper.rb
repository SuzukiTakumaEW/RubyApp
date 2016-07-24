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
      {:text => '就職大作戦2015',      :path => "http://daisakusen.unity3d.jp/interviews/interview01.html"},
      #{:text => 'Contacts',      :path => "http://daisakusen.unity3d.jp/interviews/interview01.html"}
      {:text => 'ゲーム一覧',   :path => "https://ruby-app-suzukitakuma.c9users.io/appcontents"},
            #{:text => 'Contacts',      :path => "http://daisakusen.unity3d.jp/interviews/interview01.html"}
      {:text => 'GooglePlay',   :path => "https://play.google.com/store/apps/developer?id=鈴木拓馬&hl=ja"}
      #{:text => 'Users',      :path => admin_users_path},
      #{:text => 'Contacts',   :path => admin_contacts_path}
      #, controller: "application", action: "firstdb"
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
