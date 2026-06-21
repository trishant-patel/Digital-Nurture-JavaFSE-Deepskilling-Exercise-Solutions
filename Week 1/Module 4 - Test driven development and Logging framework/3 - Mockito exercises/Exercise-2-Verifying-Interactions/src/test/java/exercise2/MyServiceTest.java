package exercise2;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.mockito.Mockito.verify;

public class MyServiceTest {

    @Test
    public void testVerifyInteraction() {

        // Create mock object
        ExternalApi mockApi =
                Mockito.mock(ExternalApi.class);

        // Pass mock to service
        MyService service =
                new MyService(mockApi);

        // Call method
        service.fetchData();

        // Verify method invocation
        verify(mockApi).getData();
    }
}