#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! swagger-codegen (https://github.com/swagger-api/swagger-codegen)
# ! FROM SWAGGER SPECIFICATION IN JSON.
# !
# ! Generated on: 2017-12-04T19:22:47.881Z
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for Vehicle Maintance Manager.
#
# LICENSE:
# http://www.apache.org/licenses/LICENSE-2.0.html
#
# CONTACT:
# apiteam@vmmapi
#
# MORE INFORMATION:
# http://swagger.io
#

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=`basename "$0"`

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# This array stores the minimum number of required occurences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurences
operation_parameters_minimum_occurences["addFineToVehicleId:::vehicleId"]=1
operation_parameters_minimum_occurences["addFineToVehicleId:::amount"]=1
operation_parameters_minimum_occurences["deleteFine:::fineId"]=1
operation_parameters_minimum_occurences["deleteFine:::api_key"]=0
operation_parameters_minimum_occurences["getFineById:::fineId"]=1
operation_parameters_minimum_occurences["addRefuelToVehicleId:::vehicleId"]=1
operation_parameters_minimum_occurences["addRefuelToVehicleId:::quantity"]=1
operation_parameters_minimum_occurences["deleteRefuel:::refuelId"]=1
operation_parameters_minimum_occurences["deleteRefuel:::api_key"]=0
operation_parameters_minimum_occurences["getRefuelById:::refuelId"]=1
operation_parameters_minimum_occurences["addReminderToVehicleId:::vehicleId"]=1
operation_parameters_minimum_occurences["addReminderToVehicleId:::message"]=1
operation_parameters_minimum_occurences["deleteReminder:::reminderId"]=1
operation_parameters_minimum_occurences["deleteReminder:::api_key"]=0
operation_parameters_minimum_occurences["getReminderById:::reminderId"]=1
operation_parameters_minimum_occurences["addTripToVehicleId:::vehicleId"]=1
operation_parameters_minimum_occurences["addTripToVehicleId:::quantity"]=1
operation_parameters_minimum_occurences["deleteTrip:::tripId"]=1
operation_parameters_minimum_occurences["deleteTrip:::api_key"]=0
operation_parameters_minimum_occurences["getTripById:::tripId"]=1
operation_parameters_minimum_occurences["createUser:::body"]=1
operation_parameters_minimum_occurences["createUsersWithArrayInput:::body"]=1
operation_parameters_minimum_occurences["createUsersWithListInput:::body"]=1
operation_parameters_minimum_occurences["deleteUser:::username"]=1
operation_parameters_minimum_occurences["getUserByName:::username"]=1
operation_parameters_minimum_occurences["loginUser:::username"]=1
operation_parameters_minimum_occurences["loginUser:::password"]=1
operation_parameters_minimum_occurences["updateUser:::username"]=1
operation_parameters_minimum_occurences["updateUser:::body"]=1
operation_parameters_minimum_occurences["addVehicle:::body"]=1
operation_parameters_minimum_occurences["deleteVehicle:::vehicleId"]=1
operation_parameters_minimum_occurences["deleteVehicle:::api_key"]=0
operation_parameters_minimum_occurences["getVehicleById:::vehicleId"]=1
operation_parameters_minimum_occurences["updateVehicle:::body"]=1
operation_parameters_minimum_occurences["updateVehicleWithForm:::vehicleId"]=1
operation_parameters_minimum_occurences["updateVehicleWithForm:::name"]=0
operation_parameters_minimum_occurences["updateVehicleWithForm:::vehicletype"]=0
operation_parameters_minimum_occurences["uploadFile:::vehicleId"]=1
operation_parameters_minimum_occurences["uploadFile:::additionalMetadata"]=0
operation_parameters_minimum_occurences["uploadFile:::file"]=0

