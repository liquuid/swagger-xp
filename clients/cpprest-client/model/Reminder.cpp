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



#include "Reminder.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

Reminder::Reminder()
{
    m_Id = 0L;
    m_IdIsSet = false;
    m_VehicleId = 0L;
    m_Message = U("");
}

Reminder::~Reminder()
{
}

void Reminder::validate()
{
    // TODO: implement validation
}

web::json::value Reminder::toJson() const
{
    web::json::value val = web::json::value::object();

    if(m_IdIsSet)
    {
        val[U("id")] = ModelBase::toJson(m_Id);
    }
    val[U("vehicleId")] = ModelBase::toJson(m_VehicleId);
    val[U("message")] = ModelBase::toJson(m_Message);

    return val;
}

void Reminder::fromJson(web::json::value& val)
{
    if(val.has_field(U("id")))
    {
        setId(ModelBase::int64_tFromJson(val[U("id")]));
    }
    setVehicleId(ModelBase::int64_tFromJson(val[U("vehicleId")]));
    setMessage(ModelBase::stringFromJson(val[U("message")]));
}

void Reminder::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    multipart->add(ModelBase::toHttpContent(namePrefix + U("message"), m_Message));
}

void Reminder::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    setMessage(ModelBase::stringFromHttpContent(multipart->getContent(U("message"))));
}

int64_t Reminder::getId() const
{
    return m_Id;
}


void Reminder::setId(int64_t value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool Reminder::idIsSet() const
{
    return m_IdIsSet;
}

void Reminder::unsetId()
{
    m_IdIsSet = false;
}

int64_t Reminder::getVehicleId() const
{
    return m_VehicleId;
}


void Reminder::setVehicleId(int64_t value)
{
    m_VehicleId = value;
    
}
utility::string_t Reminder::getMessage() const
{
    return m_Message;
}


void Reminder::setMessage(utility::string_t value)
{
    m_Message = value;
    
}
}
}
}
}

