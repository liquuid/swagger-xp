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
 * Reminder.h
 *
 * 
 */

#ifndef Reminder_H_
#define Reminder_H_


#include "ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace io {
namespace swagger {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  Reminder
    : public ModelBase
{
public:
    Reminder();
    virtual ~Reminder();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Reminder members

    /// <summary>
    /// 
    /// </summary>
    int64_t getId() const;
    bool idIsSet() const;
    void unsetId();
    void setId(int64_t value);
    /// <summary>
    /// 
    /// </summary>
    int64_t getVehicleId() const;
        void setVehicleId(int64_t value);
    /// <summary>
    /// Message to Remind
    /// </summary>
    utility::string_t getMessage() const;
        void setMessage(utility::string_t value);

protected:
    int64_t m_Id;
    bool m_IdIsSet;
    int64_t m_VehicleId;
        utility::string_t m_Message;
    };

}
}
}
}

#endif /* Reminder_H_ */