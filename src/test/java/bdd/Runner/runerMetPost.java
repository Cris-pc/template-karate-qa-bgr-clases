package bdd.Runner;
import com.intuit.karate.junit5.Karate;

public class runerMetPost {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:bdd/product/user.feature").relativeTo(getClass()).tags("@metodoPost");
    }
}
