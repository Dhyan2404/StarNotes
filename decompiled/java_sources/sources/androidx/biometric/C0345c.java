package androidx.biometric;

import android.annotation.SuppressLint;
import android.hardware.biometrics.BiometricPrompt;
import android.os.Build;
import android.security.identity.IdentityCredential;
import android.security.identity.PresentationSession;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.biometric.BiometricPrompt;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

/* renamed from: androidx.biometric.c */
/* loaded from: classes3.dex */
public class C0345c {

    /* renamed from: a */
    public static final String f2316a = "CryptoObjectUtils";

    /* renamed from: b */
    public static final String f2317b = "androidxBiometric";

    /* renamed from: c */
    public static final String f2318c = "AndroidKeyStore";

    @RequiresApi(23)
    /* renamed from: androidx.biometric.c$a */
    /* loaded from: classes3.dex */
    public static class a {
        private a() {
        }

        @NonNull
        /* renamed from: a */
        public static KeyGenParameterSpec m1200a(@NonNull KeyGenParameterSpec.Builder builder) {
            return builder.build();
        }

        @NonNull
        /* renamed from: b */
        public static KeyGenParameterSpec.Builder m1201b(@NonNull String str, int i) {
            return new KeyGenParameterSpec.Builder(str, i);
        }

        /* renamed from: c */
        public static void m1202c(@NonNull KeyGenerator keyGenerator, @NonNull KeyGenParameterSpec keyGenParameterSpec) throws InvalidAlgorithmParameterException {
            keyGenerator.init(keyGenParameterSpec);
        }

        /* renamed from: d */
        public static void m1203d(@NonNull KeyGenParameterSpec.Builder builder) {
            builder.setBlockModes("CBC");
        }

