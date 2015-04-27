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
        "delivery_to" : "Delivery to: Tuen Mun"
        "crossroads_foundation" : "Crossroads Foundation"
        "crossroads_address1" : "2 Castle Peak Road, Tuen Mun"
        "crossroads_address2" : "Opposite Gold Coast Phase 1 Apartments Unload at Building 40"
        "map" : "地圖"
        "goodcity_job_summary" : "GoodCity Job Summary"

      "application":
        "app_menu" : "目錄"
        "my_offers" : "我的捐獻"

      "tour":
        "step1.title" : "1. 上傳圖片及說明"
        "quality_items" : "優質物資"
        "we_receive" : "我們收到的物資"
        "step2.title" : "2. 提交審查"
        "chat" : "We'll chat"
        "questions": "if we have questions"
        "step3.title" : "3. 安排運輸"
        "accepted_items" : "已接受的物資"
        "quick_easy" : "簡易又快捷"
        "step4.title" : "4. 幫助到有需要的人"
        "make_goodcity" : "How you're making a Good City."
        "faq" : "常見問題"

      "register":
        "hk_only" : "電話號碼 # （只限香港）"
        "given_name" : "名字"
        "family_name" : "姓氏"
        "districts" : "地區"
        "register" : "登記"
        "login" : "登入"
        "fill_all_fields": "Please fill in all the fields."
        "use_of_personal_info": "How we use your personal information"

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
          "closed" : "Closed"
          "received" : "Received"
          "van_booked" : "Van booked"
          "van_confirmed": "Van confirmed"
          "drop_off" : "You will deliver to Crossroads"
          "alternate" : "Crossroads collection booked"
          "awaiting_driver" : "Awaiting driver details."
          "driver_name" : "Driver name"
          "phone" : "Phone"
          "vehicle" : "Vehicle"
          "approved" :"Approved Items"
          "rejected" :"Rejected Items"
          "donations": "Donations"

      "offer":
        "messages": "Messages"
        "disable": "Disable"
        "details" : "Offer details"
        "no_items" : "You don't have any items in this offer yet. Please add your first item!",
        "confirm":
          "heading" : "確認"
          "notice": "Because needs change daily and <br> storage is limited we apologise that <br> we sometimes cannot accept <br> some items."
          "review": "Expert volunteers will start reviewing <br> your items immediately."
          "thank": "Thank You!"
          "next" : "OK! Next"
        "submit":
          "heading": "Sale of goods"
          "message": "Occasionally, the best way <br> for a donated item to help the poor <br> is for a charity to sell it. Is sale <br> of item(s) okay?"

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
          "heading" : "Offer Details"
          "submitted_status": "Your offer is awaiting review."
          "in_review_status": "Your offer is being reviewed by {{firstName}}."
          "is_collection": "Collection"
          "is_drop_off": "Drop-off"
          "is_gogovan_order": "Van ordered"
          "is_gogovan_confirm": "Van confirmed"
          "reviewed_message": "Review complete!"
          "please": "Please"
          "transport": "arrange transport"
          "offer_messages": "General Messages"
          "accepted": "Accepted"
          "not_needed": "Not needed"
          "closed_offer_message": "Offer closed. No items needed, Sorry."
          "offer_received": "Offer received"

        "transport_details" :
          "heading": "Transport Details"
          "no_items": "There are no items to transport<br> from this offer."
          "arrange_transport": "Arrange Transport"
          "wait_for_transport": "Transport arrangements can be made<br> once the review is complete."
          "accepted_items_count": "Items accepted so far ({{acceptedCount}})"
          "goods_received" : "Goods received on"
          "thank": "Thank You!"

        "display_joyride" :
          "camera": "Tap <i class='fa fa-camera'></i> to add more items"
          "delete": "Tap <i class='fa fa-trash'></i> to cancel your offer"
          "all_done_next": "When all done adding items, proceed to the next step"
          "first_item": "Select an item to view or modify it."

        "cancel":
          "title": "Cancel Offer"
          "confirm_ggv_cancel": "Once GoGoVan confirms the order is cancelled you will be able to proceed to cancel your offer."
          "cancel_offer": "Cancel Offer"

      "items":
        "add_item":
          "condition": "物資狀態如何？"
          "edit_image" : "修改圖片"
          "save" : "儲存資料"
          "description_placeholder" : "請在此填上物資的資料、數量、大小"

      "item":
        "item_details" : "Item details"
        "donor_description": "Description: {{donorDescription}}"
        "condition": "Condition: {{condition}}"
        "cancel" : "Cancel Item"
        "edit" : "Edit Item"
        "submitted_status": "This item is awaiting review."
        "in_review_status": "This item is being reviewed."
        "accepted_status": "This item has been accepted."
        "rejected_status": "This item has been rejected."
        "cancel_last_item_confirm": "Cancelling the last item will cancel the offer, do you wish to proceed?"

        "messages":
          "info_text1": "If we have questions when reviewing this item we will chat with you here."
          "info_text2": "If you want to add a comment to this item for our reviewers, type it below."

      # Components
      "upload-images":
        "angles" : "Got all the angles of this item?"
        "favourite" : "Favourite"
        "add_another" : "Add another image"
      "upload-image":
        "upload_error" : "There is an error with your image upload. Please try again after some time."

      # The following are for the I18n example template and can be removed soon.
      "i18nexample.items.heading": "Items"
      "i18nexample.item.title.one": "One item"
      "i18nexample.item.title.other": "{{count}} items"
      "i18nexample.item.new.title": "New item"
      "i18nexample.i18n.pluralisation": "Pluralisation"

`export default I18nTranslationsZhTw`
