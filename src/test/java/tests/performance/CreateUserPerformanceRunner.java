package tests.performance;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class CreateUserPerformanceRunner {
    
    @Test
    void testCreateUserPerformance() {
        Results results = Runner.path("classpath:tests/performance")
                .tags("@performance")
                .parallel(3); // 3 threads em paralelo
        
        // Validações
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
        
        // Métricas de performance
        System.out.println("========== PERFORMANCE RESULTS ==========");
        System.out.println("Total features: " + results.getFeaturesTotal());
        System.out.println("Features passed: " + results.getFeaturesPassed());
        System.out.println("Features failed: " + results.getFeaturesFailed());
        System.out.println("Total time: " + results.getElapsedTime() + " ms");
        System.out.println("Parallel threads: 3");
        System.out.println("========================================");
        
        // Validação de performance simples
        assertTrue(results.getElapsedTime() < 30000, 
            "Performance too slow! Total time: " + results.getElapsedTime() + "ms");
    }
}