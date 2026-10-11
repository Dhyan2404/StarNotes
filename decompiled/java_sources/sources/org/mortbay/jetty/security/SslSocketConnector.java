package org.mortbay.jetty.security;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.security.Security;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import org.apache.commons.lang3.SystemUtils;
import org.mortbay.io.EndPoint;
import org.mortbay.io.bio.SocketEndPoint;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.bio.SocketConnector;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;

/* loaded from: classes13.dex */
public class SslSocketConnector extends SocketConnector {
    public static final String DEFAULT_KEYSTORE;
    public static final String KEYPASSWORD_PROPERTY = "jetty.ssl.keypassword";
    public static final String PASSWORD_PROPERTY = "jetty.ssl.password";

    /* renamed from: X0 */
    public static final String f115059X0;

    /* renamed from: Y0 */
    public static /* synthetic */ Class f115060Y0;

    /* renamed from: K0 */
    public transient Password f115065K0;

    /* renamed from: L0 */
    public transient Password f115066L0;

    /* renamed from: M0 */
    public transient Password f115067M0;

    /* renamed from: O0 */
    public String f115069O0;

    /* renamed from: P0 */
    public String f115070P0;

    /* renamed from: Q0 */
    public String f115071Q0;

    /* renamed from: R0 */
    public String f115072R0;

    /* renamed from: S0 */
    public String f115073S0;

    /* renamed from: T0 */
    public String f115074T0;

    /* renamed from: U0 */
    public boolean f115075U0;

    /* renamed from: V0 */
    public int f115076V0;

    /* renamed from: W0 */
    public boolean f115077W0;

    /* renamed from: G0 */
    public String[] f115061G0 = null;

    /* renamed from: H0 */
    public String f115062H0 = DEFAULT_KEYSTORE;

    /* renamed from: I0 */
    public String f115063I0 = "JKS";

    /* renamed from: J0 */
    public boolean f115064J0 = false;

    /* renamed from: N0 */
    public String f115068N0 = "TLS";

    /* loaded from: classes13.dex */
    public class SslConnection extends SocketConnector.Connection {
        public SslConnection(Socket socket) throws IOException {
            super(socket);
        }

        @Override // org.mortbay.jetty.bio.SocketConnector.Connection, java.lang.Runnable
        public void run() {
            try {
                int handshakeTimeout = SslSocketConnector.this.getHandshakeTimeout();
                int soTimeout = this._socket.getSoTimeout();
                if (handshakeTimeout > 0) {
                    this._socket.setSoTimeout(handshakeTimeout);
                }
                SSLSocket sSLSocket = (SSLSocket) this._socket;
                sSLSocket.addHandshakeCompletedListener(new C20407f(this, sSLSocket));
                sSLSocket.startHandshake();
                if (handshakeTimeout > 0) {
                    this._socket.setSoTimeout(soTimeout);
                }
                super.run();
            } catch (SSLException e) {
                Log.warn(e);
                try {
                    close();
                } catch (IOException e2) {
                    Log.ignore(e2);
                }
            } catch (IOException e3) {
                Log.debug(e3);
                try {
                    close();
                } catch (IOException e4) {
                    Log.ignore(e4);
                }
            }
        }

        @Override // org.mortbay.io.bio.SocketEndPoint, org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
        public void shutdownOutput() throws IOException {
            close();
        }
    }

    /* renamed from: org.mortbay.jetty.security.SslSocketConnector$a */
    /* loaded from: classes13.dex */
    public class C20401a {

        /* renamed from: a */
        public X509Certificate[] f115079a;

        /* renamed from: b */
        public Integer f115080b;

        public C20401a(Integer num, X509Certificate[] x509CertificateArr) {
            this.f115080b = num;
            this.f115079a = x509CertificateArr;
        }

        /* renamed from: a */
        public X509Certificate[] m71597a() {
            return this.f115079a;
        }

        /* renamed from: b */
        public Integer m71598b() {
            return this.f115080b;
        }
    }

