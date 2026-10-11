package com.dropbox.core.http;

import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.util.StringUtil;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes4.dex */
public class SSLConfig {

    /* renamed from: f */
    public static C2273a f16569f = null;

    /* renamed from: g */
    public static final String f16570g = "/com/dropbox/core/trusted-certs.raw";

    /* renamed from: h */
    public static final int f16571h = 10240;

    /* renamed from: a */
    public static final X509TrustManager f16564a = m10055d();

    /* renamed from: b */
    public static final SSLSocketFactory f16565b = m10054c();

    /* renamed from: c */
    public static final String[] f16566c = {"TLSv1.2"};

    /* renamed from: d */
    public static final String[] f16567d = {"TLSv1.1"};

    /* renamed from: e */
    public static final String[] f16568e = {"TLSv1"};

    /* renamed from: i */
    public static final HashSet<String> f16572i = new HashSet<>(Arrays.asList("SSL_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA", "SSL_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA", "SSL_ECDHE_RSA_WITH_RC4_128_SHA", "SSL_DHE_RSA_WITH_AES_256_GCM_SHA384", "SSL_DHE_RSA_WITH_AES_256_CBC_SHA256", "SSL_DHE_RSA_WITH_AES_256_CBC_SHA", "SSL_DHE_RSA_WITH_AES_128_GCM_SHA256", "SSL_DHE_RSA_WITH_AES_128_CBC_SHA256", "SSL_DHE_RSA_WITH_AES_128_CBC_SHA", "SSL_RSA_WITH_AES_256_GCM_SHA384", "SSL_RSA_WITH_AES_256_CBC_SHA256", "SSL_RSA_WITH_AES_256_CBC_SHA", "SSL_RSA_WITH_AES_128_GCM_SHA256", "SSL_RSA_WITH_AES_128_CBC_SHA256", "SSL_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA", "ECDHE-RSA-AES256-GCM-SHA384", "ECDHE-RSA-AES256-SHA384", "ECDHE-RSA-AES256-SHA", "ECDHE-RSA-AES128-GCM-SHA256", "ECDHE-RSA-AES128-SHA256", "ECDHE-RSA-AES128-SHA", "ECDHE-RSA-RC4-SHA", "DHE-RSA-AES256-GCM-SHA384", "DHE-RSA-AES256-SHA256", "DHE-RSA-AES256-SHA", "DHE-RSA-AES128-GCM-SHA256", "DHE-RSA-AES128-SHA256", "DHE-RSA-AES128-SHA", "AES256-GCM-SHA384", "AES256-SHA256", "AES256-SHA", "AES128-GCM-SHA256", "AES128-SHA256", "AES128-SHA"));

    /* loaded from: classes4.dex */
    public static final class LoadException extends Exception {
        private static final long serialVersionUID = 0;

        public LoadException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: com.dropbox.core.http.SSLConfig$a */
    /* loaded from: classes4.dex */
    public static final class C2273a {

        /* renamed from: a */
        public final String[] f16573a;

        /* renamed from: b */
        public final String[] f16574b;

        public C2273a(String[] strArr, String[] strArr2) {
            this.f16573a = strArr;
            this.f16574b = strArr2;
        }
    }

    public static void apply(HttpsURLConnection httpsURLConnection) throws SSLException {
        httpsURLConnection.setSSLSocketFactory(f16565b);
    }

    /* renamed from: b */
    public static SSLContext m10053b(TrustManager[] trustManagerArr) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            try {
                sSLContext.init(null, trustManagerArr, null);
                return sSLContext;
            } catch (KeyManagementException e) {
                throw LangUtil.mkAssert("Couldn't initialize SSLContext", e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw LangUtil.mkAssert("Couldn't create SSLContext", e2);
        }
    }

    /* renamed from: c */
    public static SSLSocketFactory m10054c() {
        return new C2274b(m10053b(new TrustManager[]{f16564a}).getSocketFactory());
    }

    /* renamed from: d */
    public static X509TrustManager m10055d() {
        return m10056e(m10061j(f16570g));
    }

    /* renamed from: e */
    public static X509TrustManager m10056e(KeyStore keyStore) {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
            try {
                trustManagerFactory.init(keyStore);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                if (trustManagers.length != 1) {
                    throw new AssertionError("More than 1 TrustManager created.");
                }
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
                throw new AssertionError("TrustManager not of type X509: " + trustManagers[0].getClass());
            } catch (KeyStoreException e) {
                throw LangUtil.mkAssert("Unable to initialize TrustManagerFactory with key store", e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw LangUtil.mkAssert("Unable to create TrustManagerFactory", e2);
        }
    }

    /* renamed from: f */
    public static List<X509Certificate> m10057f(CertificateFactory certificateFactory, InputStream inputStream) throws IOException, LoadException, CertificateException {
        ArrayList arrayList = new ArrayList();
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        byte[] bArr = new byte[10240];
        while (true) {
            int readUnsignedShort = dataInputStream.readUnsignedShort();
            if (readUnsignedShort == 0) {
                if (dataInputStream.read() < 0) {
                    return arrayList;
                }
                throw new LoadException("Found data after after zero-length header.", null);
            }
            if (readUnsignedShort > 10240) {
                throw new LoadException("Invalid length for certificate entry: " + readUnsignedShort, null);
            }
            dataInputStream.readFully(bArr, 0, readUnsignedShort);
            arrayList.add((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArr, 0, readUnsignedShort)));
        }
    }

