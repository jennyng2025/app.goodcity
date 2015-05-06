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

      "faqs":
        "title": "FAQs"
        "description" : "GoodCity.HK is the world's most efficient city-wide service for charitable goods donations."
        "questions":
          "question1": "What kinds of items can be donated?"
          "question2": "How do reviewers decide what to accept?"
          "question3": "What transport options are available?"
          "question4": "How are requests for goods made?"
          "question5": "Who is helped by these goods?"
          "question6": "Can I donate goods from outside Hong Kong?"
          "question7": "Why Hong Kong?"

        "answers":
          "answer1":
            "good_condition": "Items in good condition that could be a respectful gift to a charity or disadvantaged recipient."

            "useful": "With GoodCity.HK you can find out if your item(s) are helpful just by taking a photo and waiting a few moments for review. Typical donations are of furniture, household goods, computers, electrical items and much more."

          "answer2":
            "review": "Our reviewers see real-time supply and demand scores for every type of item. They combine this with considerations that vary for different kinds of items: quality requirements, size constraints, hazardous items, logistically difficult items, voltage, compatibility, parts and so on."

            "messaging": "Reviewers can ask you questions via the app's messaging features. This means we can avoid asking you to fill in complicated forms. For most items, your photos and brief notes will be enough."

            "supervisors": "Reviewers also have live access to expert supervisors. Our supervisors have typically been facilitating donated goods in Hong Kong for at least five years. They know how to evaluate unusual offers: like a commercial pizza oven, 100,000 new business suits, boxes of fake flowers and all manner of wierd and wonderful things."

          "answer3":
            "gogovan": "<b>Fast commercial van hire:</b> from within our app you can book a truck. This is the fastest method and you pay the driver directly."

            "crossroad": "<b>Subsidised collection service:</b> Crossroads operates a collection truck. For this service we only charge a fuel/tolls levy based on the size of your offer. However, due to high demand, you will typically need to wait a few weeks."

            "drop_off": "<b>Deliver yourself:</b> through the app you can book a time to drop the items at our Tuen Mun facility yourself."

          "answer4": "Social workers and charity staff have access to a specialised website and mobile app. Currently this is by invitation only but it will ultimately be expanded to all registered social workers and charitable organisations in Hong Kong."

          "answer5":
            "title": "We serve a range of need:"
            "community": "Community/cultural groups"
            "drug": "Drug rehabilitation"
            "education": "Educational institutions"
            "elderly": "Elderly persons"
            "environmental": "Environmental care"
            "families": "Families in need"
            "medical_n_hospitals": "Medical clinics & hospitals"
            "orphanages": "Orphanages"
            "special_needs": "People with special needs"
            "risk": "People at risk"
            "rehabilitation": "Rehabilitation services"
            "service_orgs": "Service organisations"
            "social_enterprise": "Social enterprise"
            "sports": "Sports programmes for the disadvantaged"
            "suicide_prevention": "Suicide prevention services"
            "domestic_workers": "Support for domestic workers"
            "new_arrivals": "Support for new arrivals"
            "women": "Support for women"
            "vocational_training": "Vocational training programmes"
            "animals_welfare": "Welfare of animals"

          "answer6": "No. But if you are a company offering a volume of goods outside Hong Kong you can use another service we developed called"
          "global_hand" : "Global Hand."

          "answer7":
            "hk": "Hong Kong is uniquely positioned to have the world’s most efficient system for charitable goods donation: high population density, small distances, penetration of smart-phones, relative wealth, well organised charitable sector and a climate of growing social awareness."

            "crossroads": "The Crossroads Foundation has been facilitating donated goods in Hong Kong since 1995 and has developed numerous complex online services (e.g. business.un.org) making it an organisation uniquely placed to realise this opportunity."

      "pics":
        "title": "Personal Information"
        "confidentiality": 'Crossroads Foundation is committed to protecting the confidentiality and security of the personal data that we collect in the course of our activities, including through the GoodCity.HK website at www.goodcity.hk ("we", "us", "our", "Crossroads" and "GoodCity.HK")'

        "ask_to_access": "This Personal Information Collection Statement (PICS) outlines our policies and practices with respect to the personal data you may be asked to provide when you register to receive items through GoodCity.HK. Our full privacy policy is available to view"
        "here": "here"

        "change_privacy_policy": "We pledge to comply with the requirements of the Personal Data (Privacy) Ordinance in Hong Kong. We may change this PICS or our privacy policy from time to time by updating and re-posting them here. Your continued use of GoodCity.HK will mean that you accept these changes."

        "child": "If you are under 18 years old, please ask your parents or guardian before using GoodCity.HK."

        "commitement_to_you": "Our Commitment to You"

        "use_purposely": "We only use the personal data that you provide to us for the purpose for which it is collected or a directly related purpose;"

        "will_not_sell_dara": "We will not sell or pass your personal data to any other organisation without your knowledge (or consent, as required);"

        "unsubscribe": "We will always give you the opportunity to unsubscribe from our communications;"

        "questions": "We take our obligations under the law seriously and want to hear from you if you have any questions or concerns;"

        "personal_data_collected": "Personal Data Collected"
        "provide_data_to_use_services": "When you register with GoodCity.HK we may ask you to provide the following personal data. Please note that it is mandatory for you to provide certain categories of personal data as specified at the time of collection. Without this data we may not be able to provide you with our products and services:"

        "contact_details": "your name, address, email, phone and fax numbers;"
        "gender_and_dob": "your gender and date of birth;"
        "financial_information": "financial information such as credit card information (if you make a payment to us) and bank account details (if we are making payment to you by direct debit);"

        "personal_identifier": "a personal identifier such as passport or other official document or case number. Save in exceptional circumstances, we will not collect or retain HKID card numbers;"
        "responses_to_feedback": "your responses to surveys or feedback."

        "purpose_and_use": "Purpose and Use"
        "will_use_data_for_following": "We may use the personal data that you provide to us for the following purposes and purposes directly related to them:"

        "new_or_any_invitation": "at your request, or subject to your consent having been given, to deliver news, updates and invitations on our activities, programs, products, research and upcoming events;"

        "respond_to_your_questions": "to respond to your enquiries or suggestions;"
        "to_process_feedback": "to process feedback and to follow up with you on your enquiries;"

        "requested_by_govt_or_legal_claim": "as permitted or required by law or regulation, or as requested by government authorities or to establish or exercise our legal rights or defend against legal claims;"

        "deliver_items_to_you": "to deliver items to you and facilitate your requests;"

        "improve_services": "to improve our services, activities, products and content and for statistical and other analysis to help us improve our effectiveness;"
        "prevent_crime": "to prevent or detect a crime or possible criminal activity."

        "third_parties": "Third Parties"
        "third_party_organisations": "We may retain other organisations and individuals to perform functions on our behalf, such as our logistics partner GoGoVan. Such third parties may be provided with access to such of your personal data as needed to perform their functions, but we do not authorise them to use that data for any other purpose. Those third parties may be located outside Hong Kong. Our policy is to select reputable service providers who have the technical competence and organisational measures to meet our needs and who have a good track record on data protection."

        "social_welfare_dept": "If you have been referred by an organisation (such as the Social Welfare Department or another organisation), we may need to discuss your case with them and accordingly there will be a disclosure or transfer of your personal data as part of this process."

        "crossroads_network": "Crossroads Network"

        "use_data_in_crossroads_network": 'Crossroads operates on a global basis. We have offices in Hong Kong and the United Kingdom. We refer to this as the "Crossroads Network". We may disclose, share and transfer your personal data within the Crossroads Network for the purposes set forth in this PICS. We require those in the Crossroads Network to adhere to the procedures of data security and confidentiality as set out in this PICS and our privacy policy.'

        "correction_of_data": "Access and Correction of Personal Data"
        "right_to_review_and_correct": "You have the right to review and correct personal data given to us. If the process of reviewing or correcting your personal data incurs any costs, we may charge you a reasonable fee to do this. Should you wish to review or correct personal data or if you have any questions regarding this PICS or our privacy policy please contact us at privacy@crossroads.org.hk"

        "last_updated": "The statement was last updated in August 2014."

      # The following are for the I18n example template and can be removed soon.
      "i18nexample.items.heading": "物品"
      "i18nexample.item.title.one": "一件物品"
      "i18nexample.item.title.other": "物品數量為 {{count}} 件"
      "i18nexample.item.new.title": "新物品"
      "i18nexample.i18n.pluralisation": "Pluralisation"

`export default I18nTranslationsZhTw`
