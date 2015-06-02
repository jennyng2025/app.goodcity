module.exports = function(app) {
  var express = require('express');
  var gogovanOrdersRouter = express.Router();
  var image_id = "1407764294/default/test_image.jpg";
   var ggv_order_json = {
    "offer":
      { "id": "11", "state": "scheduled", "item_ids": ["1", "2"], "created_by_id" : "1" },
    "items": [
      { "id": "1", "donor_description": "example1", "offer_id": "11", "image_ids": ["1"], "state": "accepted" },
      { "id": "2", "donor_description": "example2", "offer_id": "11", "state": "accepted"  },

    ],
    "images": [
      { "id": "1", "favourite": "false", "cloudinary_id": image_id },
    ],
    "donor_conditions": [
      { "id": 1, "name": "New" },
      { "id": 4, "name": "Broken" },
      { "id": 2, "name": "Lightly Used" },
      { "id": 3, "name": "Heavily Used" }
    ],
    "user":
      { "id": "1", "first_name": "Kendrick", "last_name": "Kiehn", "permission_id": null, "mobile": "+85251111111" },

    "delivery": [
      { "id" : "1", "deliveryType" : "Gogovan", "offer_id" : "11", "gogovan_order_id": "1"}
    ],

    "gogovan_order": [
      { "id" : "1", "status" : "active"}
    ]
  };

  gogovanOrdersRouter.post('/calculate_price', function(req, res) {
    res.send({ "base" : 120 });
  });

  gogovanOrdersRouter.get("/driver_details", function(req, res) {
    res.send(ggv_order_json);
  });

  app.use('/api/v1/gogovan_orders', gogovanOrdersRouter);
};
