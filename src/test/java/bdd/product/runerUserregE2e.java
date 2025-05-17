package bdd.product;
import com.intuit.karate.Results;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static bdd.util.ReportUtil2.generateCucumberReport;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class runerUserregE2e {

    @Test
    void test() {
        Results results =
                com.intuit.karate.Runner.path("classpath:bdd/product/user.feature")
                        .tags("@E2E")
                        .outputCucumberJson(true)
                        .parallel(2);
        generateCucumberReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