##
# This array stores the maximum number of allowed occurences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurences
operation_parameters_maximum_occurences["addFineToVehicleId:::vehicleId"]=0
operation_parameters_maximum_occurences["addFineToVehicleId:::amount"]=0
operation_parameters_maximum_occurences["deleteFine:::fineId"]=0
operation_parameters_maximum_occurences["deleteFine:::api_key"]=0
operation_parameters_maximum_occurences["getFineById:::fineId"]=0
operation_parameters_maximum_occurences["addRefuelToVehicleId:::vehicleId"]=0
operation_parameters_maximum_occurences["addRefuelToVehicleId:::quantity"]=0
operation_parameters_maximum_occurences["deleteRefuel:::refuelId"]=0
operation_parameters_maximum_occurences["deleteRefuel:::api_key"]=0
operation_parameters_maximum_occurences["getRefuelById:::refuelId"]=0
operation_parameters_maximum_occurences["addReminderToVehicleId:::vehicleId"]=0
operation_parameters_maximum_occurences["addReminderToVehicleId:::message"]=0
operation_parameters_maximum_occurences["deleteReminder:::reminderId"]=0
operation_parameters_maximum_occurences["deleteReminder:::api_key"]=0
operation_parameters_maximum_occurences["getReminderById:::reminderId"]=0
operation_parameters_maximum_occurences["addTripToVehicleId:::vehicleId"]=0
operation_parameters_maximum_occurences["addTripToVehicleId:::quantity"]=0
operation_parameters_maximum_occurences["deleteTrip:::tripId"]=0
operation_parameters_maximum_occurences["deleteTrip:::api_key"]=0
operation_parameters_maximum_occurences["getTripById:::tripId"]=0
operation_parameters_maximum_occurences["createUser:::body"]=0
operation_parameters_maximum_occurences["createUsersWithArrayInput:::body"]=0
operation_parameters_maximum_occurences["createUsersWithListInput:::body"]=0
operation_parameters_maximum_occurences["deleteUser:::username"]=0
operation_parameters_maximum_occurences["getUserByName:::username"]=0
operation_parameters_maximum_occurences["loginUser:::username"]=0
operation_parameters_maximum_occurences["loginUser:::password"]=0
operation_parameters_maximum_occurences["updateUser:::username"]=0
operation_parameters_maximum_occurences["updateUser:::body"]=0
operation_parameters_maximum_occurences["addVehicle:::body"]=0
operation_parameters_maximum_occurences["deleteVehicle:::vehicleId"]=0
operation_parameters_maximum_occurences["deleteVehicle:::api_key"]=0
operation_parameters_maximum_occurences["getVehicleById:::vehicleId"]=0
operation_parameters_maximum_occurences["updateVehicle:::body"]=0
operation_parameters_maximum_occurences["updateVehicleWithForm:::vehicleId"]=0
operation_parameters_maximum_occurences["updateVehicleWithForm:::name"]=0
operation_parameters_maximum_occurences["updateVehicleWithForm:::vehicletype"]=0
operation_parameters_maximum_occurences["uploadFile:::vehicleId"]=0
operation_parameters_maximum_occurences["uploadFile:::additionalMetadata"]=0
operation_parameters_maximum_occurences["uploadFile:::file"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["addFineToVehicleId:::vehicleId"]=""
operation_parameters_collection_type["addFineToVehicleId:::amount"]=""
operation_parameters_collection_type["deleteFine:::fineId"]=""
operation_parameters_collection_type["deleteFine:::api_key"]=""
operation_parameters_collection_type["getFineById:::fineId"]=""
operation_parameters_collection_type["addRefuelToVehicleId:::vehicleId"]=""
operation_parameters_collection_type["addRefuelToVehicleId:::quantity"]=""
operation_parameters_collection_type["deleteRefuel:::refuelId"]=""
operation_parameters_collection_type["deleteRefuel:::api_key"]=""
operation_parameters_collection_type["getRefuelById:::refuelId"]=""
operation_parameters_collection_type["addReminderToVehicleId:::vehicleId"]=""
operation_parameters_collection_type["addReminderToVehicleId:::message"]=""
operation_parameters_collection_type["deleteReminder:::reminderId"]=""
operation_parameters_collection_type["deleteReminder:::api_key"]=""
operation_parameters_collection_type["getReminderById:::reminderId"]=""
operation_parameters_collection_type["addTripToVehicleId:::vehicleId"]=""
operation_parameters_collection_type["addTripToVehicleId:::quantity"]=""
operation_parameters_collection_type["deleteTrip:::tripId"]=""
operation_parameters_collection_type["deleteTrip:::api_key"]=""
operation_parameters_collection_type["getTripById:::tripId"]=""
operation_parameters_collection_type["createUser:::body"]=""
operation_parameters_collection_type["createUsersWithArrayInput:::body"]=
operation_parameters_collection_type["createUsersWithListInput:::body"]=
operation_parameters_collection_type["deleteUser:::username"]=""
operation_parameters_collection_type["getUserByName:::username"]=""
operation_parameters_collection_type["loginUser:::username"]=""
operation_parameters_collection_type["loginUser:::password"]=""
operation_parameters_collection_type["updateUser:::username"]=""
operation_parameters_collection_type["updateUser:::body"]=""
operation_parameters_collection_type["addVehicle:::body"]=""
operation_parameters_collection_type["deleteVehicle:::vehicleId"]=""
operation_parameters_collection_type["deleteVehicle:::api_key"]=""
operation_parameters_collection_type["getVehicleById:::vehicleId"]=""
operation_parameters_collection_type["updateVehicle:::body"]=""
operation_parameters_collection_type["updateVehicleWithForm:::vehicleId"]=""
operation_parameters_collection_type["updateVehicleWithForm:::name"]=""
operation_parameters_collection_type["updateVehicleWithForm:::vehicletype"]=""
operation_parameters_collection_type["uploadFile:::vehicleId"]=""
operation_parameters_collection_type["uploadFile:::additionalMetadata"]=""
operation_parameters_collection_type["uploadFile:::file"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""

##
# The user API key
apikey_auth_credential=""

##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/?/%3F/g' <<<$raw_url);

    echo $value
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type=$1

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo ${mime_type_abbreviations[$mime_type]}
    else
        echo $1
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""
    local api_key_header=""
    local api_key_header_in_cli=""
    api_key_header="api_key"

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    #
    # If the api_key was not provided in the header, try one from the
    # environment variable
    #
    if [[ -z $api_key_header_in_cli && -n $apikey_auth_credential ]]; then
        headers_curl+="-H \"${api_key_header}: ${apikey_auth_credential}\""
    fi
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add convertion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local body_parameter_count=${#body_parameters[@]}
    local count=0
    for key in "${!body_parameters[@]}"; do
        body_json+="\"${key}\": ${body_parameters[${key}]}"
        if [[ $count -lt $body_parameter_count-1 ]]; then
            body_json+=", "
        fi
        ((count+=1))
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Check if provided parameters match specification requirements
#
##############################################################################
validate_request_parameters() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        regexp="(.*)(\{$pparam\})(.*)"
        if [[ $path_template =~ $regexp ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    # Now append query parameters - if any
    if [[ ${#query_params[@]} -gt 0 ]]; then
        path_template+="?"
    fi

    local query_parameter_count=${#query_params[@]}
    local count=0
    for qparam in "${query_params[@]}"; do
        # Get the array of parameter values
        local parameter_values=($(echo "${operation_parameters[$qparam]}" | sed -e 's/'":::"'/\n/g' | while read line; do echo $line | sed 's/[\t ]/'":::"'/g'; done))

        #
        # Check if the number of provided values is not less than minimum
        # required
        #
        if [[ "$force" = false ]]; then
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurences["${operation}:::${qparam}"]} ]]; then
                echo "Error: Too few values provided for '${qparam}' parameter"
                exit 1
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} ]]; then
                if [[ "$force" = false ]]; then
                    echo "Error: Too many values provided for '${qparam}' parameter"
                    exit 1
                fi
            fi
        fi

        if [[ "${operation_parameters_collection_type[${operation}:::${qparam}]}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qparam}=${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+="&"
                fi
                ((vcount+=1))
            done
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qparam}=${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+="&"
                fi
                ((vcount+=1))
            done
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "csv" ]]; then
            path_template+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+=","
                fi
                ((vcount+=1))
            done
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "ssv" ]]; then
            path_template+="${qparam}="
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+=" "
                fi
                ((vcount+=1))
            done
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "tsv" ]]; then
            path_template+="${qparam}="
            for qvalue in "${parameter_values[@]}"; do
                path_template+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    path_template+="\t"
                fi
                ((vcount+=1))
            done
        else
            echo -e ""
            echo -e "Error: Unsupported collection format "
            echo -e ""
            exit 1
        fi


        if [[ $count -lt $query_parameter_count-1 ]]; then
            path_template+="&"
        fi
        ((count+=1))
    done

}



