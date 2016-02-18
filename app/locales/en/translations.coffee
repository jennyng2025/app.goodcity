`import Ember from "ember"`
`import SharedTranslationsEn from "shared-goodcity/locales/en/translations"`

I18nTranslationsEn =
  Ember.$.extend true, SharedTranslationsEn,
    "socket_offline_error": "Attempting to connect..."

    "menu":
      "support_gc": "Support GoodCity!"
      "faq": "Frequently Asked Questions"
      "feedback": "Feedback & Support"
      "rate": "Rate on iTunes"
      "terms": "Terms of Use"
      "policy": "Privacy Policy"
      "version_short": "ver."

    "application":
      "app_menu" : "App Menu"
      "my_offers" : "My Offers"

    "support":
      "thanks": "Thanks for the donation."
      "error": "There is some error with payment service. Please try again after some time."

    "tour":
      "step1.title" : "1. Photograph & describe"
      "quality_items" : "quality items."
      "we_receive" : "What we receive."
      "step2.title" : "2. Submit for live review"
      "chat" : "We'll chat"
      "questions": "if we have questions"
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
      "fill_all_fields": "Please fill in all the fields."
      "use_of_personal_info": "How we use your personal information"
      "phone_number": "Phone Number"
      "john": "John"
      "doe": "Doe"
      "agree_toc": "By using GoodCity.HK you are agreeing to be bound by these"
      "terms": "terms of use"

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
        "receiving": "Receiving"
        "van_booked" : "Van booked"
        "van_confirmed": "Van confirmed"
        "picked_up": "Picked up"
        "drop_off" : "You will deliver to Crossroads"
        "alternate" : "Crossroads collection booked"
        "awaiting_driver" : "Awaiting driver details."
        "driver_name" : "Driver name"
        "phone" : "Phone"
        "vehicle" : "Vehicle"
        "approved" :"Approved Items"
        "rejected" :"Rejected Items"
        "donations": "Donations"
        "inactive": "Inactive: you can re-submit this offer."
        "add_item": "Add Item"
        "new_offer": "New Offer"
        "new_offer_message": "You have an offer still in progress. Are you starting a new offer which will be transported separately or should we add this item to your existing offer?"

    "offer":
      "camera": "Camera"
      "delete": "Delete"
      "messages": "Messages"
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
      "notifications":
        "title": "Notifications"
        "alert_updates": "Would you like to be alerted when we have questions or status updates for your offer?"
        "no": "No Thanks"
        "notify": "Notify Me"


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
        "driver_completed": "Driver completed"
        "reviewed_message": "Review complete!"
        "please": "Please"
        "transport": "arrange transport"
        "offer_messages": "General Messages"
        "accepted": "Accepted"
        "not_needed": "Not needed"
        "closed_offer_message": "Offer closed. No items needed, Sorry."
        "offer_received": "Offer received"
        "offer_start_receiving": "{{firstName}} {{lastName}} began receiving items"
        "crossroads_booking_alert" : "We review extra items as quickly as possible. Our collection team can generally only take items that have been reviewed and accepted first.<br><br>If large additional items are accepted it may require us to cancel and re-book your collection."
        "ggv_booking_alert": "We review extra items as quickly as possible. Please don't send items unless we have accepted them.<br><br>If you need to modify your transport booking to accommodate additional items, use the transport tab."

      "transport_details" :
        "heading": "Transport Details"
        "no_items": "There are no items to transport<br> from this offer."
        "arrange_transport": "Arrange Transport"
        "wait_for_transport": "Transport arrangements can be made<br> once the review is complete."
        "accepted_items_count": "Items accepted so far ({{acceptedCount}})"
        "goods_received" : "Goods received on"
        "thank": "Thank You!"
        "receiving": "Your offer is currently being received."

      "display_joyride" :
        "camera": "Tap <i class='fa fa-camera'></i> to add more items"
        "delete": "Tap <i class='fa fa-trash'></i> to cancel your offer"
        "all_done_next": "When all done adding items, proceed to the next step"
        "first_item": "Select an item to view or modify it."

      "cancel":
        "title": "Cancel Offer"
        "confirm_ggv_cancel": "Once GoGoVan confirms the order is cancelled you will be able to proceed to cancel your offer."
        "cancel_offer": "Cancel Offer"

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
    "i18nexample.items.heading": "Items"
    "i18nexample.item.title.one": "One item"
    "i18nexample.item.title.other": "{{count}} items"
    "i18nexample.item.new.title": "New item"
    "i18nexample.i18n.pluralisation": "Pluralisation"

`export default I18nTranslationsEn`