        /* renamed from: e */
        public static void m1204e(@NonNull KeyGenParameterSpec.Builder builder) {
            builder.setEncryptionPaddings("PKCS7Padding");
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.biometric.c$b */
    /* loaded from: classes3.dex */
    public static class b {
        private b() {
        }

        @NonNull
        /* renamed from: a */
        public static BiometricPrompt.CryptoObject m1205a(@NonNull Signature signature) {
            return new BiometricPrompt.CryptoObject(signature);
        }

        @NonNull
        /* renamed from: b */
        public static BiometricPrompt.CryptoObject m1206b(@NonNull Cipher cipher) {
            return new BiometricPrompt.CryptoObject(cipher);
        }

        @NonNull
        /* renamed from: c */
        public static BiometricPrompt.CryptoObject m1207c(@NonNull Mac mac) {
            return new BiometricPrompt.CryptoObject(mac);
        }

        @Nullable
        /* renamed from: d */
        public static Cipher m1208d(@NonNull BiometricPrompt.CryptoObject cryptoObject) {
            return cryptoObject.getCipher();
        }

        @Nullable
        /* renamed from: e */
        public static Mac m1209e(@NonNull BiometricPrompt.CryptoObject cryptoObject) {
            return cryptoObject.getMac();
        }

        @Nullable
        /* renamed from: f */
        public static Signature m1210f(@NonNull BiometricPrompt.CryptoObject cryptoObject) {
            return cryptoObject.getSignature();
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.biometric.c$c */
    /* loaded from: classes3.dex */
    public static class c {
        private c() {
        }

        @NonNull
        /* renamed from: a */
        public static BiometricPrompt.CryptoObject m1211a(@NonNull IdentityCredential identityCredential) {
            return new BiometricPrompt.CryptoObject(identityCredential);
        }

        @Nullable
        /* renamed from: b */
        public static IdentityCredential m1212b(@NonNull BiometricPrompt.CryptoObject cryptoObject) {
            return cryptoObject.getIdentityCredential();
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.biometric.c$d */
    /* loaded from: classes3.dex */
    public static class d {
        private d() {
        }

        @NonNull
        /* renamed from: a */
        public static BiometricPrompt.CryptoObject m1213a(@NonNull PresentationSession presentationSession) {
            return new BiometricPrompt.CryptoObject(presentationSession);
        }

        @Nullable
        /* renamed from: b */
        public static PresentationSession m1214b(@NonNull BiometricPrompt.CryptoObject cryptoObject) {
            return cryptoObject.getPresentationSession();
        }
    }

    @Nullable
    @RequiresApi(23)
    @SuppressLint({"TrulyRandom"})
    /* renamed from: a */
    public static BiometricPrompt.CryptoObject m1195a() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            KeyGenParameterSpec.Builder m1201b = a.m1201b(f2317b, 3);
            a.m1203d(m1201b);
            a.m1204e(m1201b);
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
            a.m1202c(keyGenerator, a.m1200a(m1201b));
            keyGenerator.generateKey();
            SecretKey secretKey = (SecretKey) keyStore.getKey(f2317b, null);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(1, secretKey);
            return new BiometricPrompt.CryptoObject(cipher);
        } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | UnrecoverableKeyException | CertificateException | NoSuchPaddingException e) {
            Log.w(f2316a, "Failed to create fake crypto object.", e);
            return null;
        }
    }

    @Nullable
    @RequiresApi(28)
    /* renamed from: b */
    public static BiometricPrompt.CryptoObject m1196b(@Nullable BiometricPrompt.CryptoObject cryptoObject) {
        PresentationSession m1214b;
        IdentityCredential m1212b;
        if (cryptoObject == null) {
            return null;
        }
        Cipher m1208d = b.m1208d(cryptoObject);
        if (m1208d != null) {
            return new BiometricPrompt.CryptoObject(m1208d);
        }
        Signature m1210f = b.m1210f(cryptoObject);
        if (m1210f != null) {
            return new BiometricPrompt.CryptoObject(m1210f);
        }
        Mac m1209e = b.m1209e(cryptoObject);
        if (m1209e != null) {
            return new BiometricPrompt.CryptoObject(m1209e);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 && (m1212b = c.m1212b(cryptoObject)) != null) {
            return new BiometricPrompt.CryptoObject(m1212b);
        }
        if (i < 33 || (m1214b = d.m1214b(cryptoObject)) == null) {
            return null;
        }
        return new BiometricPrompt.CryptoObject(m1214b);
    }

    @Nullable
    /* renamed from: c */
    public static BiometricPrompt.CryptoObject m1197c(@Nullable FingerprintManagerCompat.CryptoObject cryptoObject) {
        if (cryptoObject == null) {
            return null;
        }
        Cipher cipher = cryptoObject.getCipher();
        if (cipher != null) {
            return new BiometricPrompt.CryptoObject(cipher);
        }
        Signature signature = cryptoObject.getSignature();
        if (signature != null) {
            return new BiometricPrompt.CryptoObject(signature);
        }
        Mac mac = cryptoObject.getMac();
        if (mac != null) {
            return new BiometricPrompt.CryptoObject(mac);
        }
        return null;
    }

    @Nullable
    @RequiresApi(28)
    /* renamed from: d */
    public static BiometricPrompt.CryptoObject m1198d(@Nullable BiometricPrompt.CryptoObject cryptoObject) {
        PresentationSession presentationSession;
        IdentityCredential identityCredential;
        if (cryptoObject == null) {
            return null;
        }
        Cipher cipher = cryptoObject.getCipher();
        if (cipher != null) {
            return b.m1206b(cipher);
        }
        Signature signature = cryptoObject.getSignature();
        if (signature != null) {
            return b.m1205a(signature);
        }
        Mac mac = cryptoObject.getMac();
        if (mac != null) {
            return b.m1207c(mac);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 && (identityCredential = cryptoObject.getIdentityCredential()) != null) {
            return c.m1211a(identityCredential);
        }
        if (i < 33 || (presentationSession = cryptoObject.getPresentationSession()) == null) {
            return null;
        }
        return d.m1213a(presentationSession);
    }

    @Nullable
    /* renamed from: e */
    public static FingerprintManagerCompat.CryptoObject m1199e(@Nullable BiometricPrompt.CryptoObject cryptoObject) {
        if (cryptoObject == null) {
            return null;
        }
        Cipher cipher = cryptoObject.getCipher();
        if (cipher != null) {
            return new FingerprintManagerCompat.CryptoObject(cipher);
        }
        Signature signature = cryptoObject.getSignature();
        if (signature != null) {
            return new FingerprintManagerCompat.CryptoObject(signature);
        }
        Mac mac = cryptoObject.getMac();
        if (mac != null) {
            return new FingerprintManagerCompat.CryptoObject(mac);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 && cryptoObject.getIdentityCredential() != null) {
            Log.e(f2316a, "Identity credential is not supported by FingerprintManager.");
            return null;
        }
        if (i >= 33 && cryptoObject.getPresentationSession() != null) {
            Log.e(f2316a, "Presentation session is not supported by FingerprintManager.");
        }
        return null;
    }
}