    /* renamed from: g */
    public static String[] m10058g(String[] strArr) {
        C2273a c2273a = f16569f;
        if (c2273a != null && Arrays.equals(c2273a.f16573a, strArr)) {
            return c2273a.f16574b;
        }
        ArrayList arrayList = new ArrayList(f16572i.size());
        for (String str : strArr) {
            if (f16572i.contains(str)) {
                arrayList.add(str);
            }
        }
        String[] strArr2 = (String[]) arrayList.toArray(new String[arrayList.size()]);
        f16569f = new C2273a(strArr, strArr2);
        return strArr2;
    }

    public static SSLSocketFactory getSSLSocketFactory() {
        return f16565b;
    }

    public static X509TrustManager getTrustManager() {
        return f16564a;
    }

    /* renamed from: h */
    public static String[] m10059h(String[] strArr) throws SSLException {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (String str : strArr) {
            if (str.equals("TLSv1.2")) {
                z = true;
            } else if (str.equals("TLSv1.1")) {
                z2 = true;
            } else if (str.equals("TLSv1")) {
                z3 = true;
            }
        }
        if (z) {
            return f16566c;
        }
        if (z2) {
            return f16567d;
        }
        if (z3) {
            return f16568e;
        }
        throw new SSLException("Socket's available protocols doesn't overlap with our allowed protocols: " + StringUtil.m10141jq(strArr) + ".");
    }

    /* renamed from: i */
    public static void m10060i(SSLSocket sSLSocket) throws SSLException {
        sSLSocket.setEnabledProtocols(m10059h(sSLSocket.getEnabledProtocols()));
        sSLSocket.setEnabledCipherSuites(m10058g(sSLSocket.getEnabledCipherSuites()));
    }

    /* renamed from: j */
    public static KeyStore m10061j(String str) {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, new char[0]);
            InputStream resourceAsStream = SSLConfig.class.getResourceAsStream(str);
            try {
                if (resourceAsStream == null) {
                    throw new AssertionError("Couldn't find resource \"" + str + "\"");
                }
                try {
                    try {
                        m10062k(keyStore, resourceAsStream);
                        return keyStore;
                    } catch (KeyStoreException e) {
                        throw LangUtil.mkAssert("Error loading from \"" + str + "\"", e);
                    }
                } catch (LoadException e2) {
                    throw LangUtil.mkAssert("Error loading from \"" + str + "\"", e2);
                } catch (IOException e3) {
                    throw LangUtil.mkAssert("Error loading from \"" + str + "\"", e3);
                }
            } finally {
                IOUtil.closeInput(resourceAsStream);
            }
        } catch (IOException e4) {
            throw LangUtil.mkAssert("Couldn't initialize KeyStore", e4);
        } catch (KeyStoreException e5) {
            throw LangUtil.mkAssert("Couldn't initialize KeyStore", e5);
        } catch (NoSuchAlgorithmException e6) {
            throw LangUtil.mkAssert("Couldn't initialize KeyStore", e6);
        } catch (CertificateException e7) {
            throw LangUtil.mkAssert("Couldn't initialize KeyStore", e7);
        }
    }

    /* renamed from: k */
    public static void m10062k(KeyStore keyStore, InputStream inputStream) throws IOException, LoadException, KeyStoreException {
        try {
            try {
                for (X509Certificate x509Certificate : m10057f(CertificateFactory.getInstance("X.509"), inputStream)) {
                    try {
                        keyStore.setCertificateEntry(x509Certificate.getSubjectX500Principal().getName(), x509Certificate);
                    } catch (KeyStoreException e) {
                        throw new LoadException("Error loading certificate: " + e.getMessage(), e);
                    }
                }
            } catch (CertificateException e2) {
                throw new LoadException("Error loading certificate: " + e2.getMessage(), e2);
            }
        } catch (CertificateException e3) {
            throw LangUtil.mkAssert("Couldn't initialize X.509 CertificateFactory", e3);
        }
    }

    /* renamed from: com.dropbox.core.http.SSLConfig$b */
    /* loaded from: classes4.dex */
    public static final class C2274b extends SSLSocketFactory {

        /* renamed from: a */
        public final SSLSocketFactory f16575a;

        public C2274b(SSLSocketFactory sSLSocketFactory) {
            this.f16575a = sSLSocketFactory;
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(String str, int i) throws IOException {
            Socket createSocket = this.f16575a.createSocket(str, i);
            SSLConfig.m10060i((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public String[] getDefaultCipherSuites() {
            return this.f16575a.getDefaultCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public String[] getSupportedCipherSuites() {
            return this.f16575a.getSupportedCipherSuites();
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
            Socket createSocket = this.f16575a.createSocket(inetAddress, i);
            SSLConfig.m10060i((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
            Socket createSocket = this.f16575a.createSocket(str, i, inetAddress, i2);
            SSLConfig.m10060i((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
            Socket createSocket = this.f16575a.createSocket(inetAddress, i, inetAddress2, i2);
            SSLConfig.m10060i((SSLSocket) createSocket);
            return createSocket;
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
            Socket createSocket = this.f16575a.createSocket(socket, str, i, z);
            SSLConfig.m10060i((SSLSocket) createSocket);
            return createSocket;
        }
    }
}
