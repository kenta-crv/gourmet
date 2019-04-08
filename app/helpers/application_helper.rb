module ApplicationHelper

  def default_meta_tags
    {
      title: "<%= yield(:title) || 'グルメライター奥山健太のオススメ店' %>" ,
      description: "年間300店舗の新規店舗を開拓するグルメライター奥山健太のオススメする優良店をジャンル別にご紹介",
      keywords:    "グルメライター",
	  canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      # OGPの設定をしておくとfacebook, twitterなどの投稿を見た目よくしてくれます。
    }
  end
  
end
