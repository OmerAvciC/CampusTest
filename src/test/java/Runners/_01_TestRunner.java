package Runners;


import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(

        features = {"src/test/java/FeaturesFiles/_12_BankAccount.feature",
                "src/test/java/FeaturesFiles/_13_Departments.feature"},

        glue = {"StepDefinitions"}

)

public class _01_TestRunner extends AbstractTestNGCucumberTests {
}
