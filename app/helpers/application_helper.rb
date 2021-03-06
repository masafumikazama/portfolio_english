module ApplicationHelper

  # ページごとにタイトルを返す
  def full_title(page_name = "") # メソッドと引数の定義
    base_title = "PortfolioApp" # 基本となるアプリケーション名を変数に代入
    if page_name.empty? # 引数を受け取っているか判定
      base_title # 引数page_nameが空文字の場合はbase_titleのみ返す
    else # 引数page_nameが空文字ではない場合
      page_name + " | " + base_title # 文字列を連結して返す
    end
  end
  
  def qrcode_tag(text, options = {})
    ::RQRCode::QRCode.new(text).as_svg(options).html_safe
  end
end