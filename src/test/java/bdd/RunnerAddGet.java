package bdd;

import com.intuit.karate.Results;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class RunnerAddGet {
    final static Logger looger = LoggerFactory.getLogger(RunnerAddGet.class);

    @Test
    void test() {
        looger.info("Ejecutando nuestra prueba de API casos ADD-GET RETO NTTDATA CFLORES");
        Results results =
                com.intuit.karate.Runner.path("classpath:bdd/product/PetStoreAdd-Get.feature")
                        .tags("@plan-de-pruebas-ADD-GET")
                        .outputCucumberJson(true)
                        .parallel(2);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
