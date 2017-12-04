# swagger-java-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>io.swagger</groupId>
    <artifactId>swagger-java-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "io.swagger:swagger-java-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

* target/swagger-java-client-1.0.0.jar
* target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import io.swagger.client.*;
import io.swagger.client.auth.*;
import io.swagger.client.model.*;
import io.swagger.client.api.FineApi;

import java.io.File;
import java.util.*;

public class FineApiExample {

    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        
        // Configure OAuth2 access token for authorization: vehiclegarage_auth
        OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
        vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

        FineApi apiInstance = new FineApi();
        Long vehicleId = 789L; // Long | ID of vehicle that needs to be updated
        BigDecimal amount = new BigDecimal(); // BigDecimal | The total amount of fines
        try {
            apiInstance.addFineToVehicleId(vehicleId, amount);
        } catch (ApiException e) {
            System.err.println("Exception when calling FineApi#addFineToVehicleId");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3000/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*FineApi* | [**addFineToVehicleId**](docs/FineApi.md#addFineToVehicleId) | **POST** /fine/vehicle/{vehicleId} | Add a fine to the vehicle
*FineApi* | [**deleteFine**](docs/FineApi.md#deleteFine) | **DELETE** /fine/{fineId} | Deletes a fine
*FineApi* | [**getFineById**](docs/FineApi.md#getFineById) | **GET** /fine/{fineId} | Find fine by ID
*GarageApi* | [**garageInventoryGet**](docs/GarageApi.md#garageInventoryGet) | **GET** /garage/inventory | Get all registered vehicles
*RefuelApi* | [**addRefuelToVehicleId**](docs/RefuelApi.md#addRefuelToVehicleId) | **POST** /refuel/vehicle/{vehicleId} | Add a refuel bill to the vehicle
*RefuelApi* | [**deleteRefuel**](docs/RefuelApi.md#deleteRefuel) | **DELETE** /refuel/{refuelId} | Deletes a refuel bill
*RefuelApi* | [**getRefuelById**](docs/RefuelApi.md#getRefuelById) | **GET** /refuel/{refuelId} | Find refuel bill by ID
*ReminderApi* | [**addReminderToVehicleId**](docs/ReminderApi.md#addReminderToVehicleId) | **POST** /reminder/vehicle/{vehicleId} | Add a reminder to the vehicle
*ReminderApi* | [**deleteReminder**](docs/ReminderApi.md#deleteReminder) | **DELETE** /reminder/{reminderId} | Deletes a reminder
*ReminderApi* | [**getReminderById**](docs/ReminderApi.md#getReminderById) | **GET** /reminder/{reminderId} | Find reminder by ID
*TripApi* | [**addTripToVehicleId**](docs/TripApi.md#addTripToVehicleId) | **POST** /trip/vehicle/{vehicleId} | Add a trip log to the vehicle
*TripApi* | [**deleteTrip**](docs/TripApi.md#deleteTrip) | **DELETE** /trip/{tripId} | Deletes a trip log
*TripApi* | [**getTripById**](docs/TripApi.md#getTripById) | **GET** /trip/{tripId} | Find trip by ID
*UserApi* | [**createUser**](docs/UserApi.md#createUser) | **POST** /user | Create user
*UserApi* | [**createUsersWithArrayInput**](docs/UserApi.md#createUsersWithArrayInput) | **POST** /user/createWithArray | Creates list of users with given input array
*UserApi* | [**createUsersWithListInput**](docs/UserApi.md#createUsersWithListInput) | **POST** /user/createWithList | Creates list of users with given input array
*UserApi* | [**deleteUser**](docs/UserApi.md#deleteUser) | **DELETE** /user/{username} | Delete user
*UserApi* | [**getUserByName**](docs/UserApi.md#getUserByName) | **GET** /user/{username} | Get user by user name
*UserApi* | [**loginUser**](docs/UserApi.md#loginUser) | **GET** /user/login | Logs user into the system
*UserApi* | [**logoutUser**](docs/UserApi.md#logoutUser) | **GET** /user/logout | Logs out current logged in user session
*UserApi* | [**updateUser**](docs/UserApi.md#updateUser) | **PUT** /user/{username} | Updated user
*VehicleApi* | [**addVehicle**](docs/VehicleApi.md#addVehicle) | **POST** /vehicle | Add a new vehicle
*VehicleApi* | [**deleteVehicle**](docs/VehicleApi.md#deleteVehicle) | **DELETE** /vehicle/{vehicleId} | Deletes a vehicle
*VehicleApi* | [**getVehicleById**](docs/VehicleApi.md#getVehicleById) | **GET** /vehicle/{vehicleId} | Find vehicle by ID
*VehicleApi* | [**updateVehicle**](docs/VehicleApi.md#updateVehicle) | **PUT** /vehicle | Update an existing vehicle
*VehicleApi* | [**updateVehicleWithForm**](docs/VehicleApi.md#updateVehicleWithForm) | **POST** /vehicle/{vehicleId} | Updates a vehicle in the garage with form data
*VehicleApi* | [**uploadFile**](docs/VehicleApi.md#uploadFile) | **POST** /vehicle/{vehicleId}/uploadImage | uploads an image


## Documentation for Models

 - [Fine](docs/Fine.md)
 - [Garage](docs/Garage.md)
 - [ModelApiResponse](docs/ModelApiResponse.md)
 - [Refuel](docs/Refuel.md)
 - [Reminder](docs/Reminder.md)
 - [Trip](docs/Trip.md)
 - [User](docs/User.md)
 - [Vehicle](docs/Vehicle.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### api_key

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: HTTP header

### vehiclegarage_auth

- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: http://localhost:3000/oauth/dialog
- **Scopes**: 
  - write:vehicles: modify vehicles in your account
  - read:vehicles: read your vehicles
  - write:garage: modify garage in your account
  - read:garage: read your garage
  - write:reminders: modify reminders in your account
  - read:reminders: read your reminders
  - write:refuels: modify refuels in your account
  - read:refuels: read your refuels
  - write:trips: modify trips in your account
  - read:trips: read your trips
  - write:fines: modify fines in your account
  - read:fines: read your fines


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

apiteam@vmmapi