##############################################################################
#
# Build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        regexp="(.*)(\{$pparam\})(.*)"
        if [[ $path_template =~ $regexp ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    local query_parameter_count=${#query_params[@]}
    local count=0
    for qparam in "${query_params[@]}"; do
        # Get the array of parameter values
        local parameter_values=($(echo "${operation_parameters[$qparam]}" | sed -e 's/'":::"'/\n/g' | while read line; do echo $line | sed 's/[\t ]/'":::"'/g'; done))
        local parameter_value=""

        #
        # Check if the number of provided values is not less than minimum
        # required
        #
        if [[ "$force" = false ]]; then
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurences["${operation}:::${qparam}"]} ]]; then
                echo "Error: Too few values provided for '${qparam}' parameter"
                exit 1
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurences["${operation}:::${qparam}"]} ]]; then
                if [[ "$force" = false ]]; then
                    echo "Error: Too many values provided for '${qparam}' parameter"
                    exit 1
                fi
            fi
        fi

        #
        # Append parameters without specific cardinality
        #
        if [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qparam}=${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+="&"
                fi
                ((vcount+=1))
            done
        #
        # Append parameters specified as 'mutli' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qparam}=${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+="&"
                fi
                ((vcount+=1))
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+=","
                fi
                ((vcount+=1))
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+=" "
                fi
                ((vcount+=1))
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${operation_parameters_collection_type["${operation}:::${qparam}"]}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                parameter_value+="${qvalue}"

                if [[ $vcount -lt ${#parameter_values[@]}-1 ]]; then
                    parameter_value+="\t"
                fi
                ((vcount+=1))
            done
        fi

        if [[ -n "${parameter_value}" ]]; then
            query_request_part+="${parameter_value}"
        fi

        if [[ $count -lt $query_parameter_count-1 && -n "${parameter_value}" ]]; then
            query_request_part+="&"
        fi

        ((count+=1))
    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?$(echo ${query_request_part} | sed s'/&$//')"
    fi

    echo $path_template
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

$(tput bold)$(tput setaf 7)Vehicle Maintance Manager command line client (API version 0.0.1)$(tput sgr0)

$(tput bold)$(tput setaf 7)Usage$(tput sgr0)

  $(tput setaf 2)${script_name}$(tput sgr0) [-h|--help] [-V|--version] [--about] [$(tput setaf 1)<curl-options>$(tput sgr0)]
           [-ac|--accept $(tput setaf 2)<mime-type>$(tput sgr0)] [-ct,--content-type $(tput setaf 2)<mime-type>$(tput sgr0)]
           [--host $(tput setaf 6)<url>$(tput sgr0)] [--dry-run] $(tput setaf 3)<operation>$(tput sgr0) [-h|--help] [$(tput setaf 4)<headers>$(tput sgr0)]
           [$(tput setaf 5)<parameters>$(tput sgr0)] [$(tput setaf 5)<body-parameters>$(tput sgr0)]

  - $(tput setaf 6)<url>$(tput sgr0) - endpoint of the REST service without basepath

  - $(tput setaf 1)<curl-options>$(tput sgr0) - any valid cURL options can be passed before $(tput setaf 3)<operation>$(tput sgr0)
  - $(tput setaf 2)<mime-type>$(tput sgr0) - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - $(tput setaf 4)<headers>$(tput sgr0) - HTTP headers can be passed in the form $(tput setaf 3)HEADER$(tput sgr0):$(tput setaf 4)VALUE$(tput sgr0)
  - $(tput setaf 5)<parameters>$(tput sgr0) - REST operation parameters can be passed in the following
                   forms:
                   * $(tput setaf 3)KEY$(tput sgr0)=$(tput setaf 4)VALUE$(tput sgr0) - path or query parameters
  - $(tput setaf 5)<body-parameters>$(tput sgr0) - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * $(tput setaf 3)KEY$(tput sgr0)==$(tput setaf 4)VALUE$(tput sgr0) - body parameters which will be added to body
                                      JSON as '{ ..., "$(tput setaf 3)KEY$(tput sgr0)": "$(tput setaf 4)VALUE$(tput sgr0)", ... }'
                        * $(tput setaf 3)KEY$(tput sgr0):=$(tput setaf 4)VALUE$(tput sgr0) - body parameters which will be added to body
                                      JSON as '{ ..., "$(tput setaf 3)KEY$(tput sgr0)": $(tput setaf 4)VALUE$(tput sgr0), ... }'

EOF
    echo -e "$(tput bold)$(tput setaf 7)Authentication methods$(tput sgr0)"
    echo -e ""
    echo -e "  - $(tput setaf 4)Api-key$(tput sgr0) - add '$(tput setaf 1)api_key:<api-key>$(tput sgr0)' after $(tput setaf 3)<operation>$(tput sgr0)"
    
    echo -e "  - $(tput setaf 5)OAuth2 (flow: implicit)$(tput sgr0)"
    echo -e "      Authorization URL: "
    echo -e "        * http://localhost:3000/oauth/dialog"
    echo -e "      Scopes:"
    echo -e "        * write:vehicles - modify vehicles in your account"
    echo -e "        * read:vehicles - read your vehicles"
    echo -e "        * write:garage - modify garage in your account"
    echo -e "        * read:garage - read your garage"
    echo -e "        * write:reminders - modify reminders in your account"
    echo -e "        * read:reminders - read your reminders"
    echo -e "        * write:refuels - modify refuels in your account"
    echo -e "        * read:refuels - read your refuels"
    echo -e "        * write:trips - modify trips in your account"
    echo -e "        * read:trips - read your trips"
    echo -e "        * write:fines - modify fines in your account"
    echo -e "        * read:fines - read your fines"
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Operations (grouped by tags)$(tput sgr0)"
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[fine]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)addFineToVehicleId$(tput sgr0);Add a fine to the vehicle
  $(tput setaf 6)deleteFine$(tput sgr0);Deletes a fine
  $(tput setaf 6)getFineById$(tput sgr0);Find fine by ID
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[garage]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)garageInventoryGet$(tput sgr0);Get all registered vehicles
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[refuel]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)addRefuelToVehicleId$(tput sgr0);Add a refuel bill to the vehicle
  $(tput setaf 6)deleteRefuel$(tput sgr0);Deletes a refuel bill
  $(tput setaf 6)getRefuelById$(tput sgr0);Find refuel bill by ID
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[reminder]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)addReminderToVehicleId$(tput sgr0);Add a reminder to the vehicle
  $(tput setaf 6)deleteReminder$(tput sgr0);Deletes a reminder
  $(tput setaf 6)getReminderById$(tput sgr0);Find reminder by ID
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[trip]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)addTripToVehicleId$(tput sgr0);Add a trip log to the vehicle
  $(tput setaf 6)deleteTrip$(tput sgr0);Deletes a trip log
  $(tput setaf 6)getTripById$(tput sgr0);Find trip by ID
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[user]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)createUser$(tput sgr0);Create user
  $(tput setaf 6)createUsersWithArrayInput$(tput sgr0);Creates list of users with given input array
  $(tput setaf 6)createUsersWithListInput$(tput sgr0);Creates list of users with given input array
  $(tput setaf 6)deleteUser$(tput sgr0);Delete user
  $(tput setaf 6)getUserByName$(tput sgr0);Get user by user name
  $(tput setaf 6)loginUser$(tput sgr0);Logs user into the system
  $(tput setaf 6)logoutUser$(tput sgr0);Logs out current logged in user session
  $(tput setaf 6)updateUser$(tput sgr0);Updated user
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)[vehicle]$(tput sgr0)"
read -d '' ops <<EOF
  $(tput setaf 6)addVehicle$(tput sgr0);Add a new vehicle
  $(tput setaf 6)deleteVehicle$(tput sgr0);Deletes a vehicle
  $(tput setaf 6)getVehicleById$(tput sgr0);Find vehicle by ID
  $(tput setaf 6)updateVehicle$(tput sgr0);Update an existing vehicle
  $(tput setaf 6)updateVehicleWithForm$(tput sgr0);Updates a vehicle in the garage with form data
  $(tput setaf 6)uploadFile$(tput sgr0);uploads an image
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Options$(tput sgr0)"
    echo -e "  -h,--help\t\t\t\tPrint this help"
    echo -e "  -V,--version\t\t\t\tPrint API version"
    echo -e "  --about\t\t\t\tPrint the information about service"
    echo -e "  --host $(tput setaf 6)<url>$(tput sgr0)\t\t\t\tSpecify the host URL "
