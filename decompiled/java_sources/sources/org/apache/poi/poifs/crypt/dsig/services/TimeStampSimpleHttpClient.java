package org.apache.poi.poifs.crypt.dsig.services;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.cert.X509Certificate;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.poifs.crypt.dsig.SignatureConfig;
import org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient;
import org.apache.poi.poifs.crypt.dsig.services.TimeStampSimpleHttpClient;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.RandomSingleton;

/* loaded from: classes12.dex */
public class TimeStampSimpleHttpClient implements TimeStampHttpClient {
    protected static final String BASIC_AUTH = "Authorization";
    protected static final String CONTENT_TYPE = "Content-Type";
    private static final int DEFAULT_TIMESTAMP_RESPONSE_SIZE = 10000000;
    private static final Logger LOG = LogManager.getLogger((Class<?>) TimeStampSimpleHttpClient.class);
    private static int MAX_TIMESTAMP_RESPONSE_SIZE = 10000000;
    protected static final String REDIRECT_LOCATION = "Location";
    protected static final String USER_AGENT = "User-Agent";
    protected SignatureConfig config;
    protected Proxy proxy = Proxy.NO_PROXY;
    protected final Map<String, String> header = new HashMap();
    protected String contentTypeOut = null;
    protected boolean ignoreHttpsCertificates = false;
    protected boolean followRedirects = false;

    /* loaded from: classes12.dex */
    public interface MethodHandler {
        void handle(HttpURLConnection httpURLConnection) throws IOException;
    }

    /* loaded from: classes12.dex */
    public static class TimeStampSimpleHttpClientResponse implements TimeStampHttpClient.TimeStampHttpClientResponse {
        private final byte[] responseBytes;
        private final int responseCode;

        public TimeStampSimpleHttpClientResponse(int i, byte[] bArr) {
            this.responseCode = i;
            this.responseBytes = bArr;
        }

        @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient.TimeStampHttpClientResponse
        public byte[] getResponseBytes() {
            return this.responseBytes;
        }

        @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient.TimeStampHttpClientResponse
        public int getResponseCode() {
            return this.responseCode;
        }
    }

