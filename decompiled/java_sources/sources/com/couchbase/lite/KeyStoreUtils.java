package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;

/* loaded from: classes4.dex */
public final class KeyStoreUtils {
    public static final String ANDROID_KEY_STORE = "AndroidKeyStore";

    private KeyStoreUtils() {
    }

    public static void importEntry(@NonNull String str, @NonNull InputStream inputStream, @Nullable char[] cArr, @NonNull String str2, @Nullable char[] cArr2, @NonNull String str3) throws KeyStoreException, CertificateException, NoSuchAlgorithmException, IOException, UnrecoverableEntryException {
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        KeyStore.PasswordProtection passwordProtection = cArr2 == null ? null : new KeyStore.PasswordProtection(cArr2);
        KeyStore keyStore2 = KeyStore.getInstance(str);
        keyStore2.load(inputStream, cArr);
        KeyStore.Entry entry = keyStore2.getEntry(str2, passwordProtection);
        if (entry != null) {
            keyStore.setEntry(str3, entry, null);
            return;
        }
        throw new KeyStoreException("There is no entry in this keystore for alias: " + str3);
    }
}
