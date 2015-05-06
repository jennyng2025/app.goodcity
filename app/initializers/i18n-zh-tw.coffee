`import Ember from "ember"`
`import SharedTranslationsZhTw from "shared.goodcity/initializers/i18n-zh-tw"`

I18nTranslationsZhTw =
  name: 'i18n-zh-tw'
  initialize: ->

    Ember.I18n.translation_store = Ember.I18n.translation_store || {}

    Ember.I18n.translation_store['zh-tw'] = Ember.$.extend true, SharedTranslationsZhTw,
      "faqs": "FAQs"
      "personal_information": "Personal Information"
      "ggv_order":
        "message" : "您到達時，我們的職員會核對並確認下列資料"
        "delivery_from" : "寄出地點"
        "delivery_to" : "運送至：屯門"
        "crossroads_foundation" : "十字路會"
        "crossroads_address1" : "屯門青山公路2號"
        "crossroads_address2" : "黃金海岸1期對面，並於40號大樓落貨"
        "map" : "地圖"
        "goodcity_job_summary" : "好人好市工作摘要"

      "application":
        "app_menu" : "目錄"
        "my_offers" : "我的捐獻"

      "tour":
        "step1.title" : "1. 上傳圖片及說明"
        "quality_items" : "優質物資"
        "we_receive" : "我們收到的物資"
        "step2.title" : "2. 提交審查"
        "chat" : "我們會再詳談"
        "questions": "假如我們有任何疑問"
        "step3.title" : "3. 安排運輸"
        "accepted_items" : "已接受的物資"
        "quick_easy" : "簡易又快捷"
        "step4.title" : "4. 幫助到有需要的人"
        "make_goodcity" : "怎樣這個城市變得更美好？"
        "faq" : "常見問題"

      "register":
        "hk_only" : "電話號碼 # （只限香港）"
        "given_name" : "名字"
        "family_name" : "姓氏"
        "districts" : "地區"
        "register" : "登記"
        "login" : "登入"
        "fill_all_fields": "請填妥所有欄目"
        "use_of_personal_info": "我們如何使用你的個人資料"
        "phone_number": "Phone Number"
        "john": "John"
        "doe": "Doe"

      "offers":
        "index":
          "new_donation" : "新的捐獻"
          "my_offers" : "我的捐獻"
          "total_items" : "物品總數： {{itemCount}}"
          "see_more" : "更多..."
          "unread_messages" : "未讀信息： {{unreadMessagesCount}}"
          "complete_offer" : "完成此項捐獻"
          "in_review" : "正在審查"
          "awaiting_review" : "等候審查"
          "arrange_transport" : "請安排運輸"
          "closed" : "已完成"
          "received" : "已收到"
          "van_booked" : "已預約貨車"
          "van_confirmed": "已確認貨車安排"
          "drop_off" : "親身送到十字路會"
          "alternate" : "已預約到十字路會收集站"
          "awaiting_driver" : "正在等候司機的資料"
          "driver_name" : "司機姓名"
          "phone" : "電話"
          "vehicle" : "車輛"
          "approved" :"已接受的物品"
          "rejected" :"不接受的物品"
          "donations": "捐獻"

      "offer":
        "camera": "Camera"
        "delete": "Delete"
        "messages": "信息"
        "disable": "損壞"
        "details" : "捐獻細節"
        "no_items" : "此類別還沒有任何捐獻。快作出您第一次的捐獻吧！",
        "confirm":
          "heading" : "確認"
          "notice": "由於我們每天所需都不一樣，而 <br> 儲存空間亦有限，因此我們無法接收部分物品，非常抱歉！ <br>"
          "review": "我們專業的義工團隊 <br> 會馬上審查您捐獻的物資"
          "thank": "非常感謝！"
          "next" : "已確認！下一項"
        "submit":
          "heading": "出售物資"
          "message": "有時候，要幫助窮困人士， <br> 最好的方法就是出售捐出的物品。 <br> 您是否同意出售物品？ <br> "

        "index":
          "item_count" : "捐出物品 ({{itemCount}}) 件"
          "add_item" : "加入物品"
          "add_items" : "捐出另一件物品"
          "confirm" : "已經完成，下一步"
          "review" : "審查狀況"
          "cancel" : "取消捐獻"
          "description" : "說明"
          "condition" : "物資狀況"

        "offer_details" :
          "heading" : "捐獻細節"
          "submitted_status": "我們正在審查您捐出的物品"
          "in_review_status": "您捐出的物品正由 {{firstName}}審查"
          "is_collection": "收集站"
          "is_drop_off": "接收地點"
          "is_gogovan_order": "已預約貨車"
          "is_gogovan_confirm": "已確認貨車安排"
          "reviewed_message": "審查已完成！"
          "please": "請"
          "transport": "安排運輸"
          "offer_messages": "一般信息"
          "accepted": "已接納"
          "not_needed": "不需要"
          "closed_offer_message": "此項捐獻已結束。不再需要更多物資，請見諒。"
          "offer_received": "已收到捐獻"

        "transport_details" :
          "heading": "運送詳情"
          "no_items": "此項捐獻 <br> 並無需要運送的物資"
          "arrange_transport": "安排運輸"
          "wait_for_transport": "審查完成後， <br> 隨即可以安排運送物資"
          "accepted_items_count": "目前已接納的物資數目為 ({{acceptedCount}})"
          "goods_received" : "Goods received on收到物資的日期"
          "thank": "非常感謝"

        "display_joyride" :
          "camera": "點選 <i class='fa fa-camera'></i> 加入更多項目"
          "delete": "點選 <i class='fa fa-trash'></i> 取消捐獻"
          "all_done_next": "加入最後一項物品後，請繼續下一步"
          "first_item": "點選任何物品以檢閱或修改資料"

        "cancel":
          "title": "取消捐獻"
          "confirm_ggv_cancel": "GoGoVan確認預約取消後，您可以取消是此捐獻"
          "cancel_offer": "取消捐獻"

      "items":
        "add_item":
          "condition": "物資狀態如何？"
          "edit_image" : "修改圖片"
          "save" : "儲存資料"
          "description_placeholder" : "請在此填上物資的資料、數量、大小"

      "item":
        "item_details" : "物資細節"
        "donor_description": "描述： {{donorDescription}}"
        "condition": "狀況： {{condition}}"
        "cancel" : "刪除項目"
        "edit" : "修改項目"
        "submitted_status": "此項物品正在等候審查"
        "in_review_status": "此項物品的審查已經完成"
        "accepted_status": "此項物品已被接納"
        "rejected_status": "此項物品不被接納"
        "cancel_last_item_confirm": "取消最後一項物品即會取消此向捐獻，您是否確定？"

        "messages":
          "info_text1": "審查物品時，如果有任何問題，我們會在下面的空格中與您討論"
          "info_text2": "如您希望加添任何對捐獻物品的描述，請在此分享"

      # Components
      "upload-images":
        "angles" : "圖片包含物資的所有角度了嗎？"
        "favourite" : "我的最愛"
        "add_another" : "加入另一張圖片"
      "upload-image":
        "upload_error" : "圖片上傳時出錯，請稍後再試一次。"

      # The following are for the I18n example template and can be removed soon.
      "i18nexample.items.heading": "物品"
      "i18nexample.item.title.one": "一件物品"
      "i18nexample.item.title.other": "物品數量為 {{count}} 件"
      "i18nexample.item.new.title": "新物品"
      "i18nexample.i18n.pluralisation": "Pluralisation"

`export default I18nTranslationsZhTw`
