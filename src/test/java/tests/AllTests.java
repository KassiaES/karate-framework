package tests;

import com.intuit.karate.junit5.Karate;

class AllTests {

    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:tests").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testApiOnly() {
        return Karate.run("classpath:tests/api").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testUiOnly() {
        return Karate.run("classpath:tests/ui").relativeTo(getClass());
    }
}