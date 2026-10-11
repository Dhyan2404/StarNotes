package org.apache.http.conn.ssl;

import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;

@Deprecated
/* loaded from: classes12.dex */
public class SSLContextBuilder {

    /* renamed from: e */
    public static final String f110322e = "TLS";

    /* renamed from: f */
    public static final String f110323f = "SSL";

    /* renamed from: a */
    public String f110324a;

    /* renamed from: b */
    public final Set<KeyManager> f110325b = new LinkedHashSet();

    /* renamed from: c */
    public final Set<TrustManager> f110326c = new LinkedHashSet();

    /* renamed from: d */
    public SecureRandom f110327d;

    /* renamed from: org.apache.http.conn.ssl.SSLContextBuilder$a */
    /* loaded from: classes12.dex */
    public static class C19345a implements X509KeyManager {

        /* renamed from: a */
        public final X509KeyManager f110328a;

        /* renamed from: b */
        public final PrivateKeyStrategy f110329b;

        public C19345a(X509KeyManager x509KeyManager, PrivateKeyStrategy privateKeyStrategy) {
            this.f110328a = x509KeyManager;
            this.f110329b = privateKeyStrategy;
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseClientAlias(String[] strArr, Principal[] principalArr, Socket socket) {
            HashMap hashMap = new HashMap();
            for (String str : strArr) {
                String[] clientAliases = this.f110328a.getClientAliases(str, principalArr);
                if (clientAliases != null) {
                    for (String str2 : clientAliases) {
                        hashMap.put(str2, new PrivateKeyDetails(str, this.f110328a.getCertificateChain(str2)));
                    }
                }
            }
            return this.f110329b.chooseAlias(hashMap, socket);
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseServerAlias(String str, Principal[] principalArr, Socket socket) {
            HashMap hashMap = new HashMap();
            String[] serverAliases = this.f110328a.getServerAliases(str, principalArr);
            if (serverAliases != null) {
                for (String str2 : serverAliases) {
                    hashMap.put(str2, new PrivateKeyDetails(str, this.f110328a.getCertificateChain(str2)));
                }
            }
            return this.f110329b.chooseAlias(hashMap, socket);
        }

        @Override // javax.net.ssl.X509KeyManager
        public X509Certificate[] getCertificateChain(String str) {
            return this.f110328a.getCertificateChain(str);
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getClientAliases(String str, Principal[] principalArr) {
            return this.f110328a.getClientAliases(str, principalArr);
        }

        @Override // javax.net.ssl.X509KeyManager
        public PrivateKey getPrivateKey(String str) {
            return this.f110328a.getPrivateKey(str);
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getServerAliases(String str, Principal[] principalArr) {
            return this.f110328a.getServerAliases(str, principalArr);
        }
    }

    /* renamed from: org.apache.http.conn.ssl.SSLContextBuilder$b */
    /* loaded from: classes12.dex */
    public static class C19346b implements X509TrustManager {

        /* renamed from: a */
        public final X509TrustManager f110330a;

        /* renamed from: b */
        public final TrustStrategy f110331b;

        public C19346b(X509TrustManager x509TrustManager, TrustStrategy trustStrategy) {
            this.f110330a = x509TrustManager;
            this.f110331b = trustStrategy;
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            this.f110330a.checkClientTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            if (this.f110331b.isTrusted(x509CertificateArr, str)) {
                return;
            }
            this.f110330a.checkServerTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return this.f110330a.getAcceptedIssuers();
        }
    }

    public SSLContext build() throws NoSuchAlgorithmException, KeyManagementException {
        KeyManager[] keyManagerArr;
        String str = this.f110324a;
        if (str == null) {
            str = "TLS";
        }
        SSLContext sSLContext = SSLContext.getInstance(str);
        TrustManager[] trustManagerArr = null;
        if (this.f110325b.isEmpty()) {
            keyManagerArr = null;
        } else {
            Set<KeyManager> set = this.f110325b;
            keyManagerArr = (KeyManager[]) set.toArray(new KeyManager[set.size()]);
        }
        if (!this.f110326c.isEmpty()) {
            Set<TrustManager> set2 = this.f110326c;
            trustManagerArr = (TrustManager[]) set2.toArray(new TrustManager[set2.size()]);
        }
        sSLContext.init(keyManagerArr, trustManagerArr, this.f110327d);
        return sSLContext;
    }

    public SSLContextBuilder loadKeyMaterial(KeyStore keyStore, char[] cArr) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException {
        loadKeyMaterial(keyStore, cArr, null);
        return this;
    }

    public SSLContextBuilder loadTrustMaterial(KeyStore keyStore, TrustStrategy trustStrategy) throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStore);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        if (trustManagers != null) {
            if (trustStrategy != null) {
                for (int i = 0; i < trustManagers.length; i++) {
                    TrustManager trustManager = trustManagers[i];
                    if (trustManager instanceof X509TrustManager) {
                        trustManagers[i] = new C19346b((X509TrustManager) trustManager, trustStrategy);
                    }
                }
            }
            for (TrustManager trustManager2 : trustManagers) {
                this.f110326c.add(trustManager2);
            }
        }
        return this;
    }

    public SSLContextBuilder setSecureRandom(SecureRandom secureRandom) {
        this.f110327d = secureRandom;
        return this;
    }

    public SSLContextBuilder useProtocol(String str) {
        this.f110324a = str;
        return this;
    }

    public SSLContextBuilder useSSL() {
        this.f110324a = "SSL";
        return this;
    }

    public SSLContextBuilder useTLS() {
        this.f110324a = "TLS";
        return this;
    }

    public SSLContextBuilder loadKeyMaterial(KeyStore keyStore, char[] cArr, PrivateKeyStrategy privateKeyStrategy) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException {
        KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        keyManagerFactory.init(keyStore, cArr);
        KeyManager[] keyManagers = keyManagerFactory.getKeyManagers();
        if (keyManagers != null) {
            if (privateKeyStrategy != null) {
                for (int i = 0; i < keyManagers.length; i++) {
                    KeyManager keyManager = keyManagers[i];
                    if (keyManager instanceof X509KeyManager) {
                        keyManagers[i] = new C19345a((X509KeyManager) keyManager, privateKeyStrategy);
                    }
                }
            }
            for (KeyManager keyManager2 : keyManagers) {
                this.f110325b.add(keyManager2);
            }
        }
        return this;
    }

    public SSLContextBuilder loadTrustMaterial(KeyStore keyStore) throws NoSuchAlgorithmException, KeyStoreException {
        return loadTrustMaterial(keyStore, null);
    }
}