echo -e "              \t\t\t\t(e.g. 'https://localhost:3000')"

    echo -e "  --force\t\t\t\tForce command invocation in spite of missing"
    echo -e "         \t\t\t\trequired parameters or wrong content type"
    echo -e "  --dry-run\t\t\t\tPrint out the cURL command without"
    echo -e "           \t\t\t\texecuting it"
    echo -e "  -ac,--accept $(tput setaf 3)<mime-type>$(tput sgr0)\t\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type $(tput setaf 3)<mime-type>$(tput sgr0)\tSet the 'Content-type' header in "
    echo -e "                                \tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Vehicle Maintance Manager command line client (API version 0.0.1)$(tput sgr0)"
    echo ""
    echo -e "License: Apache 2.0"
    echo -e "Contact: apiteam@vmmapi"
    echo ""
read -d '' appdescription <<EOF

This is a sample vehicle maintance manager server.
EOF
echo "$appdescription" | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "$(tput bold)Vehicle Maintance Manager command line client (API version 0.0.1)$(tput sgr0)"
    echo ""
}

##############################################################################
#
# Print help for addFineToVehicleId operation
#
##############################################################################
print_addFineToVehicleId_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)addFineToVehicleId - Add a fine to the vehicle$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)vehicleId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of vehicle that needs to be updated $(tput setaf 3)Specify as: vehicleId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 405 in
        1*)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for deleteFine operation