    static {
        Class cls = f115060Y0;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.security.SslSocketConnector$CachedInfo");
            f115060Y0 = cls;
        }
        f115059X0 = cls.getName();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(System.getProperty(SystemUtils.f107421b));
        stringBuffer.append(File.separator);
        stringBuffer.append(".keystore");
        DEFAULT_KEYSTORE = stringBuffer.toString();
    }

    public SslSocketConnector() {
        this.f115071Q0 = Security.getProperty("ssl.KeyManagerFactory.algorithm") == null ? "SunX509" : Security.getProperty("ssl.KeyManagerFactory.algorithm");
        this.f115072R0 = Security.getProperty("ssl.TrustManagerFactory.algorithm") != null ? Security.getProperty("ssl.TrustManagerFactory.algorithm") : "SunX509";
        this.f115074T0 = "JKS";
        this.f115075U0 = false;
        this.f115076V0 = 0;
        this.f115077W0 = false;
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    /* renamed from: l */
    public static X509Certificate[] m71595l(SSLSession sSLSession) {
        try {
            javax.security.cert.X509Certificate[] peerCertificateChain = sSLSession.getPeerCertificateChain();
            if (peerCertificateChain != null && peerCertificateChain.length != 0) {
                int length = peerCertificateChain.length;
                X509Certificate[] x509CertificateArr = new X509Certificate[length];
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                for (int i = 0; i < length; i++) {
                    x509CertificateArr[i] = (X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(peerCertificateChain[i].getEncoded()));
                }
                return x509CertificateArr;
            }
            return null;
        } catch (SSLPeerUnverifiedException unused) {
            return null;
        } catch (Exception e) {
            Log.warn(Log.EXCEPTION, (Throwable) e);
            return null;
        }
    }

    @Override // org.mortbay.jetty.bio.SocketConnector, org.mortbay.jetty.AbstractConnector
    public void accept(int i) throws IOException, InterruptedException {
        try {
            Socket accept = this._serverSocket.accept();
            configure(accept);
            new SslConnection(accept).dispatch();
        } catch (SSLException e) {
            Log.warn(e);
            try {
                stop();
            } catch (Exception e2) {
                Log.warn(e2);
                throw new IllegalStateException(e2.getMessage());
            }
        }
    }

    @Override // org.mortbay.jetty.AbstractConnector
    public void configure(Socket socket) throws IOException {
        super.configure(socket);
    }

    public SSLServerSocketFactory createFactory() throws Exception {
        if (this.f115073S0 == null) {
            this.f115073S0 = this.f115062H0;
            this.f115074T0 = this.f115063I0;
        }
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            String str = this.f115062H0;
            InputStream inputStream3 = str != null ? Resource.newResource(str).getInputStream() : null;
            try {
                KeyStore keyStore = KeyStore.getInstance(this.f115063I0);
                Password password = this.f115065K0;
                keyStore.load(inputStream3, password == null ? null : password.toString().toCharArray());
                if (inputStream3 != null) {
                    inputStream3.close();
                }
                KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(this.f115071Q0);
                Password password2 = this.f115066L0;
                keyManagerFactory.init(keyStore, password2 == null ? null : password2.toString().toCharArray());
                KeyManager[] keyManagers = keyManagerFactory.getKeyManagers();
                try {
                    String str2 = this.f115073S0;
                    InputStream inputStream4 = str2 != null ? Resource.newResource(str2).getInputStream() : null;
                    try {
                        KeyStore keyStore2 = KeyStore.getInstance(this.f115074T0);
                        Password password3 = this.f115067M0;
                        keyStore2.load(inputStream4, password3 == null ? null : password3.toString().toCharArray());
                        if (inputStream4 != null) {
                            inputStream4.close();
                        }
                        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(this.f115072R0);
                        trustManagerFactory.init(keyStore2);
                        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                        String str3 = this.f115070P0;
                        SecureRandom secureRandom = str3 != null ? SecureRandom.getInstance(str3) : null;
                        String str4 = this.f115069O0;
                        String str5 = this.f115068N0;
                        SSLContext sSLContext = str4 == null ? SSLContext.getInstance(str5) : SSLContext.getInstance(str5, str4);
                        sSLContext.init(keyManagers, trustManagers, secureRandom);
                        return sSLContext.getServerSocketFactory();
                    } catch (Throwable th) {
                        th = th;
                        inputStream2 = inputStream4;
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = inputStream3;
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // org.mortbay.jetty.bio.SocketConnector, org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void customize(EndPoint endPoint, Request request) throws IOException {
        Object obj;
        Object obj2;
        super.customize(endPoint, request);
        request.setScheme("https");
        try {
            SSLSession session = ((SSLSocket) ((SocketEndPoint) endPoint).getTransport()).getSession();
            String cipherSuite = session.getCipherSuite();
            String str = f115059X0;
            C20401a c20401a = (C20401a) session.getValue(str);
            if (c20401a != null) {
                obj = c20401a.m71598b();
                obj2 = c20401a.m71597a();
            } else {
                Integer num = new Integer(ServletSSL.deduceKeyLength(cipherSuite));
                X509Certificate[] m71595l = m71595l(session);
                session.putValue(str, new C20401a(num, m71595l));
                obj = num;
                obj2 = m71595l;
            }
            if (obj2 != null) {
                request.setAttribute("javax.servlet.request.X509Certificate", obj2);
            } else if (this.f115064J0) {
                throw new IllegalStateException("no client auth");
            }
            request.setAttribute("javax.servlet.request.cipher_suite", cipherSuite);
            request.setAttribute("javax.servlet.request.key_size", obj);
        } catch (Exception e) {
            Log.warn(Log.EXCEPTION, (Throwable) e);
        }
    }

    public String[] getExcludeCipherSuites() {
        return this.f115061G0;
    }

    public int getHandshakeTimeout() {
        return this.f115076V0;
    }

    public String getKeystore() {
        return this.f115062H0;
    }

    public String getKeystoreType() {
        return this.f115063I0;
    }

    public boolean getNeedClientAuth() {
        return this.f115064J0;
    }

    public String getProtocol() {
        return this.f115068N0;
    }

    public String getProvider() {
        return this.f115069O0;
    }

    public String getSecureRandomAlgorithm() {
        return this.f115070P0;
    }

    public String getSslKeyManagerFactoryAlgorithm() {
        return this.f115071Q0;
    }

    public String getSslTrustManagerFactoryAlgorithm() {
        return this.f115072R0;
    }

    public String getTruststore() {
        return this.f115073S0;
    }

    public String getTruststoreType() {
        return this.f115074T0;
    }

    public boolean getWantClientAuth() {
        return this.f115075U0;
    }

    public boolean isAllowRenegotiate() {
        return this.f115077W0;
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public boolean isConfidential(Request request) {
        int confidentialPort = getConfidentialPort();
        return confidentialPort == 0 || confidentialPort == request.getServerPort();
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public boolean isIntegral(Request request) {
        int integralPort = getIntegralPort();
        return integralPort == 0 || integralPort == request.getServerPort();
    }

    @Override // org.mortbay.jetty.bio.SocketConnector
    public ServerSocket newServerSocket(String str, int i, int i2) throws IOException {
        try {
            SSLServerSocketFactory createFactory = createFactory();
            SSLServerSocket sSLServerSocket = (SSLServerSocket) (str == null ? createFactory.createServerSocket(i, i2) : createFactory.createServerSocket(i, i2, InetAddress.getByName(str)));
            boolean z = this.f115075U0;
            if (z) {
                sSLServerSocket.setWantClientAuth(z);
            }
            boolean z2 = this.f115064J0;
            if (z2) {
                sSLServerSocket.setNeedClientAuth(z2);
            }
            String[] strArr = this.f115061G0;
            if (strArr != null && strArr.length > 0) {
                List<String> asList = Arrays.asList(strArr);
                ArrayList arrayList = new ArrayList(Arrays.asList(sSLServerSocket.getEnabledCipherSuites()));
                for (String str2 : asList) {
                    if (arrayList.contains(str2)) {
                        arrayList.remove(str2);
                    }
                }
                sSLServerSocket.setEnabledCipherSuites((String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            return sSLServerSocket;
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            Log.warn(e2.toString());
            Log.debug(e2);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("!JsseListener: ");
            stringBuffer.append(e2);
            throw new IOException(stringBuffer.toString());
        }
    }

    public void setAllowRenegotiate(boolean z) {
        this.f115077W0 = z;
    }

    public void setExcludeCipherSuites(String[] strArr) {
        this.f115061G0 = strArr;
    }

    public void setHandshakeTimeout(int i) {
        this.f115076V0 = i;
    }

    public void setKeyPassword(String str) {
        this.f115066L0 = Password.getPassword(KEYPASSWORD_PROPERTY, str, null);
    }

    public void setKeystore(String str) {
        this.f115062H0 = str;
    }

    public void setKeystoreType(String str) {
        this.f115063I0 = str;
    }

    public void setNeedClientAuth(boolean z) {
        this.f115064J0 = z;
    }

    public void setPassword(String str) {
        this.f115065K0 = Password.getPassword(PASSWORD_PROPERTY, str, null);
    }

    public void setProtocol(String str) {
        this.f115068N0 = str;
    }

    public void setProvider(String str) {
        this.f115069O0 = str;
    }

    public void setSecureRandomAlgorithm(String str) {
        this.f115070P0 = str;
    }

    public void setSslKeyManagerFactoryAlgorithm(String str) {
        this.f115071Q0 = str;
    }

    public void setSslTrustManagerFactoryAlgorithm(String str) {
        this.f115072R0 = str;
    }

    public void setTrustPassword(String str) {
        this.f115067M0 = Password.getPassword(PASSWORD_PROPERTY, str, null);
    }

    public void setTruststore(String str) {
        this.f115073S0 = str;
    }

    public void setTruststoreType(String str) {
        this.f115074T0 = str;
    }

    public void setWantClientAuth(boolean z) {
        this.f115075U0 = z;
    }
}
