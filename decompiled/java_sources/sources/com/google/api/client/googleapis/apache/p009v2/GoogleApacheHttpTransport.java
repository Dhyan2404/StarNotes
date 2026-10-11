package com.google.api.client.googleapis.apache.p009v2;

import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.googleapis.mtls.MtlsProvider;
import com.google.api.client.googleapis.mtls.MtlsUtils;
import com.google.api.client.http.apache.p010v2.ApacheHttpTransport;
import com.google.api.client.util.Beta;
import com.google.api.client.util.SslUtils;
import com.google.common.annotations.VisibleForTesting;
import java.io.IOException;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.impl.conn.SystemDefaultRoutePlanner;

/* loaded from: classes6.dex */
public final class GoogleApacheHttpTransport {

    @VisibleForTesting
    /* loaded from: classes6.dex */
    public static class SocketFactoryRegistryHandler {
        private final boolean isMtls;
        private final Registry<ConnectionSocketFactory> socketFactoryRegistry;

        public SocketFactoryRegistryHandler(MtlsProvider mtlsProvider) throws GeneralSecurityException, IOException {
            KeyStore keyStore;
            String str;
            if (mtlsProvider.useMtlsClientCertificate()) {
                KeyStore keyStore2 = mtlsProvider.getKeyStore();
                str = mtlsProvider.getKeyStorePassword();
                keyStore = keyStore2;
            } else {
                keyStore = null;
                str = null;
            }
            KeyStore certificateTrustStore = GoogleUtils.getCertificateTrustStore();
            SSLContext tlsSslContext = SslUtils.getTlsSslContext();
            if (keyStore == null || str == null) {
                this.isMtls = false;
                SslUtils.initSslContext(tlsSslContext, certificateTrustStore, SslUtils.getPkixTrustManagerFactory());
            } else {
                this.isMtls = true;
                SslUtils.initSslContext(tlsSslContext, certificateTrustStore, SslUtils.getPkixTrustManagerFactory(), keyStore, str, SslUtils.getDefaultKeyManagerFactory());
            }
            this.socketFactoryRegistry = RegistryBuilder.create().register("http", PlainConnectionSocketFactory.getSocketFactory()).register("https", new SSLConnectionSocketFactory(tlsSslContext)).build();
        }

        public Registry<ConnectionSocketFactory> getSocketFactoryRegistry() {
            return this.socketFactoryRegistry;
        }

        public boolean isMtls() {
            return this.isMtls;
        }
    }

    private GoogleApacheHttpTransport() {
    }

    public static ApacheHttpTransport newTrustedTransport() throws GeneralSecurityException, IOException {
        return newTrustedTransport(MtlsUtils.getDefaultMtlsProvider());
    }

    @Beta
    public static ApacheHttpTransport newTrustedTransport(MtlsProvider mtlsProvider) throws GeneralSecurityException, IOException {
        SocketFactoryRegistryHandler socketFactoryRegistryHandler = new SocketFactoryRegistryHandler(mtlsProvider);
        PoolingHttpClientConnectionManager poolingHttpClientConnectionManager = new PoolingHttpClientConnectionManager(socketFactoryRegistryHandler.getSocketFactoryRegistry(), null, null, null, -1L, TimeUnit.MILLISECONDS);
        poolingHttpClientConnectionManager.setValidateAfterInactivity(-1);
        return new ApacheHttpTransport(HttpClientBuilder.create().useSystemProperties().setMaxConnTotal(200).setMaxConnPerRoute(20).setRoutePlanner(new SystemDefaultRoutePlanner(ProxySelector.getDefault())).setConnectionManager(poolingHttpClientConnectionManager).disableRedirectHandling().disableAutomaticRetries().build(), socketFactoryRegistryHandler.isMtls());
    }
}