#
##############################################################################
print_deleteFine_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)deleteFine - Deletes a fine$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)fineId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - fine id to delete $(tput setaf 3)Specify as: fineId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)api_key$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0)$(tput sgr0) -  $(tput setaf 3)Specify as: api_key:value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Fine not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Fine not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Fine not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Fine not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Fine not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Fine not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getFineById operation
#
##############################################################################
print_getFineById_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getFineById - Find fine by ID$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single fine" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)fineId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of fine to return $(tput setaf 3)Specify as: fineId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for garageInventoryGet operation
#
##############################################################################
print_garageInventoryGet_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)garageInventoryGet - Get all registered vehicles$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 405 in
        1*)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for addRefuelToVehicleId operation
#
##############################################################################
print_addRefuelToVehicleId_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)addRefuelToVehicleId - Add a refuel bill to the vehicle$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)vehicleId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of vehicle that needs to be updated $(tput setaf 3)Specify as: vehicleId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 405 in
        1*)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for deleteRefuel operation
#
##############################################################################
print_deleteRefuel_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)deleteRefuel - Deletes a refuel bill$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)refuelId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - refuel id to delete $(tput setaf 3)Specify as: refuelId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)api_key$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0)$(tput sgr0) -  $(tput setaf 3)Specify as: api_key:value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Refuel bill not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Refuel bill not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Refuel bill not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Refuel bill not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Refuel bill not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Refuel bill not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getRefuelById operation
#
##############################################################################
print_getRefuelById_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getRefuelById - Find refuel bill by ID$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single refuel bill" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)refuelId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of refuel to return $(tput setaf 3)Specify as: refuelId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for addReminderToVehicleId operation
#
##############################################################################
print_addReminderToVehicleId_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)addReminderToVehicleId - Add a reminder to the vehicle$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)vehicleId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of vehicle that needs to be updated $(tput setaf 3)Specify as: vehicleId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 405 in
        1*)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for deleteReminder operation
#
##############################################################################
print_deleteReminder_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)deleteReminder - Deletes a reminder$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)reminderId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - reminder id to delete $(tput setaf 3)Specify as: reminderId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)api_key$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0)$(tput sgr0) -  $(tput setaf 3)Specify as: api_key:value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Reminder not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Reminder not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Reminder not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Reminder not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Reminder not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Reminder not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getReminderById operation
#
##############################################################################
print_getReminderById_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getReminderById - Find reminder by ID$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single reminder" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)reminderId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of reminder to return $(tput setaf 3)Specify as: reminderId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for addTripToVehicleId operation
#
##############################################################################
print_addTripToVehicleId_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)addTripToVehicleId - Add a trip log to the vehicle$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)vehicleId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of vehicle that needs to be updated $(tput setaf 3)Specify as: vehicleId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 405 in
        1*)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for deleteTrip operation
#
##############################################################################
print_deleteTrip_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)deleteTrip - Deletes a trip log$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)tripId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - trip id to delete $(tput setaf 3)Specify as: tripId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)api_key$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0)$(tput sgr0) -  $(tput setaf 3)Specify as: api_key:value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Trip log not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Trip log not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Trip log not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Trip log not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Trip log not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Trip log not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getTripById operation
#
##############################################################################
print_getTripById_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getTripById - Find trip by ID$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single trip log" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)tripId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of trip to return $(tput setaf 3)Specify as: tripId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for createUser operation
#
##############################################################################
print_createUser_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)createUser - Create user$(tput sgr0)"
    echo -e ""
    echo -e "This can only be done by the logged in user." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)body$(tput sgr0) $(tput setaf 4)[]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - Created user object" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 0 in
        1*)
        echo -e "$(tput setaf 7)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for createUsersWithArrayInput operation
