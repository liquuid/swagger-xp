/**
 * Vehicle Maintance Manager
 * This is a sample vehicle maintance manager server.
 *
 * OpenAPI spec version: 0.0.1
 * Contact: apiteam@vmmapi
 *
 * NOTE: This class is auto generated by the swagger code generator 2.2.3.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * VehicleApi.h
 *
 * 
 */

#ifndef VehicleApi_H_
#define VehicleApi_H_


#include "ApiClient.h"

#include "ApiResponse.h"
#include "HttpContent.h"
#include "Vehicle.h"
#include <cpprest/details/basic_types.h>

namespace io {
namespace swagger {
namespace client {
namespace api {

using namespace io::swagger::client::model;

class  VehicleApi
{
public:
    VehicleApi( std::shared_ptr<ApiClient> apiClient );
    virtual ~VehicleApi();
    /// <summary>
    /// Add a new vehicle
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="body">Vehicle object that needs to be added to the garage</param>
    pplx::task<void> addVehicle(std::shared_ptr<Vehicle> body);
    /// <summary>
    /// Deletes a vehicle
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="vehicleId">Vehicle id to delete</param>/// <param name="apiKey"> (optional)</param>
    pplx::task<void> deleteVehicle(int64_t vehicleId, utility::string_t apiKey);
    /// <summary>
    /// Find vehicle by ID
    /// </summary>
    /// <remarks>
    /// Returns a single vehicle
    /// </remarks>
    /// <param name="vehicleId">ID of vehicle to return</param>
    pplx::task<std::shared_ptr<Vehicle>> getVehicleById(int64_t vehicleId);
    /// <summary>
    /// Update an existing vehicle
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="body">Vehicle object that needs to be added to the garage</param>
    pplx::task<void> updateVehicle(std::shared_ptr<Vehicle> body);
    /// <summary>
    /// Updates a vehicle in the garage with form data
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="vehicleId">ID of vehicle that needs to be updated</param>/// <param name="name">Updated name of the vehicle (optional)</param>/// <param name="vehicletype">Updated type of the vehicle (optional)</param>
    pplx::task<void> updateVehicleWithForm(int64_t vehicleId, utility::string_t name, utility::string_t vehicletype);
    /// <summary>
    /// uploads an image
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="vehicleId">ID of vehicle to update</param>/// <param name="additionalMetadata">Additional data to pass to server (optional)</param>/// <param name="file">file to upload (optional)</param>
    pplx::task<std::shared_ptr<ApiResponse>> uploadFile(int64_t vehicleId, utility::string_t additionalMetadata, std::shared_ptr<HttpContent> file);

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* VehicleApi_H_ */

