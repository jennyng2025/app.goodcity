`import Ember from "ember"`
`import SharedTranslationsZhTw from "shared.goodcity/initializers/i18n-zh-tw"`

I18nTranslationsZhTw =
  name: 'i18n-zh-tw'
  initialize: ->

    Ember.I18n.translation_store = Ember.I18n.translation_store || {}

    Ember.I18n.translation_store['zh-tw'] = Ember.$.extend SharedTranslationsZhTw,
      "tour":
        "step1.title" : "1. Photograph & describe"
        "quality_items" : "quality items."
        "we_receive" : "What we receive."
        "step2.title" : "2. Submit for live review"
        "chat_questions" : "We'll chat if we have questions"
        "step3.title" : "3. Arrange transport"
        "accepted_items" : "for accepted items."
        "quick_easy" : "Quick & easy"
        "step4.title" : "4. People are helped"
        "make_goodcity" : "How you're making a Good City."
        "faq" : "Frequently Asked Questions"

      "register":
        "hk_only" : "Mobile phone # (Hong Kong only)"
        "given_name" : "Given name"
        "family_name" : "Family name"
        "districts" : "Districts"
        "register" : "Register"
        "login" : "Login"

      "offers":
        "index":
          "new_donation" : "做一個新的捐贈"
          "my_offers" : "我的供應信息"
          "total_items" : "總筆數: {{itemCount}}"
          "see_more" : "查看更多..."
          "unread_messages" : "Unread messages: {{unreadMessagesCount}}"
          "complete_offer" : "Complete this Offer"
          "in_review" : "In review"
          "awaiting_review" : "Awaiting review"
          "arrange_transport" : "Please arrange transport"
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
        "details" : "优惠详情"
        "no_items" : "您不必在此優惠的任何物品呢。請添加您的第一個項目!"
        "confirm":
          "heading" : "確認"
          "notice": "因為需要更改每日和<br>存儲是有限我們 赔礼 这<br>我們有時不能接受<br>有些項目."
          "review": "專家志願者將開始回顧的你的品目隨即."
          "thank": "謝謝!"
          "next" : "OK! Next"
        "submit":
          "heading": "出售的商品"
          "message": "有時候，對於捐贈項目的最佳途，以幫助窮人是一個慈善機構把它賣掉。是出售物品的好嗎"
        "index":
          "item_count" : "獻 品目 ({{itemCount}})"
          "add_item" : "加項"
          "add_items" : "加品目以獻"
          "confirm" : "全部完成, 下一頁"
          "review" : "複查狀態"
          "cancel" : "取消獻"
          "description" : "說明"
          "condition" : "條件"

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

        "transport_details" :
          "heading": "Transport Details"
          "no_items": "There are no items to transport<br> from this offer."
          "arrange_transport": "Arrange Transport"
          "wait_for_transport": "Transport arrangements can be made<br> once the review is complete."
          "accepted_items_count": "Items accepted so far ({{acceptedCount}})"

        "display_joyride" :
          "camera": ""
          "delete": ""
          "all_done_next": ""
          "first_item": ""

        "cancel":
          "title": "Cancel Offer"
          "confirm_ggv_cancel": "Once GoGoVan confirms the order is cancelled you will be able to proceed to cancel your offer."
          "cancel_offer": "Cancel Offer"

      "items":
        "add_item":
          "condition": "條件?"
          "edit_image" : "編輯形像"
          "save" : "Save Details"
          "description_placeholder" : "What is it? How many items? What's the size?"

      "item":
        "item_details" : "項詳情:"
        "donor_description": "說明: {{donorDescription}}"
        "condition": "條件: {{condition}}"
        "cancel" : "Cancel Item"
        "edit" : "Edit Item"
        "submitted_status": "This item is awaiting review."
        "in_review_status": "This item is being reviewed."
        "accepted_status": "This item has been accepted."
        "rejected_status": "This item has been rejected."

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
      'i18nexample.items.heading': '項'
      'i18nexample.item.title.one': '一個項目'
      'i18nexample.item.title.other': '{{count}} 項'
      'i18nexample.item.new.title': '新項目'
      'i18nexample.i18n.pluralisation': '的複數'

`export default I18nTranslationsZhTw`
