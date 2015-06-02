`import Ember from "ember"`
`import SharedTranslationsZhTw from "shared.goodcity/initializers/i18n-zh-tw"`

I18nTranslationsZhTw =
  name: 'i18n-zh-tw'
  initialize: ->

    Ember.I18n.translation_store = Ember.I18n.translation_store || {}

    Ember.I18n.translation_store['zh-tw'] = Ember.$.extend true, SharedTranslationsZhTw,
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
        "phone_number": "電話號碼"
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
          "picked_up": "已經提取"
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
        "camera": "照相機"
        "delete": "刪除"
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
          "driver_completed": "Driver completed"
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
          "goods_received" : "收到物資的日期"
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

      "faqs":
        "title": "常見問題"
        "description" : "好人好市服務全港，處理捐獻物資，效率冠絕全球"
        "questions":
          "question1": "你們會接收甚麼類型的物資？"
          "question2": "審查員根據甚麼標準決定接收哪樣物資？"
          "question3": "有甚麼運輸方法可選擇呢？"
          "question4": "怎樣要求物資？"
          "question5": "甚麼人受惠於這些物資呢？"
          "question6": "我住在海外也可以捐贈物資嗎？"
          "question7": "為甚麼將基地設在香港呢？"

        "answers":
          "answer1":
            "good_condition": "我們重視物資的狀況是否良好，以示對慈善團體及受惠人士的尊重。"

            "useful": "使用好人好市，只需幾分鐘的審查，您就能知道您捐出的物資是否能夠幫助別人。常見的物資有傢俱、家庭用品、電腦、電器等。"

          "answer2":
            "review": "我們的審查員會考慮當時的供求情況，並考慮不同物資可能帶來的限制，例如確保符合品質要求，大小限制，會否帶有危險品，運輸會否有困難，是否符合當地電壓、兼容、設計的要求等。"

            "messaging": "審查員會以好人好市應用程式裏的通訊功能，查詢有關捐贈物資的資料。這樣，您就不用填寫複雜冗長的表格。大部分的情況中，只要有相片及簡短的描述就足夠了。"

            "supervisors": "審查員亦能夠即時知會專業的管理員，他們大多擁有五年或以上在香港處理捐贈物資的經驗。他們處理過不少不常見的物資捐獻，例如是商業用披薩烤箱、十萬件全新西裝、大量假花裝飾等。面對這些古怪又實用的物資，他們非常清楚該如何處理。"

          "answer3":
            "gogovan": "<b>租用貨車，快捷妥當：</b> 通過我們的應用程式，您能夠預約貨車，這是運送物資的最快方法。您直接付款給司機。"

            "crossroad": "<b>資助收集服務：</b> 十字路會擁有一輛貨車，用以收集物資。使用這一服務的話，我們只會根據物資的大小，收取燃油及隧道費。但由於這項服務需求很大，您通常需要等候幾個星期。"

            "drop_off": "<b>親自運送：</b> 通過我們的應用程式，您能夠預約時間，將物資親自送到我們位於屯門的辦公室。"

          "answer4": "社工及慈善機構員工能使用好人好市的特別版網站和手機程式，目前只有受邀機構和人士可以使用特別版程式，但我們希望最終能夠開放給香港所有的註冊社工及慈善機構使用。"

          "answer5":
            "title": "我們幫助不同社群的需要："
            "community": "社區/文化團體"
            "drug": "濫藥更新人士"
            "education": "教育機構"
            "elderly": "長者"
            "environmental": "環保團體"
            "families": "有需要的家庭"
            "medical_n_hospitals": "醫護診所及醫院"
            "orphanages": "孤兒院"
            "special_needs": "特殊需要人士"
            "risk": "高危人士"
            "rehabilitation": "復康服務"
            "service_orgs": "服務機構"
            "social_enterprise": "社會企業"
            "sports": "殘疾人士體育計劃"
            "suicide_prevention": "防止自殺服務"
            "domestic_workers": "家傭支援工作"
            "new_arrivals": "新移民支援工"
            "women": "婦女支援工作"
            "vocational_training": "職業培訓計劃"
            "animals_welfare": "動物福利"

          "answer6": "不可以。但如果您以公司身份從海外捐出大量物資，您就能夠使用我們的另一服務："
          "global_hand" : "環球援手"

          "answer7":
            "hk": "香港的地理位置非常獨特，非常適合處理慈善物資捐獻，是全世界最有效率的地方，因為：人口密度高，智能電話極普及，相對富裕，慈善工作井然有序，公民意識亦逐漸於成型。"

            "crossroads": "十字路會自1995年始於香港處理各界捐贈的物資，至今發展出各種網上服務（如business.un.org），這讓我們成為一個獨特的機構，處理捐贈物資的供求。"

      "pics":
        "title": "個人資料"
        "confidentiality": '十字路會全力保護在活動中，包括從好人好市的網站www.goodcity.hk（「我們」、「我們的」、「十字路會」」及「好人好市.HK」）上收集的個人資料，確保不會外洩。'

        "ask_to_access": "本個人資料收集聲明（PICS）列出我們對處理個人資料的政策及使用情況，包括在您註冊以通過好人好市.HK接收物資時，我們要求您提供的個人資料。您可以閱讀我們完整的私隱政策。"
        "here": "這裏"

        "change_privacy_policy": "我們保證依照香港個人資料(私隱)條例列明的要求，我們可能因時更改此PICS或我們的私隱政策，並會於此處更新及張貼詳情。繼續使用好人好市.HK即表示您同意這些變更。"

        "child": "假如您為18歲以下青少年，請徵求父母或監護人的同意，方可使用好人好市.HK。"

        "commitement_to_you": "我們的承諾"

        "use_purposely": "我們只會將您提供的個人資料用作收集或其他直接相關的用途；"

        "will_not_sell_dara": "我們不會在您不知情（或根據要求，不同意）的情況下，販賣或將您的個人資料轉讓給任何其他機構；"

        "unsubscribe": "您隨時都可以取消訂閱我們的通訊；"

        "questions": "我們非常重視我們的法律責任，假如您有任何疑問或憂慮，請隨時聯絡我們。"

        "personal_data_collected": "個人資料收集"
        "provide_data_to_use_services": "當你於好人好市.HK註冊時，我們或會要求您提供以下各項個人資料。請注意，部分資料或為必須提供的，我們會於收集時清楚註明。缺少這些資料，我們可能無法向您提供我們的物資或服務："

        "contact_details": "您的姓名、地址、電郵及傳真號碼；"
        "gender_and_dob": "您的性別及出生日期"
        "financial_information": "財政資料，例如信用卡資料（假如您向我們付款）及銀行賬戶資料（假如我們向您轉賬金額）；"

        "personal_identifier": "身份證明文件資料，如護照及其他官方文件號碼。除卻特殊情況，否則我們不會收集或保存您的香港身份證號碼；"
        "responses_to_feedback": "您於問卷上的回答或建議。"

        "purpose_and_use": "目的及使用情況"
        "will_use_data_for_following": "我們或會使用您提供的個人資料作以下用途，或其他直接相關的用途："

        "new_or_any_invitation": "在您要求或清楚表明的同意下，用作報道我們的活動、計劃、產品、研究及未來項目的新聞，更新或邀請；"

        "respond_to_your_questions": "回應您的查詢或提議；"
        "to_process_feedback": "處理建議或跟進您的查詢；"

        "requested_by_govt_or_legal_claim": "根據法律及條例授權或受政府要求提供，或用以確保或行使我們的合法權利或追究法律責任；"

        "deliver_items_to_you": "向您運送物資或處理您的要求；"

        "improve_services": "改善我們的服務、活動、產品及內容，以及用作數據及其他分析，以改善我們的效率；"
        "prevent_crime": "預防或檢察出罪案或可能的犯罪活動。"

        "third_parties": "第三方"
        "third_party_organisations": "我們或會保留讓其他組織及個別人士代表我們履行職責，例如協助我們物流安排的合作夥伴GoGoVan。這些第三方或會得到准許取得您的個人資料，以履行其職責，但我們並不會授權他們將這些資料用作其他用途。這些第三方或係位於香港的機構。我們的政策在於選取合乎我們需要，並擁有良好的技術及組織能力，信譽可靠的服務提供者。他們必須擁有保障私隱的良好記錄。"

        "social_welfare_dept": "假如你得到其他機構轉介（例如社會福利署或其他機構），我們或須於他們討論，並根據情況於過程中披露或轉移您的個人資料。"

        "crossroads_network": "十字路會網絡"

        "use_data_in_crossroads_network": '十字路會於全球運作。我們於香港及英國皆設有辦公室，我們將之稱為「十字路會網絡」。我們或會根據前述PICS的目的，於十字路會網絡內披露、分享及轉移您的個人資料。我們要求十字路會網絡的人員皆遵守於此PICS及我們的私隱政策中列明的數據保安及保密的程序。'

        "correction_of_data": "存取及更正個人資料"
        "right_to_review_and_correct": "您有權利閱覽及更改您所提供的個人資料。假如閱覽或更新的過程中產生任何費用，我們或會向您收取合理的費用。假如您希望閱覽或更新個人資料，或有任何關於此PICS或我們的私隱政策的疑問，歡迎隨時聯絡我們，電郵為：privacy@crossroads.org.hk"

        "last_updated": "本聲明最後更新日期為2014年8月。"

      # The following are for the I18n example template and can be removed soon.
      "i18nexample.items.heading": "物品"
      "i18nexample.item.title.one": "一件物品"
      "i18nexample.item.title.other": "物品數量為 {{count}} 件"
      "i18nexample.item.new.title": "新物品"
      "i18nexample.i18n.pluralisation": "Pluralisation"

`export default I18nTranslationsZhTw`
