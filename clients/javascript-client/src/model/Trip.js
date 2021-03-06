/**
 * Vehicle Maintance Manager
 * This is a sample vehicle maintance manager server.
 *
 * OpenAPI spec version: 0.0.1
 * Contact: apiteam@vmmapi
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.2.3
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.VehicleMaintanceManager) {
      root.VehicleMaintanceManager = {};
    }
    root.VehicleMaintanceManager.Trip = factory(root.VehicleMaintanceManager.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The Trip model module.
   * @module model/Trip
   * @version 0.0.1
   */

  /**
   * Constructs a new <code>Trip</code>.
   * @alias module:model/Trip
   * @class
   * @param vehicleId {Number} 
   * @param distance {Number} Traveled Distance
   */
  var exports = function(vehicleId, distance) {
    var _this = this;


    _this['vehicleId'] = vehicleId;
    _this['distance'] = distance;
  };

  /**
   * Constructs a <code>Trip</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/Trip} obj Optional instance to populate.
   * @return {module:model/Trip} The populated <code>Trip</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('id')) {
        obj['id'] = ApiClient.convertToType(data['id'], 'Number');
      }
      if (data.hasOwnProperty('vehicleId')) {
        obj['vehicleId'] = ApiClient.convertToType(data['vehicleId'], 'Number');
      }
      if (data.hasOwnProperty('distance')) {
        obj['distance'] = ApiClient.convertToType(data['distance'], 'Number');
      }
    }
    return obj;
  }

  /**
   * @member {Number} id
   */
  exports.prototype['id'] = undefined;
  /**
   * @member {Number} vehicleId
   */
  exports.prototype['vehicleId'] = undefined;
  /**
   * Traveled Distance
   * @member {Number} distance
   */
  exports.prototype['distance'] = undefined;



  return exports;
}));


