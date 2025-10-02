package tests.ui;

import com.intuit.karate.junit5.Karate;

class UiTests {

    @Karate.Test
    Karate testUi() {
        return Karate.run("classpath:tests/ui").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testDropdown() {
        return Karate.run("classpath:tests/ui/Dropdown.feature").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testMenu() {
        return Karate.run("classpath:tests/ui/Menu.feature").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testLogin() {
        return Karate.run("classpath:tests/ui/Login.feature").relativeTo(getClass());
    }
}