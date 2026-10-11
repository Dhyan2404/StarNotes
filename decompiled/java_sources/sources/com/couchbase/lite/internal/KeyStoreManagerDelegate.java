package com.couchbase.lite.internal;

import android.annotation.SuppressLint;
import android.security.KeyPairGeneratorSpec;
import android.security.keystore.KeyGenParameterSpec;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.KeyStoreManager;
import com.couchbase.lite.internal.core.C4KeyPair;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.security.Signature;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.spec.RSAKeyGenParameterSpec;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.security.auth.x500.X500Principal;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* loaded from: classes4.dex */
public class KeyStoreManagerDelegate extends KeyStoreManager {

    @VisibleForTesting
    static final String ANDROID_KEY_STORE = "AndroidKeyStore";

    @Nullable
    private PrivateKey getPrivateKey(@NonNull KeyStore keyStore, @NonNull String str) {
        try {
            Key key = keyStore.getKey(str, null);
            if (key instanceof PrivateKey) {
                return (PrivateKey) key;
            }
            Log.m9908w(LogDomain.LISTENER, "No private key found for alias " + str);
            return null;
        } catch (Exception e) {
            Log.m9909w(LogDomain.LISTENER, "Failed retrieving key for alias " + str, e);
            return null;
        }
    }

    @NonNull
    @RequiresApi(api = 23)
    private KeyPairGenerator initKeyFactoryM(@NonNull String str, @NonNull Date date, @NonNull X500Principal x500Principal) throws InvalidAlgorithmParameterException, NoSuchProviderException, NoSuchAlgorithmException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
        keyPairGenerator.initialize(new KeyGenParameterSpec.Builder(str, 15).setAlgorithmParameterSpec(new RSAKeyGenParameterSpec(KeyStoreManager.KeySize.BIT_2048.getBitLength(), RSAKeyGenParameterSpec.F0)).setDigests("NONE", MessageDigestAlgorithms.SHA_256).setSignaturePaddings("PKCS1").setBlockModes("ECB").setEncryptionPaddings("PKCS1Padding").setCertificateSubject(x500Principal).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(new Date()).setCertificateNotAfter(date).setUserAuthenticationRequired(false).build());
        return keyPairGenerator;
    }

    @NonNull
    @SuppressLint({"WrongConstant"})
    private KeyPairGenerator initKeyFactoryPreM(@NonNull String str, @NonNull Date date, @NonNull X500Principal x500Principal) throws NoSuchAlgorithmException, InvalidAlgorithmParameterException, NoSuchProviderException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
        keyPairGenerator.initialize(new KeyPairGeneratorSpec.Builder(CouchbaseLiteInternal.getContext()).setAlias(str).setKeyType("RSA").setKeySize(KeyStoreManager.KeySize.BIT_2048.getBitLength()).setSubject(x500Principal).setSerialNumber(BigInteger.ONE).setStartDate(new Date()).setEndDate(date).build());
        return keyPairGenerator;
    }

    @Nullable
    private KeyStore loadKeyStore() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return keyStore;
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            Log.m9909w(LogDomain.LISTENER, "Failed to load key store", e);
            return null;
        }
    }

    @Override // com.couchbase.lite.internal.KeyStoreManager
    @SuppressLint({"NewApi"})
    public void createSelfSignedCertEntry(@Nullable KeyStore keyStore, @NonNull String str, @Nullable char[] cArr, boolean z, @NonNull Map<String, String> map, @Nullable Date date) throws CouchbaseLiteException {
        if (findAlias(null, str)) {
            throw new CouchbaseLiteException("Key already exits: " + str, CBLError.Domain.CBLITE, 22);
        }
        HashMap hashMap = new HashMap(map);
        String str2 = (String) hashMap.remove(BaseTLSIdentity.CERT_ATTRIBUTE_COMMON_NAME);
        if (str2 == null) {
            throw new IllegalArgumentException("The Common Name (CN) attribute is required");
        }
        try {
            initKeyFactoryM(str, new Date(getExpirationMs(date)), new X500Principal("CN=" + str2, hashMap)).generateKeyPair();
        } catch (InvalidAlgorithmParameterException | NoSuchAlgorithmException | NoSuchProviderException e) {
            throw new CouchbaseLiteException("Failed to create entry: " + str, e);
        }
    }

    @Override // com.couchbase.lite.internal.KeyStoreManager
    @Nullable
    public byte[] decrypt(@NonNull C4KeyPair c4KeyPair, @NonNull byte[] bArr) {
        String keyAlias;
        PrivateKey privateKey;
        KeyStore loadKeyStore = loadKeyStore();
        if (loadKeyStore == null || (privateKey = getPrivateKey(loadKeyStore, (keyAlias = c4KeyPair.getKeyAlias()))) == null) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(2, privateKey);
            return cipher.doFinal(bArr);
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            Log.m9909w(LogDomain.LISTENER, "Decrypt: failed with " + keyAlias, e);
            return null;
        }
    }

    @Override // com.couchbase.lite.internal.KeyStoreManager
    @VisibleForTesting
    public int deleteEntries(@Nullable KeyStore keyStore, @NonNull InterfaceC2217Fn.Predicate<String> predicate) throws CouchbaseLiteException {
        KeyStore loadKeyStore = loadKeyStore();
        if (loadKeyStore != null) {
            return deleteStoreEntries(loadKeyStore, predicate);
        }
        throw new CouchbaseLiteError("Failed loading keystore");
    }

    @Override // com.couchbase.lite.internal.KeyStoreManager
    public boolean findAlias(@Nullable KeyStore keyStore, @NonNull String str) {
        KeyStore loadKeyStore = loadKeyStore();
        if (loadKeyStore == null) {
            throw new CouchbaseLiteError("Failed loading keystore");
        }
        try {
            return loadKeyStore.containsAlias(str);
        } catch (KeyStoreException e) {
            throw new CouchbaseLiteError("Failed loading keystore", e);
        }
    }

    @Override // com.couchbase.lite.internal.KeyStoreManager
    public void free(@NonNull C4KeyPair c4KeyPair) {
    }

    @Override // com.couchbase.lite.internal.KeyStoreManager
    @Nullable
    public List<Certificate> getCertificateChain(@Nullable KeyStore keyStore, @NonNull String str) {
        KeyStore loadKeyStore = loadKeyStore();
        if (loadKeyStore != null) {
            return getCertificates(loadKeyStore, str);
        }
        throw new CouchbaseLiteError("Failed loading keystore");
    }

    @Override // com.couchbase.lite.internal.KeyStoreManager
    @Nullable
    public PrivateKey getKey(@Nullable KeyStore keyStore, @NonNull String str, @Nullable char[] cArr) {
        KeyStore loadKeyStore = loadKeyStore();
        if (loadKeyStore != null) {
            return getPrivateKey(str, loadKeyStore, null);
        }
        throw new CouchbaseLiteError("Failed loading keystore");
    }

    @Override // com.couchbase.lite.internal.KeyStoreManager
    @Nullable
    public byte[] getKeyData(@NonNull C4KeyPair c4KeyPair) {
        KeyStore loadKeyStore = loadKeyStore();
        if (loadKeyStore == null) {
            return null;
        }
        return getEncodedKey(loadKeyStore, c4KeyPair);
    }

    @Override // com.couchbase.lite.internal.KeyStoreManager
    @Nullable
    public byte[] sign(@NonNull C4KeyPair c4KeyPair, @NonNull Signature.SignatureDigestAlgorithm signatureDigestAlgorithm, @NonNull byte[] bArr) {
        String keyAlias;
        PrivateKey privateKey;
        KeyStore loadKeyStore = loadKeyStore();
        if (loadKeyStore == null || (privateKey = getPrivateKey(loadKeyStore, (keyAlias = c4KeyPair.getKeyAlias()))) == null) {
            return null;
        }
        try {
            return Signature.signHashData(privateKey, bArr, signatureDigestAlgorithm);
        } catch (IOException | InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
            Log.m9909w(LogDomain.LISTENER, "Sign: failed with " + keyAlias, e);
            return null;
        }
    }
}
