package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4KeyPair;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.security.Signature;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.sunia.HTREnginev2.cyi;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public abstract class KeyStoreManager {
    public static final String ANON_COMMON_NAME = "CBLAnonymousCertificate";
    public static final int ANON_EXPIRATION_YEARS = 1;
    public static final String ANON_IDENTITY_ALIAS = "CBL-ANON-";
    protected static final String CIPHER_TYPE = "RSA/ECB/PKCS1Padding";

    @VisibleForTesting
    static final long CLOCK_DRIFT_MS = 60000;
    protected static final String ERROR_LOADING_KEYSTORE = "Failed loading keystore";
    private static final AtomicReference<KeyStoreManager> INSTANCE = new AtomicReference<>();

    /* loaded from: classes4.dex */
    public enum CertUsage {
        UNSPECIFIED(0),
        TLS_CLIENT(128),
        TLS_SERVER(64),
        EMAIL(32),
        OBJECT_SIGNING(16),
        TLS_CA(4),
        EMAIL_CA(2),
        OBJECT_SIGNING_CA(1);

        final byte code;

        CertUsage(int i) {
            this.code = (byte) i;
        }

        public byte getCode() {
            return this.code;
        }
    }

    /* loaded from: classes4.dex */
    public enum KeyAlgorithm {
        RSA
    }

    /* loaded from: classes4.dex */
    public enum KeySize {
        BIT_512(512),
        BIT_768(768),
        BIT_1024(1024),
        BIT_2048(2048),
        BIT_3072(3072),
        BIT_4096(4096);


        @NonNull
        private static final Map<Integer, KeySize> KEY_SIZES;
        final int len;

        static {
            HashMap hashMap = new HashMap();
            for (KeySize keySize : values()) {
                hashMap.put(Integer.valueOf(keySize.len), keySize);
            }
            KEY_SIZES = Collections.unmodifiableMap(hashMap);
        }

        KeySize(int i) {
            this.len = i;
        }

        @NonNull
        public static KeySize getKeySize(int i) {
            KeySize keySize = KEY_SIZES.get(Integer.valueOf(i));
            if (keySize != null) {
                return keySize;
            }
            throw new IllegalArgumentException("Unsupported key length: " + i);
        }

        public int getBitLength() {
            return this.len;
        }

        public int getByteLength() {
            return (this.len + 7) / 8;
        }
    }

    public static void checkAlias(@NonNull String str) throws CouchbaseLiteException {
        if (str.startsWith(ANON_IDENTITY_ALIAS)) {
            throw new CouchbaseLiteException("Attempt to use reserved identity prefix CBL-ANON-");
        }
    }

    @NonNull
    public static KeyStoreManager getInstance() {
        AtomicReference<KeyStoreManager> atomicReference = INSTANCE;
        KeyStoreManager keyStoreManager = atomicReference.get();
        if (keyStoreManager != null) {
            return keyStoreManager;
        }
        cyi.m53538a(atomicReference, null, new KeyStoreManagerDelegate());
        return atomicReference.get();
    }

    @VisibleForTesting
    public static void setInstance(KeyStoreManager keyStoreManager) {
        INSTANCE.set(keyStoreManager);
    }

    public abstract void createSelfSignedCertEntry(@Nullable KeyStore keyStore, @NonNull String str, @Nullable char[] cArr, boolean z, @NonNull Map<String, String> map, @Nullable Date date) throws CouchbaseLiteException;

    @Nullable
    public abstract byte[] decrypt(@NonNull C4KeyPair c4KeyPair, @NonNull byte[] bArr);

    public abstract int deleteEntries(@Nullable KeyStore keyStore, InterfaceC2217Fn.Predicate<String> predicate) throws CouchbaseLiteException;

    public final int deleteStoreEntries(@NonNull KeyStore keyStore, @NonNull InterfaceC2217Fn.Predicate<String> predicate) throws CouchbaseLiteException {
        try {
            ArrayList list = Collections.list(keyStore.aliases());
            int i = 0;
            for (int size = list.size() - 1; size >= 0; size--) {
                String str = (String) list.get(size);
                if (predicate.test(str)) {
                    try {
                        keyStore.deleteEntry(str);
                        i++;
                    } catch (KeyStoreException e) {
                        throw new CouchbaseLiteException("Delete: failed with " + str, e);
                    }
                }
            }
            return i;
        } catch (KeyStoreException e2) {
            throw new CouchbaseLiteException("Failed deleting entries", e2);
        }
    }

    public abstract boolean findAlias(@Nullable KeyStore keyStore, @NonNull String str) throws CouchbaseLiteException;

    public abstract void free(@NonNull C4KeyPair c4KeyPair);

    @Nullable
    public abstract List<Certificate> getCertificateChain(@Nullable KeyStore keyStore, @NonNull String str);

    @Nullable
    public final List<Certificate> getCertificates(@NonNull KeyStore keyStore, @NonNull String str) {
        Certificate[] certificateArr;
        try {
            certificateArr = keyStore.getCertificateChain(str);
        } catch (KeyStoreException e) {
            Log.m9905i(LogDomain.LISTENER, "Certs: no cert chain for " + str, e);
            certificateArr = null;
        }
        if (certificateArr == null || certificateArr.length <= 0) {
            return null;
        }
        return new ArrayList(Arrays.asList(certificateArr));
    }

    @Nullable
    public final byte[] getEncodedKey(@NonNull KeyStore keyStore, @NonNull C4KeyPair c4KeyPair) {
        try {
            Certificate certificate = keyStore.getCertificate(c4KeyPair.getKeyAlias());
            if (certificate == null) {
                Log.m9908w(LogDomain.LISTENER, "No certificate found for alias: " + c4KeyPair.getKeyAlias());
                return null;
            }
            PublicKey publicKey = certificate.getPublicKey();
            if (publicKey != null) {
                return publicKey.getEncoded();
            }
            Log.m9908w(LogDomain.LISTENER, "No public key for alias " + c4KeyPair.getKeyAlias());
            return null;
        } catch (KeyStoreException e) {
            throw new CouchbaseLiteError("Uninitialized key store", e);
        }
    }

    public final long getExpirationMs(@Nullable Date date) {
        if (date == null) {
            Calendar calendar = Calendar.getInstance();
            calendar.add(1, 1);
            return calendar.getTime().getTime();
        }
        long currentTimeMillis = System.currentTimeMillis();
        long time = date.getTime();
        if (time >= currentTimeMillis - 60000) {
            return Math.max(time, currentTimeMillis + 60000);
        }
        throw new IllegalArgumentException("Key/certificate expiration date must be in the future: " + date);
    }

    @Nullable
    public abstract PrivateKey getKey(@Nullable KeyStore keyStore, @NonNull String str, @Nullable char[] cArr);

    @Nullable
    public abstract byte[] getKeyData(@NonNull C4KeyPair c4KeyPair);

    @Nullable
    public final PrivateKey getPrivateKey(@NonNull String str, @NonNull KeyStore keyStore, @Nullable KeyStore.ProtectionParameter protectionParameter) {
        try {
            Key key = keyStore.getKey(str, protectionParameter instanceof KeyStore.PasswordProtection ? ((KeyStore.PasswordProtection) protectionParameter).getPassword() : null);
            if (key instanceof PrivateKey) {
                return (PrivateKey) key;
            }
        } catch (KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException e) {
            Log.m9909w(LogDomain.LISTENER, "Key: no private key found for alias: " + str, e);
        }
        return null;
    }

    @Nullable
    public abstract byte[] sign(@NonNull C4KeyPair c4KeyPair, @NonNull Signature.SignatureDigestAlgorithm signatureDigestAlgorithm, @NonNull byte[] bArr);
}
