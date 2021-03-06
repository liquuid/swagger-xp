# vehicle_maintance_manager

VehicleMaintanceManager - JavaScript client for vehicle_maintance_manager
This is a sample vehicle maintance manager server.
This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.0.1
- Package version: 0.0.1
- Build package: io.swagger.codegen.languages.JavascriptClientCodegen

## Installation

### For [Node.js](https://nodejs.org/)

#### npm

To publish the library as a [npm](https://www.npmjs.com/),
please follow the procedure in ["Publishing npm packages"](https://docs.npmjs.com/getting-started/publishing-npm-packages).

Then install it via:

```shell
npm install vehicle_maintance_manager --save
```

##### Local development

To use the library locally without publishing to a remote npm registry, first install the dependencies by changing 
into the directory containing `package.json` (and this README). Let's call this `JAVASCRIPT_CLIENT_DIR`. Then run:

```shell
npm install
```

Next, [link](https://docs.npmjs.com/cli/link) it globally in npm with the following, also from `JAVASCRIPT_CLIENT_DIR`:

```shell
npm link
```

Finally, switch to the directory you want to use your vehicle_maintance_manager from, and run:

```shell
npm link /path/to/<JAVASCRIPT_CLIENT_DIR>
```

You should now be able to `require('vehicle_maintance_manager')` in javascript files from the directory you ran the last 
command above from.

#### git
#
If the library is hosted at a git repository, e.g.
https://github.com/YOUR_USERNAME/vehicle_maintance_manager
then install it via:

```shell
    npm install YOUR_USERNAME/vehicle_maintance_manager --save
```

### For browser

The library also works in the browser environment via npm and [browserify](http://browserify.org/). After following
the above steps with Node.js and installing browserify with `npm install -g browserify`,
perform the following (assuming *main.js* is your entry file, that's to say your javascript file where you actually 
use this library):

```shell
browserify main.js > bundle.js
```

Then include *bundle.js* in the HTML pages.

### Webpack Configuration

Using Webpack you may encounter the following error: "Module not found: Error:
Cannot resolve module", most certainly you should disable AMD loader. Add/merge
the following section to your webpack config:

```javascript
module: {
  rules: [
    {
      parser: {
        amd: false
      }
    }
  ]
}
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following JS code:

```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');

var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = "YOUR ACCESS TOKEN"

var api = new VehicleMaintanceManager.FineApi()

var vehicleId = 789; // {Number} ID of vehicle that needs to be updated

var amount = 3.4; // {Number} The total amount of fines


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
api.addFineToVehicleId(vehicleId, amount, callback);

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3000/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*VehicleMaintanceManager.FineApi* | [**addFineToVehicleId**](docs/FineApi.md#addFineToVehicleId) | **POST** /fine/vehicle/{vehicleId} | Add a fine to the vehicle
*VehicleMaintanceManager.FineApi* | [**deleteFine**](docs/FineApi.md#deleteFine) | **DELETE** /fine/{fineId} | Deletes a fine
*VehicleMaintanceManager.FineApi* | [**getFineById**](docs/FineApi.md#getFineById) | **GET** /fine/{fineId} | Find fine by ID
*VehicleMaintanceManager.GarageApi* | [**garageInventoryGet**](docs/GarageApi.md#garageInventoryGet) | **GET** /garage/inventory | Get all registered vehicles
*VehicleMaintanceManager.RefuelApi* | [**addRefuelToVehicleId**](docs/RefuelApi.md#addRefuelToVehicleId) | **POST** /refuel/vehicle/{vehicleId} | Add a refuel bill to the vehicle
*VehicleMaintanceManager.RefuelApi* | [**deleteRefuel**](docs/RefuelApi.md#deleteRefuel) | **DELETE** /refuel/{refuelId} | Deletes a refuel bill
*VehicleMaintanceManager.RefuelApi* | [**getRefuelById**](docs/RefuelApi.md#getRefuelById) | **GET** /refuel/{refuelId} | Find refuel bill by ID
*VehicleMaintanceManager.ReminderApi* | [**addReminderToVehicleId**](docs/ReminderApi.md#addReminderToVehicleId) | **POST** /reminder/vehicle/{vehicleId} | Add a reminder to the vehicle
*VehicleMaintanceManager.ReminderApi* | [**deleteReminder**](docs/ReminderApi.md#deleteReminder) | **DELETE** /reminder/{reminderId} | Deletes a reminder
*VehicleMaintanceManager.ReminderApi* | [**getReminderById**](docs/ReminderApi.md#getReminderById) | **GET** /reminder/{reminderId} | Find reminder by ID
*VehicleMaintanceManager.TripApi* | [**addTripToVehicleId**](docs/TripApi.md#addTripToVehicleId) | **POST** /trip/vehicle/{vehicleId} | Add a trip log to the vehicle
*VehicleMaintanceManager.TripApi* | [**deleteTrip**](docs/TripApi.md#deleteTrip) | **DELETE** /trip/{tripId} | Deletes a trip log
*VehicleMaintanceManager.TripApi* | [**getTripById**](docs/TripApi.md#getTripById) | **GET** /trip/{tripId} | Find trip by ID
*VehicleMaintanceManager.UserApi* | [**createUser**](docs/UserApi.md#createUser) | **POST** /user | Create user
*VehicleMaintanceManager.UserApi* | [**createUsersWithArrayInput**](docs/UserApi.md#createUsersWithArrayInput) | **POST** /user/createWithArray | Creates list of users with given input array
*VehicleMaintanceManager.UserApi* | [**createUsersWithListInput**](docs/UserApi.md#createUsersWithListInput) | **POST** /user/createWithList | Creates list of users with given input array
*VehicleMaintanceManager.UserApi* | [**deleteUser**](docs/UserApi.md#deleteUser) | **DELETE** /user/{username} | Delete user
*VehicleMaintanceManager.UserApi* | [**getUserByName**](docs/UserApi.md#getUserByName) | **GET** /user/{username} | Get user by user name
*VehicleMaintanceManager.UserApi* | [**loginUser**](docs/UserApi.md#loginUser) | **GET** /user/login | Logs user into the system
*VehicleMaintanceManager.UserApi* | [**logoutUser**](docs/UserApi.md#logoutUser) | **GET** /user/logout | Logs out current logged in user session
*VehicleMaintanceManager.UserApi* | [**updateUser**](docs/UserApi.md#updateUser) | **PUT** /user/{username} | Updated user
*VehicleMaintanceManager.VehicleApi* | [**addVehicle**](docs/VehicleApi.md#addVehicle) | **POST** /vehicle | Add a new vehicle
*VehicleMaintanceManager.VehicleApi* | [**deleteVehicle**](docs/VehicleApi.md#deleteVehicle) | **DELETE** /vehicle/{vehicleId} | Deletes a vehicle
*VehicleMaintanceManager.VehicleApi* | [**getVehicleById**](docs/VehicleApi.md#getVehicleById) | **GET** /vehicle/{vehicleId} | Find vehicle by ID
*VehicleMaintanceManager.VehicleApi* | [**updateVehicle**](docs/VehicleApi.md#updateVehicle) | **PUT** /vehicle | Update an existing vehicle
*VehicleMaintanceManager.VehicleApi* | [**updateVehicleWithForm**](docs/VehicleApi.md#updateVehicleWithForm) | **POST** /vehicle/{vehicleId} | Updates a vehicle in the garage with form data
*VehicleMaintanceManager.VehicleApi* | [**uploadFile**](docs/VehicleApi.md#uploadFile) | **POST** /vehicle/{vehicleId}/uploadImage | uploads an image


## Documentation for Models

 - [VehicleMaintanceManager.ApiResponse](docs/ApiResponse.md)
 - [VehicleMaintanceManager.Fine](docs/Fine.md)
 - [VehicleMaintanceManager.Garage](docs/Garage.md)
 - [VehicleMaintanceManager.Refuel](docs/Refuel.md)
 - [VehicleMaintanceManager.Reminder](docs/Reminder.md)
 - [VehicleMaintanceManager.Trip](docs/Trip.md)
 - [VehicleMaintanceManager.User](docs/User.md)
 - [VehicleMaintanceManager.Vehicle](docs/Vehicle.md)


## Documentation for Authorization


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

