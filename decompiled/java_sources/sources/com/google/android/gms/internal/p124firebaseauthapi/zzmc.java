package com.google.android.gms.internal.p124firebaseauthapi;

import android.security.keystore.KeyGenParameterSpec;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.google.android.gms.stats.CodePackage;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.util.Arrays;
import java.util.Locale;
import javax.crypto.KeyGenerator;

/* loaded from: classes5.dex */
public final class zzmc implements zzcd {
    private static final Object zza = new Object();
    private static final String zzb = "zzmc";
    private final String zzc;

    /* loaded from: classes5.dex */
    public static final class zza {
        private String zza = null;

        @RequiresApi(23)
        public zza() {
            zzmc.zza();
        }
    }

    @RequiresApi(23)
    public zzmc() throws GeneralSecurityException {
        this(new zza());
    }

    public static /* synthetic */ boolean zza() {
        return true;
    }

    private static KeyStore zzb() throws GeneralSecurityException {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return keyStore;
        } catch (IOException e) {
            throw new GeneralSecurityException(e);
        }
    }

    @RequiresApi(23)
    public static boolean zzc(String str) throws GeneralSecurityException {
        new zzmc();
        synchronized (zza) {
            if (zzd(str)) {
                return false;
            }
            String zza2 = zzxq.zza("android-keystore://", str);
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
            keyGenerator.init(new KeyGenParameterSpec.Builder(zza2, 3).setKeySize(256).setBlockModes(CodePackage.GCM).setEncryptionPaddings("NoPadding").build());
            keyGenerator.generateKey();
            return true;
        }
    }

    private static boolean zzd(String str) throws GeneralSecurityException {
        boolean containsAlias;
        String zza2 = zzxq.zza("android-keystore://", str);
        try {
            synchronized (zza) {
                containsAlias = zzb().containsAlias(zza2);
            }
            return containsAlias;
        } catch (NullPointerException unused) {
            Log.w(zzb, "Keystore is temporarily unavailable, wait, reinitialize Keystore and try again.");
            try {
                Thread.sleep((int) (Math.random() * 40.0d));
            } catch (InterruptedException unused2) {
            }
            synchronized (zza) {
                return zzb().containsAlias(zza2);
            }
        }
    }

    private zzmc(zza zzaVar) {
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcd
    public final zzbh zza(String str) throws GeneralSecurityException {
        zzma zzmaVar;
        try {
            synchronized (zza) {
                zzmaVar = new zzma(zzxq.zza("android-keystore://", str));
                byte[] zza2 = zzow.zza(10);
                byte[] bArr = new byte[0];
                if (!Arrays.equals(zza2, zzmaVar.zza(zzmaVar.zzb(zza2, bArr), bArr))) {
                    throw new KeyStoreException("cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result");
                }
            }
            return zzmaVar;
        } catch (IOException e) {
            throw new GeneralSecurityException(e);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcd
    @RequiresApi(23)
    public final boolean zzb(String str) {
        return str.toLowerCase(Locale.US).startsWith("android-keystore://");
    }
}
