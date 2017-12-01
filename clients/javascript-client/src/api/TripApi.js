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
    define(['ApiClient', 'model/Trip'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/Trip'));
  } else {
    // Browser globals (root is window)
    if (!root.VehicleMaintanceManager) {
      root.VehicleMaintanceManager = {};
    }
    root.VehicleMaintanceManager.TripApi = factory(root.VehicleMaintanceManager.ApiClient, root.VehicleMaintanceManager.Trip);
  }
}(this, function(ApiClient, Trip) {
  'use strict';

  /**
   * Trip service.
   * @module api/TripApi
   * @version 0.0.1
   */

  /**
   * Constructs a new TripApi. 
   * @alias module:api/TripApi
   * @class
   * @param {module:ApiClient} apiClient Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the addTripToVehicleId operation.
     * @callback module:api/TripApi~addTripToVehicleIdCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Add a trip log to the vehicle
     * 
     * @param {Number} vehicleId ID of vehicle that needs to be updated
     * @param {Number} quantity Fuel Quantity
     * @param {module:api/TripApi~addTripToVehicleIdCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.addTripToVehicleId = function(vehicleId, quantity, callback) {
      var postBody = null;

      // verify the required parameter 'vehicleId' is set
      if (vehicleId === undefined || vehicleId === null) {
        throw new Error("Missing the required parameter 'vehicleId' when calling addTripToVehicleId");
      }

      // verify the required parameter 'quantity' is set
      if (quantity === undefined || quantity === null) {
        throw new Error("Missing the required parameter 'quantity' when calling addTripToVehicleId");
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
        '/trip/vehicle/{vehicleId}', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteTrip operation.
     * @callback module:api/TripApi~deleteTripCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Deletes a trip log
     * 
     * @param {Number} tripId trip id to delete
     * @param {Object} opts Optional parameters
     * @param {String} opts.apiKey 
     * @param {module:api/TripApi~deleteTripCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.deleteTrip = function(tripId, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'tripId' is set
      if (tripId === undefined || tripId === null) {
        throw new Error("Missing the required parameter 'tripId' when calling deleteTrip");
      }


      var pathParams = {
        'tripId': tripId
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
        '/trip/{tripId}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getTripById operation.
     * @callback module:api/TripApi~getTripByIdCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Trip} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Find trip by ID
     * Returns a single trip log
     * @param {Number} tripId ID of trip to return
     * @param {module:api/TripApi~getTripByIdCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Trip}
     */
    this.getTripById = function(tripId, callback) {
      var postBody = null;

      // verify the required parameter 'tripId' is set
      if (tripId === undefined || tripId === null) {
        throw new Error("Missing the required parameter 'tripId' when calling getTripById");
      }


      var pathParams = {
        'tripId': tripId
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
      var returnType = Trip;

      return this.apiClient.callApi(
        '/trip/{tripId}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));