#
##############################################################################
print_createUsersWithArrayInput_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)createUsersWithArrayInput - Creates list of users with given input array$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)body$(tput sgr0) $(tput setaf 4)[]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - List of user object" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 0 in
        1*)
        echo -e "$(tput setaf 7)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for createUsersWithListInput operation
#
##############################################################################
print_createUsersWithListInput_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)createUsersWithListInput - Creates list of users with given input array$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)body$(tput sgr0) $(tput setaf 4)[]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - List of user object" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 0 in
        1*)
        echo -e "$(tput setaf 7)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for deleteUser operation
#
##############################################################################
print_deleteUser_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)deleteUser - Delete user$(tput sgr0)"
    echo -e ""
    echo -e "This can only be done by the logged in user." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)username$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - The name that needs to be deleted $(tput setaf 3)Specify as: username=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getUserByName operation
#
##############################################################################
print_getUserByName_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getUserByName - Get user by user name$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)username$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - The name that needs to be fetched. Use user1 for testing. $(tput setaf 3)Specify as: username=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid username supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for loginUser operation
#
##############################################################################
print_loginUser_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)loginUser - Logs user into the system$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)username$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - The user name for login$(tput setaf 3) Specify as: username=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)password$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - The password for login in clear text$(tput setaf 3) Specify as: password=value$(tput sgr0)" \
        | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
        echo -e "       $(tput bold)$(tput setaf 7)Response headers$(tput sgr0)"
        echo -e "       $(tput setaf 4)X-Rate-Limit$(tput sgr0) - calls per hour allowed by the user" | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       $(tput setaf 4)X-Expires-After$(tput sgr0) - date in UTC when token expires" | fold -sw 80 | sed '2,$s/^/        /'
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid username/password supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid username/password supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid username/password supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid username/password supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid username/password supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid username/password supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for logoutUser operation
#
##############################################################################
print_logoutUser_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)logoutUser - Logs out current logged in user session$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 0 in
        1*)
        echo -e "$(tput setaf 7)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  0;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for updateUser operation
#
##############################################################################
print_updateUser_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)updateUser - Updated user$(tput sgr0)"
    echo -e ""
    echo -e "This can only be done by the logged in user." | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)username$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - name that need to be updated $(tput setaf 3)Specify as: username=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)body$(tput sgr0) $(tput setaf 4)[]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - Updated user object" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid user supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid user supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid user supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid user supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid user supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid user supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;User not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for addVehicle operation
#
##############################################################################
print_addVehicle_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)addVehicle - Add a new vehicle$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)body$(tput sgr0) $(tput setaf 4)[application/json,application/xml]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - Vehicle object that needs to be added to the garage" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 405 in
        1*)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for deleteVehicle operation
#
##############################################################################
print_deleteVehicle_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)deleteVehicle - Deletes a vehicle$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)vehicleId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - Vehicle id to delete $(tput setaf 3)Specify as: vehicleId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * $(tput setaf 2)api_key$(tput sgr0) $(tput setaf 4)[String]$(tput sgr0)$(tput sgr0) -  $(tput setaf 3)Specify as: api_key:value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for getVehicleById operation
#
##############################################################################
print_getVehicleById_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)getVehicleById - Find vehicle by ID$(tput sgr0)"
    echo -e ""
    echo -e "Returns a single vehicle" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)vehicleId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of vehicle to return $(tput setaf 3)Specify as: vehicleId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for updateVehicle operation
#
##############################################################################
print_updateVehicle_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)updateVehicle - Update an existing vehicle$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)body$(tput sgr0) $(tput setaf 4)[application/json,application/xml]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - Vehicle object that needs to be added to the garage" | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 400 in
        1*)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  400;Invalid ID supplied$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 404 in
        1*)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  404;Vehicle not found$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
    case 405 in
        1*)
        echo -e "$(tput setaf 7)  405;Validation exception$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  405;Validation exception$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  405;Validation exception$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  405;Validation exception$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  405;Validation exception$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  405;Validation exception$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for updateVehicleWithForm operation
#
##############################################################################
print_updateVehicleWithForm_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)updateVehicleWithForm - Updates a vehicle in the garage with form data$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)vehicleId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of vehicle that needs to be updated $(tput setaf 3)Specify as: vehicleId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 405 in
        1*)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  405;Invalid input$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}
