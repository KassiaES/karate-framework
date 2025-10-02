package tests;

import com.intuit.karate.junit5.Karate;

class AllFeaturesTest {

    @Karate.Test
    Karate testAllFeatures() {
        // Executa todas as features na pasta tests
        return Karate.run("classpath:tests").reportDir("target/karate-reports");
    }
}