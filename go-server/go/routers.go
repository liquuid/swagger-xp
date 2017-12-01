package api

import (
	"net/http"
	"fmt"
	"github.com/gorilla/mux"
)

type Route struct {
	Name        string
	Method      string
	Pattern     string
	HandlerFunc http.HandlerFunc
}

type Routes []Route

func NewRouter() *mux.Router {
	router := mux.NewRouter().StrictSlash(true)
	for _, route := range routes {
		var handler http.Handler
		handler = route.HandlerFunc
		handler = Logger(handler, route.Name)

		router.
			Methods(route.Method).
			Path(route.Pattern).
			Name(route.Name).
			Handler(handler)
	}

	return router
}

func Index(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
}

var routes = Routes{
	Route{
		"Index",
		"GET",
		"/v2/",
		Index,
	},

	Route{
		"AddFineToVehicleId",
		"POST",
		"/v2/fine/vehicle/{vehicleId}",
		AddFineToVehicleId,
	},

	Route{
		"DeleteFine",
		"DELETE",
		"/v2/fine/{fineId}",
		DeleteFine,
	},

	Route{
		"GetFineById",
		"GET",
		"/v2/fine/{fineId}",
		GetFineById,
	},

	Route{
		"GarageInventoryGet",
		"GET",
		"/v2/garage/inventory",
		GarageInventoryGet,
	},

	Route{
		"AddRefuelToVehicleId",
		"POST",
		"/v2/refuel/vehicle/{vehicleId}",
		AddRefuelToVehicleId,
	},

	Route{
		"DeleteRefuel",
		"DELETE",
		"/v2/refuel/{refuelId}",
		DeleteRefuel,
	},

	Route{
		"GetRefuelById",
		"GET",
		"/v2/refuel/{refuelId}",
		GetRefuelById,
	},

	Route{
		"AddReminderToVehicleId",
		"POST",
		"/v2/reminder/vehicle/{vehicleId}",
		AddReminderToVehicleId,
	},

	Route{
		"DeleteReminder",
		"DELETE",
		"/v2/reminder/{reminderId}",
		DeleteReminder,
	},

	Route{
		"GetReminderById",
		"GET",
		"/v2/reminder/{reminderId}",
		GetReminderById,
	},

	Route{
		"AddTripToVehicleId",
		"POST",
		"/v2/trip/vehicle/{vehicleId}",
		AddTripToVehicleId,
	},

	Route{
		"DeleteTrip",
		"DELETE",
		"/v2/trip/{tripId}",
		DeleteTrip,
	},

	Route{
		"GetTripById",
		"GET",
		"/v2/trip/{tripId}",
		GetTripById,
	},

	Route{
		"CreateUser",
		"POST",
		"/v2/user",
		CreateUser,
	},

	Route{
		"CreateUsersWithArrayInput",
		"POST",
		"/v2/user/createWithArray",
		CreateUsersWithArrayInput,
	},

	Route{
		"CreateUsersWithListInput",
		"POST",
		"/v2/user/createWithList",
		CreateUsersWithListInput,
	},

	Route{
		"DeleteUser",
		"DELETE",
		"/v2/user/{username}",
		DeleteUser,
	},

	Route{
		"GetUserByName",
		"GET",
		"/v2/user/{username}",
		GetUserByName,
	},

	Route{
		"LoginUser",
		"GET",
		"/v2/user/login",
		LoginUser,
	},

	Route{
		"LogoutUser",
		"GET",
		"/v2/user/logout",
		LogoutUser,
	},

	Route{
		"UpdateUser",
		"PUT",
		"/v2/user/{username}",
		UpdateUser,
	},

	Route{
		"AddVehicle",
		"POST",
		"/v2/vehicle",
		AddVehicle,
	},

	Route{
		"DeleteVehicle",
		"DELETE",
		"/v2/vehicle/{vehicleId}",
		DeleteVehicle,
	},

	Route{
		"GetVehicleById",
		"GET",
		"/v2/vehicle/{vehicleId}",
		GetVehicleById,
	},

	Route{
		"UpdateVehicle",
		"PUT",
		"/v2/vehicle",
		UpdateVehicle,
	},

	Route{
		"UpdateVehicleWithForm",
		"POST",
		"/v2/vehicle/{vehicleId}",
		UpdateVehicleWithForm,
	},

	Route{
		"UploadFile",
		"POST",
		"/v2/vehicle/{vehicleId}/uploadImage",
		UploadFile,
	},

}
