`import Ember from "ember"`
`import SharedTranslationsEn from "shared.goodcity/initializers/i18n-en"`

I18nTranslationsEn =
  name: "i18n-en"
  initialize: ->

    Ember.I18n.translation_store = Ember.I18n.translation_store || {}

    Ember.I18n.translation_store.en = Ember.$.extend SharedTranslationsEn,
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

      "plan_delivery":
        "title" : "Plan Transport"
        "fastest" :
          "title" : "Fastest"
          "info" : "Hire a vehicle with a few clicks.<br/>Recommended!"
          "cost" : "From ${{cost}}"
          "booking_button" : "Go to Booking"
          "learn_more": "Learn More"
          "gogovan_charges": "Gogovan Bookings"

        "alternate" :
          "title" : "Alternative"
          "info" : "Wait 14+ days until our team<br/>can collect from your area."
          "cost" : "Fee ${{cost}}"
          "booking_button" : "Go to Booking"
          "collection_charges": "Collection Charges"

        "crossroads" :
          "title" : "Deliver to Us"
          "info" : "Drop off at Tuen Mun during<br/>our hours of operation."
          "free" : "Free"
          "booking_button" : "Details & Booking"

      "collection_charges":
          "info": '''
            Crossroads' collection service is staffed partially by volunteers and partially by a social enterprise partner who is helping people get back into the workforce.

            We seek corporate sponsors to cover labour and vehicles (purchase / depreciation, insurance etc.) We ask donors to contribute the variable costs (fuel, parking, tolls, maintenance etc.) Our variable costs average $600 per collection day so, depending on how much of the truck your donation fills up, we ask for a contribution of between $75 and $600.

            If you have ways to handle the vehicle hire and labour yourself we are always very grateful and it could save you time. Our collection service is very popular so donors typically have to wait weeks for a booking. Sorry!

            If you or your company are interested in being a vehicle sponsor we'd love to hear from you! We could provide faster service and help more people if we had the sponsorship to expand our collection service. We'd love to display your corporate logo on our truck to show Hong Kong how you are making a difference. Please email {{email}}
            '''

      "gogovan_charges":
        "info": '''
          We partner with GoGoVan so you can hire a van or truck from within GoodCity!

          Quotes are live, based on your location and the type of vehicle your donation requires. Our reviewers have already indicated if you will need a van or a truck so your quotes will be based on that.

          GoGoVan quotes do not include labour, tunnel tolls or other charges. You need to agree these with the driver before you finalise your booking.

          Labour charges:<br/>In our experience, labour will typically cost about $100 per worker, per hour. You will often need two labourers to safely move large items.

          Independent drivers use GoGoVan to get transport bookings, they are not employed by GoGoVan. Different drivers will have different skills and expectations when asked to provide "removal services". They won't ordinarily come prepared to disassemble items for you or put loose items into boxes. You can do all this in advance to keep things fast and simple or you can chat to the driver about your needs in detail so he can quote for the work.

          Also, please be up-front and clear about any challenges associated with your location (such as stairs, parking, footpaths or other obstacles) so the driver can charge for labour accordingly. If you're in a tricky location, please note that some drivers may not be able to take the job.
          '''

      "gogovan":
        "porterage":
          "title" : "Porterage Charges"
          "driver" : "This needs to be negotiated with driver."
          "price_factors" : "The price will vary based on many factors, including"
          "item_count_size" : "How many items of what size"
          "obstacles" : "Stairs or obstacles"
          "park_van" : "Ability to park van unattended"
          "help" : "If you or a friend can help"
          "unwilling_driver" : "If you have large furniture and/or challenging needs you may find drivers are unwilling to take the job or require a significant price."
          "thanks" : "Got it, thank you!"

        "confirm_van" :
          "title" : "Confirm Van"
          "base_fee" : "Base fee"
          "porterage" : "Porterage"
          "speak_english" : "Speak English"
          "trolley" : "Borrow trolley(s)"
          "details" : "Details"
          "other" : "Other"
          "confirm_with_drivar" : "Please confirm total price with driver before loading."
          "name" : "Your Name"
          "phone" : "Phone"
          "book_delivery" : "Confirm & Book"
          "negotiate" : "Negotiate with driver"
          "no_porterage" : "Not Requested"

        "book_van" :
          "title" : "Book Van"
          "location" : "Location"
          "select_day" : "Preferred day/time"
          "crossroads_time" : "Limited to Crossroads' operating hours"
          "requirements" : "Extra Requirements"
          "speak_english" : "Speak English"
          "trolly_cost" : "Borrow trolley(s) + $20/piece"
          "porterage" : "Porterage/go up(negotiate with drivers)"
          "extra_time_charge" : "Extra Time(15 minutes waiting time is included for you to load the van. Extra time incurs a charge.)"
          "get_quote" : "Get Quote"

      "drop-off":
        "expect_delivery": "When can we expect your delivery?"
        "find_crossroads": "How to find crossroads"
        "open_new_tab": "will open in new tab"
        "message_map_link": "We will also message you a link to our map location so you have it handy when you need it!"
        "arrive_on_time": "Please arrive during our operating hours to ensure we can successfully receive your kind donation."
        "book_schedule": "Book Schedule"

      "crossroads_truck":
        "book_time": "Book Time"
        "show_more": "Show More"

      "offers":
        "index":
          "new_donation" : "Make a New Donation"
          "my_offers" : "My offers"
          "total_items" : "Total items: {{itemCount}}"
          "see_more" : "See more..."
          "unread_messages" : "Unread messages: {{unreadMessagesCount}}"
          "complete_offer" : "Complete this Offer"
          "in_review" : "In review"
          "awaiting_review" : "Awaiting review"
          "arrange_transport" : "Please arrange transport"
          "closed" : "Closed"
          "received" : "Received"
          "van_booked" : "Van booked"
          "drop_off" : "You will deliver to Crossroads"
          "alternate" : "Crossroads collection booked"
          "awaiting_driver" : "Awaiting driver details."
          "driver_name" : "Driver name"
          "phone" : "Phone"
          "vehicle" : "Vehicle"


      "offer":
        "disable": "Disable"
        "details" : "Offer details"
        "no_items" : "You don't have any items in this offer yet. Please add your first item!",
        "confirm":
          "heading" : "Confirm"
          "notice": "Because needs change daily and <br> storage is limited we apologise that <br> we sometimes cannot accept <br> some items."
          "review": "Expert volunteers will start reviewing <br> your items immediately."
          "thank": "Thank You!"
          "next" : "OK! Next"
        "submit":
          "heading": "Sale of goods"
          "message": "Occasionally, the best way <br> for a donated item to help the poor <br> is for a charity to sell it. Is sale <br> of item(s) okay?"

        "index":
          "item_count" : "Offer items ({{itemCount}})"
          "add_item" : "Add item"
          "add_items" : "Add items to offer"
          "confirm" : "All Done, Next"
          "review" : "Review Status"
          "cancel" : "Cancel Offer"
          "description" : "Description"
          "condition" : "Condition"

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
          "condition": "Condition?"
          "edit_image" : "Edit photos"
          "save" : "Save Details"
          "description_placeholder" : "What is it? How many items? What's the size?"

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

    # this is how we set default language
    Ember.I18n.translations = Ember.I18n.translation_store.en

`export default I18nTranslationsEn`
