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
    define(['ApiClient', 'model/Refuel'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/Refuel'));
  } else {
    // Browser globals (root is window)
    if (!root.VehicleMaintanceManager) {
      root.VehicleMaintanceManager = {};
    }
    root.VehicleMaintanceManager.RefuelApi = factory(root.VehicleMaintanceManager.ApiClient, root.VehicleMaintanceManager.Refuel);
  }
}(this, function(ApiClient, Refuel) {
  'use strict';

  /**
   * Refuel service.
   * @module api/RefuelApi
   * @version 0.0.1
   */

  /**
   * Constructs a new RefuelApi. 
   * @alias module:api/RefuelApi
   * @class
   * @param {module:ApiClient} apiClient Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the addRefuelToVehicleId operation.
     * @callback module:api/RefuelApi~addRefuelToVehicleIdCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Add a refuel bill to the vehicle
     * 
     * @param {Number} vehicleId ID of vehicle that needs to be updated
     * @param {Number} quantity Fuel Quantity
     * @param {module:api/RefuelApi~addRefuelToVehicleIdCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.addRefuelToVehicleId = function(vehicleId, quantity, callback) {
      var postBody = null;

      // verify the required parameter 'vehicleId' is set
      if (vehicleId === undefined || vehicleId === null) {
        throw new Error("Missing the required parameter 'vehicleId' when calling addRefuelToVehicleId");
      }

      // verify the required parameter 'quantity' is set
      if (quantity === undefined || quantity === null) {
        throw new Error("Missing the required parameter 'quantity' when calling addRefuelToVehicleId");
      }


      var pathParams = {
        'vehicleId': vehicleId
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'quantity': quantity
      };

      var authNames = ['vehiclegarage_auth'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/xml', 'application/json'];
      var returnType = null;

      return this.apiClient.callApi(
        '/refuel/vehicle/{vehicleId}', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteRefuel operation.
     * @callback module:api/RefuelApi~deleteRefuelCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Deletes a refuel bill
     * 
     * @param {Number} refuelId refuel id to delete
     * @param {Object} opts Optional parameters
     * @param {String} opts.apiKey 
     * @param {module:api/RefuelApi~deleteRefuelCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.deleteRefuel = function(refuelId, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'refuelId' is set
      if (refuelId === undefined || refuelId === null) {
        throw new Error("Missing the required parameter 'refuelId' when calling deleteRefuel");
      }


      var pathParams = {
        'refuelId': refuelId
      };
      var queryParams = {
      };
      var headerParams = {
        'api_key': opts['apiKey']
      };
      var formParams = {
      };

      var authNames = ['vehiclegarage_auth'];
      var contentTypes = [];
      var accepts = ['application/xml', 'application/json'];
      var returnType = null;

      return this.apiClient.callApi(
        '/refuel/{refuelId}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getRefuelById operation.
     * @callback module:api/RefuelApi~getRefuelByIdCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Refuel} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Find refuel bill by ID
     * Returns a single refuel bill
     * @param {Number} refuelId ID of refuel to return
     * @param {module:api/RefuelApi~getRefuelByIdCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Refuel}
     */
    this.getRefuelById = function(refuelId, callback) {
      var postBody = null;

      // verify the required parameter 'refuelId' is set
      if (refuelId === undefined || refuelId === null) {
        throw new Error("Missing the required parameter 'refuelId' when calling getRefuelById");
      }


      var pathParams = {
        'refuelId': refuelId
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['api_key'];
      var contentTypes = [];
      var accepts = ['application/xml', 'application/json'];
      var returnType = Refuel;

      return this.apiClient.callApi(
        '/refuel/{refuelId}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
