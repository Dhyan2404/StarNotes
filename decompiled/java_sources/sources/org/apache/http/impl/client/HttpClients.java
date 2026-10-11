package org.apache.http.impl.client;

import com.sunia.HTREnginev2.wnj;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;

/* loaded from: classes12.dex */
public class HttpClients {
    public static CloseableHttpClient createDefault() {
        return HttpClientBuilder.create().build();
    }

    public static CloseableHttpClient createMinimal() {
        return new wnj(new PoolingHttpClientConnectionManager());
    }

    public static CloseableHttpClient createSystem() {
        return HttpClientBuilder.create().useSystemProperties().build();
    }

    public static HttpClientBuilder custom() {
        return HttpClientBuilder.create();
    }

    public static CloseableHttpClient createMinimal(HttpClientConnectionManager httpClientConnectionManager) {
        return new wnj(httpClientConnectionManager);
    }
}
