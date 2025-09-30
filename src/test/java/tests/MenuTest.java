package tests;

import com.intuit.karate.junit5.Karate;

class MenuTest {

    @Karate.Test
    Karate testMenu() {
        return Karate.run("Menu").relativeTo(getClass());
    }
}
