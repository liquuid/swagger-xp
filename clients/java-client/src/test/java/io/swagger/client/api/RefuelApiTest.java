/*
 * Vehicle Maintance Manager
 * This is a sample vehicle maintance manager server.
 *
 * OpenAPI spec version: 0.0.1
 * Contact: apiteam@vmmapi
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.api;

import io.swagger.client.ApiException;
import java.math.BigDecimal;
import io.swagger.client.model.Refuel;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for RefuelApi
 */
@Ignore
public class RefuelApiTest {

    private final RefuelApi api = new RefuelApi();

    
    /**
     * Add a refuel bill to the vehicle
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void addRefuelToVehicleIdTest() throws ApiException {
        Long vehicleId = null;
        BigDecimal quantity = null;
        api.addRefuelToVehicleId(vehicleId, quantity);

        // TODO: test validations
    }
    
    /**
     * Deletes a refuel bill
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteRefuelTest() throws ApiException {
        Long refuelId = null;
        String apiKey = null;
        api.deleteRefuel(refuelId, apiKey);

        // TODO: test validations
    }
    
    /**
     * Find refuel bill by ID
     *
     * Returns a single refuel bill
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getRefuelByIdTest() throws ApiException {
        Long refuelId = null;
        Refuel response = api.getRefuelById(refuelId);

        // TODO: test validations
    }
    
}