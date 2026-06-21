package exercise1;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

public class MyServiceTest {

    @Test
    public void testExternalApi() {

        // Create mock
        ExternalApi mockApi =
                Mockito.mock(ExternalApi.class);

        // Stub method
        when(mockApi.getData())
                .thenReturn("Mock Data");

        // Inject mock
        MyService service =
                new MyService(mockApi);

        // Call method
        String result =
                service.fetchData();

        // Verify result
        assertEquals("Mock Data", result);
    }
}