package bdd.product;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.Results;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import static bdd.util.ReportUtil.generateCucumberReport;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class runerUserregresion {

    final static Logger looger = LoggerFactory.getLogger(runerUserregresion.class);

    @Test
    void test() {
        Results results =
                com.intuit.karate.Runner.path("classpath:bdd/product/user.feature")
                        .tags("@smoketest")
                        .outputCucumberJson(true)
                        .parallel(2);
        generateCucumberReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