    /* loaded from: classes12.dex */
    public static class UnsafeTrustManager implements X509TrustManager {
        private UnsafeTrustManager() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public static int getMaxTimestampResponseSize() {
        return MAX_TIMESTAMP_RESPONSE_SIZE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$get$1(HttpURLConnection httpURLConnection) throws IOException {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$post$0(byte[] bArr, HttpURLConnection httpURLConnection) throws IOException {
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        try {
            outputStream.write(bArr);
            outputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$recklessConnection$2(String str, SSLSession sSLSession) {
        return true;
    }

    public static void setMaxTimestampResponseSize(int i) {
        MAX_TIMESTAMP_RESPONSE_SIZE = i;
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public TimeStampHttpClient.TimeStampHttpClientResponse get(String str) throws IOException {
        return handleRedirect(str, new MethodHandler() { // from class: com.sunia.HTREnginev2.iin
            @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampSimpleHttpClient.MethodHandler
            public final void handle(HttpURLConnection httpURLConnection) {
                TimeStampSimpleHttpClient.lambda$get$1(httpURLConnection);
            }
        }, isFollowRedirects());
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public TimeStampHttpClient.TimeStampHttpClientResponse handleRedirect(String str, MethodHandler methodHandler, boolean z) throws IOException {
        byte[] bArr;
        final HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection(this.proxy);
        if (this.ignoreHttpsCertificates) {
            recklessConnection(httpURLConnection);
        }
        httpURLConnection.setConnectTimeout(20000);
        httpURLConnection.setReadTimeout(20000);
        this.header.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.kin
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                httpURLConnection.setRequestProperty((String) obj, (String) obj2);
            }
        });
        try {
            methodHandler.handle(httpURLConnection);
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 200) {
                switch (responseCode) {
                    case 301:
                    case 302:
                    case 303:
                        String headerField = httpURLConnection.getHeaderField("Location");
                        if (headerField != null && z) {
                            LOG.atWarn().log("Received redirect: {} -> {}", str, headerField);
                            return handleRedirect(headerField, methodHandler, false);
                        }
                        LOG.atWarn().log("Redirect ignored - giving up: {} -> {}", str, headerField);
                        bArr = null;
                        break;
                    default:
                        String str2 = "Error contacting TSP server " + str + ", had status code " + responseCode + "/" + httpURLConnection.getResponseMessage();
                        LOG.atError().log(str2);
                        throw new IOException(str2);
                }
            } else {
                String headerField2 = httpURLConnection.getHeaderField("Content-Type");
                String str3 = this.contentTypeOut;
                if (str3 != null && !str3.equals(headerField2)) {
                    throw new IOException("Content-Type mismatch - expected `" + this.contentTypeOut + "', received '" + headerField2 + CloudStorageConstants.SINGLE_QUOTES);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    byte[] byteArrayWithMaxLength = IOUtils.toByteArrayWithMaxLength(inputStream, getMaxTimestampResponseSize());
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    bArr = byteArrayWithMaxLength;
                } finally {
                }
            }
            return new TimeStampSimpleHttpClientResponse(responseCode, bArr);
        } finally {
            httpURLConnection.disconnect();
        }
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public void init(SignatureConfig signatureConfig) {
        this.config = signatureConfig;
        this.header.clear();
        this.header.put("User-Agent", signatureConfig.getUserAgent());
        this.contentTypeOut = null;
        setProxy(signatureConfig.getProxyUrl());
        setBasicAuthentication(signatureConfig.getTspUser(), signatureConfig.getTspPass());
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public boolean isFollowRedirects() {
        return this.followRedirects;
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public boolean isIgnoreHttpsCertificates() {
        return this.ignoreHttpsCertificates;
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public TimeStampHttpClient.TimeStampHttpClientResponse post(String str, final byte[] bArr) throws IOException {
        return handleRedirect(str, new MethodHandler() { // from class: com.sunia.HTREnginev2.hin
            @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampSimpleHttpClient.MethodHandler
            public final void handle(HttpURLConnection httpURLConnection) {
                TimeStampSimpleHttpClient.lambda$post$0(bArr, httpURLConnection);
            }
        }, isFollowRedirects());
    }

    public void recklessConnection(HttpURLConnection httpURLConnection) throws IOException {
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, new TrustManager[]{new UnsafeTrustManager()}, RandomSingleton.getInstance());
                httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
                httpsURLConnection.setHostnameVerifier(new HostnameVerifier() { // from class: com.sunia.HTREnginev2.jin
                    @Override // javax.net.ssl.HostnameVerifier
                    public final boolean verify(String str, SSLSession sSLSession) {
                        boolean lambda$recklessConnection$2;
                        lambda$recklessConnection$2 = TimeStampSimpleHttpClient.lambda$recklessConnection$2(str, sSLSession);
                        return lambda$recklessConnection$2;
                    }
                });
            } catch (GeneralSecurityException e) {
                throw new IOException("Unable to reckless wrap connection.", e);
            }
        }
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public void setBasicAuthentication(String str, String str2) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty()) {
            this.header.remove("Authorization");
            return;
        }
        String encodeToString = Base64.getEncoder().encodeToString((str + ":" + str2).getBytes(StandardCharsets.ISO_8859_1));
        this.header.put("Authorization", "Basic " + encodeToString);
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public void setContentTypeIn(String str) {
        this.header.put("Content-Type", str);
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public void setContentTypeOut(String str) {
        this.contentTypeOut = str;
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public void setFollowRedirects(boolean z) {
        this.followRedirects = z;
    }

    @Override // org.apache.poi.poifs.crypt.dsig.services.TimeStampHttpClient
    public void setIgnoreHttpsCertificates(boolean z) {
        this.ignoreHttpsCertificates = z;
    }

    public void setProxy(String str) {
        if (str == null || str.isEmpty()) {
            this.proxy = Proxy.NO_PROXY;
            return;
        }
        try {
            URL url = new URL(str);
            String host = url.getHost();
            int port = url.getPort();
            Proxy.Type type = Proxy.Type.HTTP;
            InetAddress byName = InetAddress.getByName(host);
            if (port == -1) {
                port = 80;
            }
            this.proxy = new Proxy(type, new InetSocketAddress(byName, port));
        } catch (IOException unused) {
        }
    }
}
