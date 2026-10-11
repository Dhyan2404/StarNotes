package org.apache.http.ssl;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509ExtendedKeyManager;
import javax.net.ssl.X509TrustManager;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class SSLContextBuilder {

    /* renamed from: i */
    public static final String f111150i = "TLS";

    /* renamed from: a */
    public String f111151a;

    /* renamed from: g */
    public SecureRandom f111157g;

    /* renamed from: h */
    public Provider f111158h;

    /* renamed from: c */
    public String f111153c = KeyManagerFactory.getDefaultAlgorithm();

    /* renamed from: d */
    public String f111154d = KeyStore.getDefaultType();

    /* renamed from: f */
    public String f111156f = TrustManagerFactory.getDefaultAlgorithm();

    /* renamed from: b */
    public final Set<KeyManager> f111152b = new LinkedHashSet();

    /* renamed from: e */
    public final Set<TrustManager> f111155e = new LinkedHashSet();

    /* renamed from: org.apache.http.ssl.SSLContextBuilder$a */
    /* loaded from: classes12.dex */
    public static class C19391a extends X509ExtendedKeyManager {

        /* renamed from: a */
        public final X509ExtendedKeyManager f111159a;

        /* renamed from: b */
        public final PrivateKeyStrategy f111160b;

        public C19391a(X509ExtendedKeyManager x509ExtendedKeyManager, PrivateKeyStrategy privateKeyStrategy) {
            this.f111159a = x509ExtendedKeyManager;
            this.f111160b = privateKeyStrategy;
        }

        /* renamed from: a */
        public Map<String, PrivateKeyDetails> m68609a(String[] strArr, Principal[] principalArr) {
            HashMap hashMap = new HashMap();
            for (String str : strArr) {
                String[] clientAliases = this.f111159a.getClientAliases(str, principalArr);
                if (clientAliases != null) {
                    for (String str2 : clientAliases) {
                        hashMap.put(str2, new PrivateKeyDetails(str, this.f111159a.getCertificateChain(str2)));
                    }
                }
            }
            return hashMap;
        }

        /* renamed from: b */
        public Map<String, PrivateKeyDetails> m68610b(String str, Principal[] principalArr) {
            HashMap hashMap = new HashMap();
            String[] serverAliases = this.f111159a.getServerAliases(str, principalArr);
            if (serverAliases != null) {
                for (String str2 : serverAliases) {
                    hashMap.put(str2, new PrivateKeyDetails(str, this.f111159a.getCertificateChain(str2)));
                }
            }
            return hashMap;
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseClientAlias(String[] strArr, Principal[] principalArr, Socket socket) {
            return this.f111160b.chooseAlias(m68609a(strArr, principalArr), socket);
        }

        @Override // javax.net.ssl.X509ExtendedKeyManager
        public String chooseEngineClientAlias(String[] strArr, Principal[] principalArr, SSLEngine sSLEngine) {
            return this.f111160b.chooseAlias(m68609a(strArr, principalArr), null);
        }

        @Override // javax.net.ssl.X509ExtendedKeyManager
        public String chooseEngineServerAlias(String str, Principal[] principalArr, SSLEngine sSLEngine) {
            return this.f111160b.chooseAlias(m68610b(str, principalArr), null);
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseServerAlias(String str, Principal[] principalArr, Socket socket) {
            return this.f111160b.chooseAlias(m68610b(str, principalArr), socket);
        }

        @Override // javax.net.ssl.X509KeyManager
        public X509Certificate[] getCertificateChain(String str) {
            return this.f111159a.getCertificateChain(str);
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getClientAliases(String str, Principal[] principalArr) {
            return this.f111159a.getClientAliases(str, principalArr);
        }

        @Override // javax.net.ssl.X509KeyManager
        public PrivateKey getPrivateKey(String str) {
            return this.f111159a.getPrivateKey(str);
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getServerAliases(String str, Principal[] principalArr) {
            return this.f111159a.getServerAliases(str, principalArr);
        }
    }

    /* renamed from: org.apache.http.ssl.SSLContextBuilder$b */
    /* loaded from: classes12.dex */
    public static class C19392b implements X509TrustManager {

        /* renamed from: a */
        public final X509TrustManager f111161a;

        /* renamed from: b */
        public final TrustStrategy f111162b;

        public C19392b(X509TrustManager x509TrustManager, TrustStrategy trustStrategy) {
            this.f111161a = x509TrustManager;
            this.f111162b = trustStrategy;
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            this.f111161a.checkClientTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            if (this.f111162b.isTrusted(x509CertificateArr, str)) {
                return;
            }
            this.f111161a.checkServerTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return this.f111161a.getAcceptedIssuers();
        }
    }

    public static SSLContextBuilder create() {
        return new SSLContextBuilder();
    }

    public SSLContext build() throws NoSuchAlgorithmException, KeyManagementException {
        String str = this.f111151a;
        if (str == null) {
            str = "TLS";
        }
        Provider provider = this.f111158h;
        SSLContext sSLContext = provider != null ? SSLContext.getInstance(str, provider) : SSLContext.getInstance(str);
        initSSLContext(sSLContext, this.f111152b, this.f111155e, this.f111157g);
        return sSLContext;
    }

    public void initSSLContext(SSLContext sSLContext, Collection<KeyManager> collection, Collection<TrustManager> collection2, SecureRandom secureRandom) throws KeyManagementException {
        sSLContext.init(!collection.isEmpty() ? (KeyManager[]) collection.toArray(new KeyManager[collection.size()]) : null, collection2.isEmpty() ? null : (TrustManager[]) collection2.toArray(new TrustManager[collection2.size()]), secureRandom);
    }

    public SSLContextBuilder loadKeyMaterial(KeyStore keyStore, char[] cArr, PrivateKeyStrategy privateKeyStrategy) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException {
        String str = this.f111153c;
        if (str == null) {
            str = KeyManagerFactory.getDefaultAlgorithm();
        }
        KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(str);
        keyManagerFactory.init(keyStore, cArr);
        KeyManager[] keyManagers = keyManagerFactory.getKeyManagers();
        if (keyManagers != null) {
            if (privateKeyStrategy != null) {
                for (int i = 0; i < keyManagers.length; i++) {
                    KeyManager keyManager = keyManagers[i];
                    if (keyManager instanceof X509ExtendedKeyManager) {
                        keyManagers[i] = new C19391a((X509ExtendedKeyManager) keyManager, privateKeyStrategy);
                    }
                }
            }
            Collections.addAll(this.f111152b, keyManagers);
        }
        return this;
    }

    public SSLContextBuilder loadTrustMaterial(KeyStore keyStore, TrustStrategy trustStrategy) throws NoSuchAlgorithmException, KeyStoreException {
        String str = this.f111156f;
        if (str == null) {
            str = TrustManagerFactory.getDefaultAlgorithm();
        }
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(str);
        trustManagerFactory.init(keyStore);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        if (trustManagers != null) {
            if (trustStrategy != null) {
                for (int i = 0; i < trustManagers.length; i++) {
                    TrustManager trustManager = trustManagers[i];
                    if (trustManager instanceof X509TrustManager) {
                        trustManagers[i] = new C19392b((X509TrustManager) trustManager, trustStrategy);
                    }
                }
            }
            Collections.addAll(this.f111155e, trustManagers);
        }
        return this;
    }

    public SSLContextBuilder setKeyManagerFactoryAlgorithm(String str) {
        this.f111153c = str;
        return this;
    }

    public SSLContextBuilder setKeyStoreType(String str) {
        this.f111154d = str;
        return this;
    }

    public SSLContextBuilder setProtocol(String str) {
        this.f111151a = str;
        return this;
    }

    public SSLContextBuilder setProvider(Provider provider) {
        this.f111158h = provider;
        return this;
    }

    public SSLContextBuilder setSecureRandom(SecureRandom secureRandom) {
        this.f111157g = secureRandom;
        return this;
    }

    public SSLContextBuilder setTrustManagerFactoryAlgorithm(String str) {
        this.f111156f = str;
        return this;
    }

    public String toString() {
        return "[provider=" + this.f111158h + ", protocol=" + this.f111151a + ", keyStoreType=" + this.f111154d + ", keyManagerFactoryAlgorithm=" + this.f111153c + ", keyManagers=" + this.f111152b + ", trustManagerFactoryAlgorithm=" + this.f111156f + ", trustManagers=" + this.f111155e + ", secureRandom=" + this.f111157g + IteratorUtils.f104924b;
    }

    @Deprecated
    public SSLContextBuilder useProtocol(String str) {
        this.f111151a = str;
        return this;
    }

    public SSLContextBuilder setProvider(String str) {
        this.f111158h = Security.getProvider(str);
        return this;
    }

    public SSLContextBuilder loadKeyMaterial(KeyStore keyStore, char[] cArr) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException {
        return loadKeyMaterial(keyStore, cArr, (PrivateKeyStrategy) null);
    }

    public SSLContextBuilder loadTrustMaterial(TrustStrategy trustStrategy) throws NoSuchAlgorithmException, KeyStoreException {
        return loadTrustMaterial((KeyStore) null, trustStrategy);
    }

    public SSLContextBuilder loadKeyMaterial(File file, char[] cArr, char[] cArr2, PrivateKeyStrategy privateKeyStrategy) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException, CertificateException, IOException {
        Args.notNull(file, "Keystore file");
        KeyStore keyStore = KeyStore.getInstance(this.f111154d);
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            keyStore.load(fileInputStream, cArr);
            fileInputStream.close();
            return loadKeyMaterial(keyStore, cArr2, privateKeyStrategy);
        } catch (Throwable th) {
            fileInputStream.close();
            throw th;
        }
    }

    public SSLContextBuilder loadTrustMaterial(File file, char[] cArr, TrustStrategy trustStrategy) throws NoSuchAlgorithmException, KeyStoreException, CertificateException, IOException {
        Args.notNull(file, "Truststore file");
        KeyStore keyStore = KeyStore.getInstance(this.f111154d);
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            keyStore.load(fileInputStream, cArr);
            fileInputStream.close();
            return loadTrustMaterial(keyStore, trustStrategy);
        } catch (Throwable th) {
            fileInputStream.close();
            throw th;
        }
    }

    public SSLContextBuilder loadKeyMaterial(File file, char[] cArr, char[] cArr2) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException, CertificateException, IOException {
        return loadKeyMaterial(file, cArr, cArr2, (PrivateKeyStrategy) null);
    }

    public SSLContextBuilder loadTrustMaterial(File file, char[] cArr) throws NoSuchAlgorithmException, KeyStoreException, CertificateException, IOException {
        return loadTrustMaterial(file, cArr, (TrustStrategy) null);
    }

    public SSLContextBuilder loadKeyMaterial(URL url, char[] cArr, char[] cArr2, PrivateKeyStrategy privateKeyStrategy) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException, CertificateException, IOException {
        Args.notNull(url, "Keystore URL");
        KeyStore keyStore = KeyStore.getInstance(this.f111154d);
        InputStream openStream = url.openStream();
        try {
            keyStore.load(openStream, cArr);
            openStream.close();
            return loadKeyMaterial(keyStore, cArr2, privateKeyStrategy);
        } catch (Throwable th) {
            openStream.close();
            throw th;
        }
    }

    public SSLContextBuilder loadTrustMaterial(File file) throws NoSuchAlgorithmException, KeyStoreException, CertificateException, IOException {
        return loadTrustMaterial(file, (char[]) null);
    }

    public SSLContextBuilder loadTrustMaterial(URL url, char[] cArr, TrustStrategy trustStrategy) throws NoSuchAlgorithmException, KeyStoreException, CertificateException, IOException {
        Args.notNull(url, "Truststore URL");
        KeyStore keyStore = KeyStore.getInstance(this.f111154d);
        InputStream openStream = url.openStream();
        try {
            keyStore.load(openStream, cArr);
            openStream.close();
            return loadTrustMaterial(keyStore, trustStrategy);
        } catch (Throwable th) {
            openStream.close();
            throw th;
        }
    }

    public SSLContextBuilder loadKeyMaterial(URL url, char[] cArr, char[] cArr2) throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException, CertificateException, IOException {
        return loadKeyMaterial(url, cArr, cArr2, (PrivateKeyStrategy) null);
    }

    public SSLContextBuilder loadTrustMaterial(URL url, char[] cArr) throws NoSuchAlgorithmException, KeyStoreException, CertificateException, IOException {
        return loadTrustMaterial(url, cArr, (TrustStrategy) null);
    }
}
