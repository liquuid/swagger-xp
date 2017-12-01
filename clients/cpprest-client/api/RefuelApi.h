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
 * RefuelApi.h
 *
 * 
 */

#ifndef RefuelApi_H_
#define RefuelApi_H_


#include "ApiClient.h"

#include "Refuel.h"
#include <cpprest/details/basic_types.h>

namespace io {
namespace swagger {
namespace client {
namespace api {

using namespace io::swagger::client::model;

class  RefuelApi
{
public:
    RefuelApi( std::shared_ptr<ApiClient> apiClient );
    virtual ~RefuelApi();
    /// <summary>
    /// Add a refuel bill to the vehicle
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="vehicleId">ID of vehicle that needs to be updated</param>/// <param name="quantity">Fuel Quantity</param>
    pplx::task<void> addRefuelToVehicleId(int64_t vehicleId, double quantity);
    /// <summary>
    /// Deletes a refuel bill
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="refuelId">refuel id to delete</param>/// <param name="apiKey"> (optional)</param>
    pplx::task<void> deleteRefuel(int64_t refuelId, utility::string_t apiKey);
    /// <summary>
    /// Find refuel bill by ID
    /// </summary>
    /// <remarks>
    /// Returns a single refuel bill
    /// </remarks>
    /// <param name="refuelId">ID of refuel to return</param>
    pplx::task<std::shared_ptr<Refuel>> getRefuelById(int64_t refuelId);

protected:
    std::shared_ptr<ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* RefuelApi_H_ */
