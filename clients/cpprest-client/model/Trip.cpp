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



#include "Trip.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

Trip::Trip()
{
    m_Id = 0L;
    m_IdIsSet = false;
    m_VehicleId = 0L;
    m_Distance = 0.0;
}

Trip::~Trip()
{
}

void Trip::validate()
{
    // TODO: implement validation
}

web::json::value Trip::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_IdIsSet)
    {
        val[U("id")] = ModelBase::toJson(m_Id);
    }
    val[U("vehicleId")] = ModelBase::toJson(m_VehicleId);
    val[U("distance")] = ModelBase::toJson(m_Distance);

    return val;
}

void Trip::fromJson(web::json::value& val)
{
    if(val.has_field(U("id")))
    {
        setId(ModelBase::int64_tFromJson(val[U("id")]));
    }
    setVehicleId(ModelBase::int64_tFromJson(val[U("vehicleId")]));
    setDistance(ModelBase::doubleFromJson(val[U("distance")]));
}

void Trip::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix[namePrefix.size() - 1] != U('.'))
    {
        namePrefix += U(".");
    }

    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("id"), m_Id));
    }
    multipart->add(ModelBase::toHttpContent(namePrefix + U("vehicleId"), m_VehicleId));
    multipart->add(ModelBase::toHttpContent(namePrefix + U("distance"), m_Distance));
}

void Trip::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix[namePrefix.size() - 1] != U('.'))
    {
        namePrefix += U(".");
    }

    if(multipart->hasContent(U("id")))
    {
        setId(ModelBase::int64_tFromHttpContent(multipart->getContent(U("id"))));
    }
    setVehicleId(ModelBase::int64_tFromHttpContent(multipart->getContent(U("vehicleId"))));
    setDistance(ModelBase::doubleFromHttpContent(multipart->getContent(U("distance"))));
}

int64_t Trip::getId() const
{
    return m_Id;
}


void Trip::setId(int64_t value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool Trip::idIsSet() const
{
    return m_IdIsSet;
}

void Trip::unsetId()
{
    m_IdIsSet = false;
}

int64_t Trip::getVehicleId() const
{
    return m_VehicleId;
}


void Trip::setVehicleId(int64_t value)
{
    m_VehicleId = value;
    
}
double Trip::getDistance() const
{
    return m_Distance;
}


void Trip::setDistance(double value)
{
    m_Distance = value;
    
}
}
}
}
}

