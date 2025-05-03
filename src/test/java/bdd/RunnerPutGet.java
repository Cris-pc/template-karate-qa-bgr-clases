package bdd;

import com.intuit.karate.Results;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import static org.junit.jupiter.api.Assertions.assertEquals;

public class RunnerPutGet {
    final static Logger looger = LoggerFactory.getLogger(RunnerPutGet.class);

    @Test
    void test() {
        looger.info("Ejecutando nuestra prueba de API casos PUT-GET RETO NTTDATA CFLORES");
        Results results =
                com.intuit.karate.Runner.path("classpath:bdd/product/PetStorePut-Get.feature")
                        .tags("@plan-de-pruebas-PUT-GET")
                        .outputCucumberJson(true)
                        .parallel(2);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
