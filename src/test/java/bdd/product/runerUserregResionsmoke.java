package bdd.product;
import com.intuit.karate.junit5.Karate;

public class runerUserregResionsmoke {

    @Karate.Test
    Karate testSample() {
        return Karate.run("user.feature")
                .relativeTo(getClass()).tags("@smoketest");
    }
}
