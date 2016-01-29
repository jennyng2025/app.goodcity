`import Ember from "ember"`
`import SharedTranslationsZhTw from "shared-goodcity/locales/zh-tw/translations"`

I18nTranslationsZhTw =
  Ember.$.extend true, SharedTranslationsZhTw,
    "socket_offline_error": "正在嘗試連線…"

    "application":
      "app_menu" : "目錄"
      "my_offers" : "我的捐獻"

    "tour":
      "step1.title" : "1. 圖片上傳及說明"
      "quality_items" : "物資狀況"
      "we_receive" : "我們收到的物資"
      "step2.title" : "2. 即時審查"
      "chat" : "假如我們有任何疑問"
      "questions": "我們可以再詳談"
      "step3.title" : "3. 運輸安排"
      "accepted_items" : "已接受的物資："
      "quick_easy" : "簡易又快捷"
      "step4.title" : "4. 幫助到有需要的人"
      "make_goodcity" : "這個城市怎樣會變得更美好？"
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
      "agree_toc": "By using GoodCity.HK you are agreeing to be bound by these"
      "terms": "terms of use"

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
        "receiving": "Receiving"
        "van_booked" : "已預約貨車"
        "van_confirmed": "已確認貨車安排"
        "picked_up": "已經提取"
        "drop_off" : "親身送到十字路會"
        "alternate" : "已預約十字路會收集站"
        "awaiting_driver" : "正在等候司機的資料"
        "driver_name" : "司機姓名"
        "phone" : "電話"
        "vehicle" : "車輛"
        "approved" :"已接受的物品"
        "rejected" :"不接受的物品"
        "donations": "捐獻"
        "inactive": "Inactive: you can re-submit this offer."

    "offer":
      "camera": "照相機"
      "delete": "刪除"
      "messages": "信息"
      "details" : "捐獻細節"
      "no_items" : "此類別還沒有任何捐獻。快作出您第一次的捐獻吧！",
      "confirm":
        "heading" : "確認"
        "notice": "由於儲存空間有限，社區的需要亦經常改變，<br> 我們可能無法接收部分物資，非常抱歉！ <br>"
        "review": "我們專業的義工團隊 <br> 會馬上審查您捐獻的物資"
        "thank": "非常感謝！"
        "next" : "確認！下一步"
      "submit":
        "heading": "物資出售"
        "message": "有時候，要幫助窮困人士， <br> 最好的方法就是出售捐出的物品。 <br> 您是否同意出售物品？ <br> "
      "notifications":
        "title": "Notifications"
        "alert_updates": "Would you like to be alerted when we have questions or status updates for your offer?"
        "no": "No Thanks"
        "notify": "Notify Me"

      "index":
        "item_count" : "捐出物品 ({{itemCount}}) 件"
        "add_item" : "加入物品"
        "add_items" : "捐出另一件物品"
        "confirm" : "完成，下一步"
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
        "driver_completed": "司機已確認預約"
        "is_gogovan_confirm": "已確認貨車安排"
        "reviewed_message": "審查已完成！"
        "please": "請"
        "transport": "安排運輸"
        "offer_messages": "一般信息"
        "accepted": "已接納"
        "not_needed": "不需要"
        "closed_offer_message": "此項捐獻已結束。不再需要此類物資，請見諒。"
        "offer_received": "已收到捐獻"
        "offer_start_receiving": "{{firstName}} {{lastName}} began receiving items"
        "crossroads_booking_alert" : "我們會盡快處理新增的物品。我們的收集團隊通常只會接收已被審查及接受的物資。<br><br>如我們接受了大型物件，我們可能會取消及重新安排運輸。"
        "ggv_booking_alert": "我們會盡快處理新的物品，請不要送出未被接受的物資。<br><br>如果你需要更改運輸安排以容納更多的物品，請按運送詳情。"

      "transport_details" :
        "heading": "運送詳情"
        "no_items": "此項捐獻 <br> 並沒有需要運送的物資"
        "arrange_transport": "安排運輸"
        "wait_for_transport": "審查完成後， <br> 隨即可以安排運送物資"
        "accepted_items_count": "目前已接納的物資數目為 ({{acceptedCount}})"
        "goods_received" : "收到物資的日期"
        "thank": "非常感謝"
        "receiving": "Your offer is currently being received."

      "display_joyride" :
        "camera": "點選 <i class='fa fa-camera'></i> 加入更多項目"
        "delete": "點選 <i class='fa fa-trash'></i> 取消捐獻"
        "all_done_next": "加入最後一項物品後，請繼續下一步"
        "first_item": "點選任何物品以檢閱或修改資料"

      "cancel":
        "title": "取消捐獻"
        "confirm_ggv_cancel": "GoGoVan確認預約取消後，您可以取消是次捐獻"
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
      "cancel_last_item_confirm": "取消最後一項物品即會取消此項捐獻，您是否確定？"

      "messages":
        "info_text1": "審查物品時，如果有任何問題，我們會在下面的對話框向您查詢"
        "info_text2": "如您希望加添任何對捐獻物品的描述，請在此留言"

    "faqs":
      "title": "常見問題"
      "description" : "好人好市服務全港，處理捐獻物資，效率冠絕全球"
      "questions":
        "question1": "你們會接收甚麼類型的物資？"
        "question2": "審查員根據甚麼標準決定接收哪樣物資？"
        "question3": "我可選擇甚麼運輸方法呢？"
        "question4": "我可以邀請別人使用好人好市應用程式嗎？"
        "question5": "甚麼人受惠於這些物資呢？"
        "question6": "我住在海外也可以捐贈物資嗎？"
        "question7": "為甚麼將基地設在香港呢？"

      "answers":
        "answer1":
          "good_condition": "我們重視物資的狀況是否良好，以示對慈善團體及受惠人士的尊重。"

          "useful": "使用好人好市，只需幾分鐘的審查，您就能知道您捐出的物資是否能夠幫助別人。常見的物資有傢俱、家庭用品、電腦、電器等。"

        "answer2":
          "review": "我們的審查員會考慮當時的供求情況，並考慮不同物資可能帶來的限制，例如是否符合品質要求、大小限制、安全標準，運輸會否有困難，是否符合當地電壓、兼容、設計的要求等。"

          "messaging": "審查員會透過好人好市應用程式裏的通訊功能，查詢有關捐贈物資的資料。這樣，您就不用填寫複雜冗長的表格。大部分的情況中，只要有相片及簡短的描述就足夠了。"

          "supervisors": "審查員亦能夠即時知會專業的管理員，他們大多擁有五年或以上在香港處理捐贈物資的經驗。他們處理過很多罕見的物資捐獻，例如是商業用披薩烤箱、十萬件全新西裝、大量假花裝飾等。面對這些古怪又實用的物資，他們非常清楚該如何處理。"

        "answer3":
          "gogovan": "<b>租用貨車，快捷妥當：</b> 通過我們的應用程式，您能夠預約貨車，這是運送物資的最快方法。您直接付款給司機。"

          "crossroad": "<b>資助收集服務：</b> 十字路會擁有一輛貨車，用以收集物資。使用這服務的話，我們只會根據物資的大小，收取燃油及隧道費。但由於這項服務需求很大，您通常需要等候幾個星期。"

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
          "domestic_workers": "家傭"
          "new_arrivals": "新移民"
          "women": "婦女"
          "vocational_training": "職業培訓計劃"
          "animals_welfare": "動物福利"

        "answer6": "不可以。但如果您以公司身份從海外捐出大量物資，您就能夠使用我們的另一服務："
        "global_hand" : "環球援手"

        "answer7":
          "hk": "香港的地理位置非常獨特，非常適合處理慈善物資捐獻，是全世界最有效率的地方，因為：人口密度高，相對富裕，智能電話極普及，慈善工作井然有序，公民意識亦逐漸成型。"

          "crossroads": "十字路會自1995年開始於香港處理各界捐贈的物資，至今發展出各種網上服務（如business.un.org）。這讓我們成為一個獨特的機構，擔當着十字路口的角色，聯繫捐贈物資的供求。"

    "pics":
      "title": "個人資料"
      "confidentiality": '十字路會全力保護在活動中，包括從好人好市的網站www.goodcity.hk（「我們」、「我們的」、「十字路會」」及「好人好市.HK」）上收集的個人資料，確保不會外洩。'

      "ask_to_access": "本個人資料收集聲明（PICS）列出我們對處理個人資料的政策及使用情況，包括在您註冊以通過「好人好市.HK」接收物資時，我們要求您提供的個人資料。您可以閱讀我們完整的私隱政策。"
      "here": "這裏"

      "change_privacy_policy": "我們保證依照香港個人資料(私隱)條例列明的要求，我們可能因時更改此PICS或我們的私隱政策，並會於此處更新及張貼詳情。繼續使用「好人好市.HK」即表示您同意這些變更。"

      "child": "假如您為18歲以下青少年，請徵求父母或監護人的同意，方可使用「好人好市.HK」。"

      "commitement_to_you": "我們的承諾"

      "use_purposely": "我們只會將您提供的個人資料用作收集或其他直接相關的用途；"

      "will_not_sell_dara": "我們不會在您不知情（或根據要求，不同意）的情況下，販賣或將您的個人資料轉讓給任何其他機構；"

      "unsubscribe": "您隨時都可以取消訂閱我們的通訊；"

      "questions": "我們非常重視我們的法律責任，假如您有任何疑問或憂慮，請隨時聯絡我們。"

      "personal_data_collected": "個人資料收集"
      "provide_data_to_use_services": "當你於「好人好市.HK」註冊時，我們或會要求您提供以下各項個人資料。請注意，部分資料或為必須提供的，我們會於收集時清楚註明。缺少這些資料，我們可能無法向您提供我們的物資或服務："

      "contact_details": "您的姓名、地址、電郵及傳真號碼；"
      "gender_and_dob": "您的性別及出生日期；"
      "financial_information": "財政資料，例如信用卡資料（假如您向我們付款）及銀行賬戶資料（假如我們向您轉賬金額）；"

      "personal_identifier": "身份證明文件資料，如護照及其他官方文件號碼。除非有特殊情況，否則我們不會收集或保存您的香港身份證號碼；"
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
      "third_party_organisations": "我們或會保留讓其他組織及個別人士代表我們履行職責，例如協助我們物流安排的合作夥伴GoGoVan。這些第三方或會得到准許取得您的個人資料，以履行其職責，但我們並不會授權他們將這些資料用作其他用途。這些第三方或是位於香港的機構。我們的政策在於選取合乎我們需要，並擁有良好的技術及組織能力，信譽可靠的服務提供者。他們必須擁有保障私隱的良好記錄。"

      "social_welfare_dept": "假如你得到其他機構轉介（例如社會福利署或其他機構），我們或須於他們討論，並根據情況於過程中披露或轉移您的個人資料。"

      "crossroads_network": "十字路會網絡"

      "use_data_in_crossroads_network": '十字路會於全球運作。我們於香港及英國皆設有辦公室，我們將之稱為「十字路會網絡」。我們或會根據前述PICS的目的，於十字路會網絡內披露、分享及轉移您的個人資料。我們要求十字路會網絡的人員皆遵守於此PICS及我們的私隱政策中列明的數據保安及保密的程序。'

      "correction_of_data": "存取及更正個人資料"
      "right_to_review_and_correct": "您有權利閱覽及更改您所提供的個人資料。假如閱覽或更新的過程中產生任何費用，我們或會向您收取合理的費用。假如您希望閱覽或更新個人資料，或有任何關於此PICS或我們的私隱政策的疑問，歡迎隨時聯絡我們，電郵為：privacy@crossroads.org.hk"

      "last_updated": "本聲明最後更新日期為2014年8月。"

    "terms":
      "title": "Terms and Conditions"
      "info": "GoodCity.hk is part of the Crossroads Foundation network. By using the GoodCity.hk website http://www.goodcity.hk (\"GoodCity Website\") you are agreeing to be bound by these terms of use between you and the Crossroads Foundation and its affiliates (\"Crossroads\", \"us\", \"we\" and \"our\")."

      "agreement":
        "title": "Your Agreement"
        "terms_of_use": "You agree to use the GoodCity Website in accordance with these terms of use."
        "use_authority": "You agree to use the GoodCity Website only for your personal use. If you are using the GoodCity Website on behalf of a company, partnership, association, government or other organisation, you represent and warrant that you are authorised to do so and that you are authorised to bind your organisation to these terms of use."
        "lawful_use": "You agree to use the GoodCity Website only for lawful purposes."
        "security": "You agree not to take any action that might compromise the security of the GoodCity Website, render the GoodCity Website inaccessible to others or otherwise cause damage to the GoodCity Website or its content."
        "access_attempt": "You agree not to attempt to access any parts of the GoodCity Website that are not intended for you;"
        "website_rights": "You agree not to use the GoodCity Website in any manner that might interfere with the rights of third parties."
      "changes":
        "title": "Changes to these Terms of Use"
        "info": "We may from time to time issue, revise or add specific instructions, policies and terms applicable to your use of the GoodCity Website and these instructions, policies and terms form part of these terms of use. Please read the GoodCity Website terms of use carefully and come back to review them from time to time. By continuing to use the GoodCity Website after any amendment to the terms of use you are agreeing to these terms of use as amended."
        "contact_us": "If you have any questions about the GoodCity Website terms of use, please contact us at"
      "account":
        "title": "Account Details"
        "info": "Your GoodCity account name remains our property and we can reclaim and reuse the account name once your account is terminated or deactivated for whatever reason by either you or us. You are responsible for safeguarding any passwords used to access your account and the GoodCity Website. You will promptly notify us at privacy@crossroads.org.hk if you believe that your password or account has been compromised."
      "privacy":
        "title": "Privacy Policy"
        "info": "Your privacy is very important to us. We have prepared a Personal Information Collection Statement (PICS) which outlines our policies and practices with respect to the personal data you may be asked to provide when registering to receive items through GoodCity.HK."
        "pics": "The PICS is available to view"
        "privacy_link": "The full Crossroads privacy policy is available to view"
        "use": "These policies are incorporated into and form part of these GoodCity Website terms of use."
        "here": "here"
      "intellectual":
        "title": "Intellectual Property"
        "info": "All intellectual property rights in the GoodCity Website (including any future updates, upgrades and new versions) and any connected or related applications, systems and services shall continue to belong to us and our licensors. You have no right to use our intellectual property rights except to the extent expressly permitted by us. In particular, you have no right to use our trade marks or product names, logos, domain names or other distinctive brand features without our prior written consent."
        "grant": "We grant you a personal, non-exclusive, non-sublicensable, non-transferrable, royalty-free and revocable licence to use the GoodCity Website only in accordance with these terms of use."
        "unauthorised_access": "You may not copy, modify, reverse engineer or extract any information, source codes or underlying HTML from the GoodCity Website or any connected or related applications, systems or services, except to the extent that we may not prohibit you from doing so under applicable law or you have our prior written consent to do so. You will not use the GoodCity Website in conjunction with any application or other technology that attempts to do any of the foregoing or which otherwise causes the GoodCity Website to operate in an unauthorised manner."

      "content":
        "title": "Your Content"
        "info": "When you submit, upload, transmit or display any photographs, data, information, media or other content in connection with your use of the GoodCity Website (“Your Content”), you understand and agree that:"
        "responsible": "You will continue to own and be responsible for Your Content."
        "no_sell": "We will not sell Your Content to any third party."
        "privacy_policy": "Our use of Your Content will be subject to our Privacy Policy."
        "right_to_use": "You are giving us and our affiliate companies the right to use Your Content (with no fees or charges payable by us to you) to provide our services and for the purposes of promoting, developing and trying to improve our services, including new services that we may provide in the future."
        "share": "We may share Your Content with third parties that we work with to help provide, promote, develop and improve our services, but these third parties (other than our affiliate companies) will not make any separate use of Your Content for their own purposes (i.e. for any purposes that are not related to our services) and"
        "suggestions": "Any comments or suggestions you may provide regarding the GoodCity Website are entirely voluntary and we will be free to use such comments and suggestions in our discretion without any obligation to you."
      "warranty":
        "title": "Warranty and Disclaimer"
        "info": "We warrant that we will provide the GoodCity Website and the services relating to it using reasonable care and skill. However, apart from this warranty, we make no representation or warranty and give no undertaking in relation to our services, our software or any content submitted, transmitted or displayed by our services, including any representation, warranty or undertaking that the GoodCity Website or any software, content or information provided to you by it will be secure or error-free or that the GoodCity Website will be compatible with your device or any software operating on it or fit for a particular purpose. The GoodCity Website is provided on an “as is” and “as available” basis."
      "liability":
        "title": "Liability"
        "info": "The total aggregate liability of us and our affiliated companies in connection with the GoodCity Website, arising out of any circumstances, shall be limited to USD100."
        "exclude": "Nothing in these terms of use shall limit or exclude any liability for any loss arising from death or personal injury caused by negligence, for fraudulent misrepresentation or for any other liability, to the extent that any such liability cannot be limited or excluded by law."
        "indemnify_us": "You agree to indemnify us and hold us harmless against any liability or loss incurred by us arising in connection with your breach of these terms of use."

      "policy_to_children":
        "title": "Our Policy Towards Children"
        "info": "The GoodCity Website is not intended for use by children. Unfortunately, we cannot always determine the age of users to our site. Please do not use the GoodCity Website if you are under 18 years of age."

      "general":
        "title": "General"
        "info": "These GoodCity Website terms of use are the entire agreement between you and us in relation to the GoodCity Website. You agree that you will have no claim against us for any statement which is not explicitly set out in these terms of use. No delay in enforcing any provision of these terms of use shall be construed to be a waiver of any rights under that provision. Any rights and obligations under these terms of use which by their nature should survive, including but not limited to any obligations in relation to the liability of the respective parties, will remain in effect after termination or expiration of these terms of use."
        "hk_law": "These terms of use and any dispute or claim arising out of or in connection with them shall be governed by the laws of the Hong Kong Special Administrative Region. All legal proceedings arising out or in connection with these terms of use shall be non-exclusively brought in the courts of the Hong Kong Special Administrative Region."
        "language": "Where there is any inconsistency between the English and any other language versions of these terms of use, the English language version will prevail."

      "contact":
        "title": "Contact Us"
        "info": "If you have any questions or concerns regarding the GoodCity Website or these terms of use please contact us at"


    # The following are for the I18n example template and can be removed soon.
    "i18nexample.items.heading": "物品"
    "i18nexample.item.title.one": "一件物品"
    "i18nexample.item.title.other": "物品數量為 {{count}} 件"
    "i18nexample.item.new.title": "新物品"
    "i18nexample.i18n.pluralisation": "Pluralisation"

`export default I18nTranslationsZhTw`