##############################################################################
#
# Print help for uploadFile operation
#
##############################################################################
print_uploadFile_help() {
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)uploadFile - uploads an image$(tput sgr0)"
    echo -e ""
    echo -e "" | fold -sw 80
    echo -e ""
    echo -e "$(tput bold)$(tput setaf 7)Parameters$(tput sgr0)"
    echo -e "  * $(tput setaf 2)vehicleId$(tput sgr0) $(tput setaf 4)[Integer]$(tput sgr0) $(tput setaf 1)(required)$(tput sgr0)$(tput sgr0) - ID of vehicle to update $(tput setaf 3)Specify as: vehicleId=value$(tput sgr0)" | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "$(tput bold)$(tput setaf 7)Responses$(tput sgr0)"
    case 200 in
        1*)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        2*)
        echo -e "$(tput setaf 2)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        3*)
        echo -e "$(tput setaf 3)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        4*)
        echo -e "$(tput setaf 1)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        5*)
        echo -e "$(tput setaf 5)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
        *)
        echo -e "$(tput setaf 7)  200;successful operation$(tput sgr0)" | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        ;;
    esac
}


##############################################################################
#
# Call addFineToVehicleId operation
#
##############################################################################
call_addFineToVehicleId() {
    local path_parameter_names=(vehicleId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/fine/vehicle/{vehicleId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/fine/vehicle/{vehicleId}" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteFine operation
#
##############################################################################
call_deleteFine() {
    local path_parameter_names=(fineId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/fine/{fineId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/fine/{fineId}" path_parameter_names query_parameter_names)
    local method="DELETE"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getFineById operation
#
##############################################################################
call_getFineById() {
    local path_parameter_names=(fineId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/fine/{fineId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/fine/{fineId}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call garageInventoryGet operation
#
##############################################################################
call_garageInventoryGet() {
    local path_parameter_names=()
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/garage/inventory" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/garage/inventory" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call addRefuelToVehicleId operation
#
##############################################################################
call_addRefuelToVehicleId() {
    local path_parameter_names=(vehicleId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/refuel/vehicle/{vehicleId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/refuel/vehicle/{vehicleId}" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteRefuel operation
#
##############################################################################
call_deleteRefuel() {
    local path_parameter_names=(refuelId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/refuel/{refuelId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/refuel/{refuelId}" path_parameter_names query_parameter_names)
    local method="DELETE"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getRefuelById operation
#
##############################################################################
call_getRefuelById() {
    local path_parameter_names=(refuelId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/refuel/{refuelId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/refuel/{refuelId}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call addReminderToVehicleId operation
#
##############################################################################
call_addReminderToVehicleId() {
    local path_parameter_names=(vehicleId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/reminder/vehicle/{vehicleId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/reminder/vehicle/{vehicleId}" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteReminder operation
#
##############################################################################
call_deleteReminder() {
    local path_parameter_names=(reminderId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/reminder/{reminderId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/reminder/{reminderId}" path_parameter_names query_parameter_names)
    local method="DELETE"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getReminderById operation
#
##############################################################################
call_getReminderById() {
    local path_parameter_names=(reminderId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/reminder/{reminderId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/reminder/{reminderId}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call addTripToVehicleId operation
#
##############################################################################
call_addTripToVehicleId() {
    local path_parameter_names=(vehicleId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/trip/vehicle/{vehicleId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/trip/vehicle/{vehicleId}" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteTrip operation
#
##############################################################################
call_deleteTrip() {
    local path_parameter_names=(tripId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/trip/{tripId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/trip/{tripId}" path_parameter_names query_parameter_names)
    local method="DELETE"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getTripById operation
#
##############################################################################
call_getTripById() {
    local path_parameter_names=(tripId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/trip/{tripId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/trip/{tripId}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call createUser operation
#
##############################################################################
call_createUser() {
    local path_parameter_names=()
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/user" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/user" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createUsersWithArrayInput operation
#
##############################################################################
call_createUsersWithArrayInput() {
    local path_parameter_names=()
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/user/createWithArray" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/user/createWithArray" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createUsersWithListInput operation
#
##############################################################################
call_createUsersWithListInput() {
    local path_parameter_names=()
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/user/createWithList" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/user/createWithList" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteUser operation
#
##############################################################################
call_deleteUser() {
    local path_parameter_names=(username)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/user/{username}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/user/{username}" path_parameter_names query_parameter_names)
    local method="DELETE"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getUserByName operation
#
##############################################################################
call_getUserByName() {
    local path_parameter_names=(username)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/user/{username}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/user/{username}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call loginUser operation
#
##############################################################################
call_loginUser() {
    local path_parameter_names=()
    local query_parameter_names=(username password)

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/user/login" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/user/login" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call logoutUser operation
#
##############################################################################
call_logoutUser() {
    local path_parameter_names=()
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/user/logout" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/user/logout" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateUser operation
#
##############################################################################
call_updateUser() {
    local path_parameter_names=(username)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/user/{username}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/user/{username}" path_parameter_names query_parameter_names)
    local method="PUT"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call addVehicle operation
#
##############################################################################
call_addVehicle() {
    local path_parameter_names=()
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/vehicle" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/vehicle" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "Error: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\t- application/json"
        echo -e "\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteVehicle operation
#
##############################################################################
call_deleteVehicle() {
    local path_parameter_names=(vehicleId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/vehicle/{vehicleId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/vehicle/{vehicleId}" path_parameter_names query_parameter_names)
    local method="DELETE"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getVehicleById operation
#
##############################################################################
call_getVehicleById() {
    local path_parameter_names=(vehicleId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/vehicle/{vehicleId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/vehicle/{vehicleId}" path_parameter_names query_parameter_names)
    local method="GET"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateVehicle operation
#
##############################################################################
call_updateVehicle() {
    local path_parameter_names=()
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/vehicle" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/vehicle" path_parameter_names query_parameter_names)
    local method="PUT"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "Error: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\t- application/json"
        echo -e "\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call updateVehicleWithForm operation
#
##############################################################################
call_updateVehicleWithForm() {
    local path_parameter_names=(vehicleId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/vehicle/{vehicleId}" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/vehicle/{vehicleId}" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uploadFile operation
#
##############################################################################
call_uploadFile() {
    local path_parameter_names=(vehicleId)
    local query_parameter_names=()

    if [[ $force = false ]]; then
        validate_request_parameters "/v2/vehicle/{vehicleId}/uploadImage" path_parameter_names query_parameter_names
    fi

    local path=$(build_request_path "/v2/vehicle/{vehicleId}/uploadImage" path_parameter_names query_parameter_names)
    local method="POST"
    local headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "Error: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "Error: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "Error: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguemnts before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    addFineToVehicleId)
    operation="addFineToVehicleId"
    ;;
    deleteFine)
    operation="deleteFine"
    ;;
    getFineById)
    operation="getFineById"
    ;;
    garageInventoryGet)
    operation="garageInventoryGet"
    ;;
    addRefuelToVehicleId)
    operation="addRefuelToVehicleId"
    ;;
    deleteRefuel)
    operation="deleteRefuel"
    ;;
    getRefuelById)
    operation="getRefuelById"
    ;;
    addReminderToVehicleId)
    operation="addReminderToVehicleId"
    ;;
    deleteReminder)
    operation="deleteReminder"
    ;;
    getReminderById)
    operation="getReminderById"
    ;;
    addTripToVehicleId)
    operation="addTripToVehicleId"
    ;;
    deleteTrip)
    operation="deleteTrip"
    ;;
    getTripById)
    operation="getTripById"
    ;;
    createUser)
    operation="createUser"
    ;;
    createUsersWithArrayInput)
    operation="createUsersWithArrayInput"
    ;;
    createUsersWithListInput)
    operation="createUsersWithListInput"
    ;;
    deleteUser)
    operation="deleteUser"
    ;;
    getUserByName)
    operation="getUserByName"
    ;;
    loginUser)
    operation="loginUser"
    ;;
    logoutUser)
    operation="logoutUser"
    ;;
    updateUser)
    operation="updateUser"
    ;;
    addVehicle)
    operation="addVehicle"
    ;;
    deleteVehicle)
    operation="deleteVehicle"
    ;;
    getVehicleById)
    operation="getVehicleById"
    ;;
    updateVehicle)
    operation="updateVehicle"
    ;;
    updateVehicleWithForm)
    operation="updateVehicleWithForm"
    ;;
    uploadFile)
    operation="uploadFile"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without qoutes
    if [[ "$operation" ]]; then
        IFS=':=' read body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    *:*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read header_name header_value <<< "$key"
        #
        # If the header key is the same as the api_key expected by API in the
        # header, override the ${apikey_auth_credential} variable
        #
        if [[ $header_name == "api_key" ]]; then
            apikey_auth_credential=$header_value
        fi
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > $body_content_temp_file
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    echo "Error: No hostname provided!!!"
    echo "Check usage: '${script_name} --help'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    echo "Error: No operation specified!"
    echo "Check available operations: '${script_name} --help'"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    addFineToVehicleId)
    call_addFineToVehicleId
    ;;
    deleteFine)
    call_deleteFine
    ;;
    getFineById)
    call_getFineById
    ;;
    garageInventoryGet)
    call_garageInventoryGet
    ;;
    addRefuelToVehicleId)
    call_addRefuelToVehicleId
    ;;
    deleteRefuel)
    call_deleteRefuel
    ;;
    getRefuelById)
    call_getRefuelById
    ;;
    addReminderToVehicleId)
    call_addReminderToVehicleId
    ;;
    deleteReminder)
    call_deleteReminder
    ;;
    getReminderById)
    call_getReminderById
    ;;
    addTripToVehicleId)
    call_addTripToVehicleId
    ;;
    deleteTrip)
    call_deleteTrip
    ;;
    getTripById)
    call_getTripById
    ;;
    createUser)
    call_createUser
    ;;
    createUsersWithArrayInput)
    call_createUsersWithArrayInput
    ;;
    createUsersWithListInput)
    call_createUsersWithListInput
    ;;
    deleteUser)
    call_deleteUser
    ;;
    getUserByName)
    call_getUserByName
    ;;
    loginUser)
    call_loginUser
    ;;
    logoutUser)
    call_logoutUser
    ;;
    updateUser)
    call_updateUser
    ;;
    addVehicle)
    call_addVehicle
    ;;
    deleteVehicle)
    call_deleteVehicle
    ;;
    getVehicleById)
    call_getVehicleById
    ;;
    updateVehicle)
    call_updateVehicle
    ;;
    updateVehicleWithForm)
    call_updateVehicleWithForm
    ;;
    uploadFile)
    call_uploadFile
    ;;
    *)
    echo "Error: Unknown operation: $operation"
    echo ""
    print_help
    exit 1
esac
