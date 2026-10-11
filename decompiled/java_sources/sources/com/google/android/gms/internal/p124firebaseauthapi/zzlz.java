package com.google.android.gms.internal.p124firebaseauthapi;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.CharConversionException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.ProviderException;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes5.dex */
public final class zzlz {
    private static final Object zza = new Object();
    private static final String zzb = "zzlz";
    private final zzce zzc;
    private final zzbh zzd;

    @GuardedBy("this")
    private zzcc zze;

    /* loaded from: classes5.dex */
    public static final class zza {
        private Context zza = null;
        private String zzb = null;
        private String zzc = null;
        private String zzd = null;
        private zzbh zze = null;
        private boolean zzf = true;
        private zzbv zzg = null;
        private zzvc zzh = null;

        @GuardedBy("this")
        private zzcc zzi;

        private static zzcc zza(byte[] bArr) throws GeneralSecurityException, IOException {
            return zzcc.zza(zzbm.zza(zzbk.zza(bArr)));
        }

        @Nullable
        private final zzbh zzb() throws GeneralSecurityException {
            zzlz.zzd();
            zzmc zzmcVar = new zzmc();
            try {
                boolean zzc = zzmc.zzc(this.zzd);
                try {
                    return zzmcVar.zza(this.zzd);
                } catch (GeneralSecurityException | ProviderException e) {
                    if (zzc) {
                        Log.w(zzlz.zzb, "cannot use Android Keystore, it'll be disabled", e);
                        return null;
                    }
                    throw new KeyStoreException(String.format("the master key %s exists but is unusable", this.zzd), e);
                }
            } catch (GeneralSecurityException | ProviderException e2) {
                Log.w(zzlz.zzb, "cannot use Android Keystore, it'll be disabled", e2);
                return null;
            }
        }

        public final zza zza(zzvc zzvcVar) {
            this.zzh = zzvcVar;
            return this;
        }

        public final zza zza(String str) {
            if (str.startsWith("android-keystore://")) {
                if (this.zzf) {
                    this.zzd = str;
                    return this;
                }
                throw new IllegalArgumentException("cannot call withMasterKeyUri() after calling doNotUseKeystore()");
            }
            throw new IllegalArgumentException("key URI must start with android-keystore://");
        }

        private final zzcc zzb(byte[] bArr) throws GeneralSecurityException, IOException {
            try {
                this.zze = new zzmc().zza(this.zzd);
                try {
                    return zzcc.zza(zzby.zza(zzbk.zza(bArr), this.zze));
                } catch (IOException | GeneralSecurityException e) {
                    try {
                        return zza(bArr);
                    } catch (IOException unused) {
                        throw e;
                    }
                }
            } catch (GeneralSecurityException | ProviderException e2) {
                try {
                    zzcc zza = zza(bArr);
                    Log.w(zzlz.zzb, "cannot use Android Keystore, it'll be disabled", e2);
                    return zza;
                } catch (IOException unused2) {
                    throw e2;
                }
            }
        }

        public final zza zza(Context context, String str, String str2) throws IOException {
            if (context != null) {
                this.zza = context;
                this.zzb = str;
                this.zzc = str2;
                return this;
            }
            throw new IllegalArgumentException("need an Android context");
        }

        public final synchronized zzlz zza() throws GeneralSecurityException, IOException {
            zzlz zzlzVar;
            if (this.zzb != null) {
                zzvc zzvcVar = this.zzh;
                if (zzvcVar != null && this.zzg == null) {
                    this.zzg = zzbv.zza(zzcp.zza(zzvcVar.m22248a_()));
                }
                synchronized (zzlz.zza) {
                    byte[] zzb = zzb(this.zza, this.zzb, this.zzc);
                    if (zzb == null) {
                        if (this.zzd != null) {
                            this.zze = zzb();
                        }
                        if (this.zzg != null) {
                            zzcc zza = zzcc.zzb().zza(this.zzg);
                            zzcc zza2 = zza.zza(zza.zza().zzc().zza(0).zza());
                            zzlz.zza(zza2.zza(), new zzme(this.zza, this.zzb, this.zzc), this.zze);
                            this.zzi = zza2;
                        } else {
                            throw new GeneralSecurityException("cannot read or generate keyset");
                        }
                    } else if (this.zzd != null) {
                        zzlz.zzd();
                        this.zzi = zzb(zzb);
                    } else {
                        this.zzi = zza(zzb);
                    }
                    zzlzVar = new zzlz(this);
                }
            } else {
                throw new IllegalArgumentException("keysetName cannot be null");
            }
            return zzlzVar;
        }

        @Nullable
        private static byte[] zzb(Context context, String str, String str2) throws IOException {
            SharedPreferences sharedPreferences;
            if (str != null) {
                Context applicationContext = context.getApplicationContext();
                if (str2 == null) {
                    sharedPreferences = PreferenceManager.getDefaultSharedPreferences(applicationContext);
                } else {
                    sharedPreferences = applicationContext.getSharedPreferences(str2, 0);
                }
                try {
                    String string = sharedPreferences.getString(str, null);
                    if (string == null) {
                        return null;
                    }
                    return zzxl.zza(string);
                } catch (ClassCastException | IllegalArgumentException unused) {
                    throw new CharConversionException(String.format("can't read keyset; the pref value %s is not a valid hex string", str));
                }
            }
            throw new IllegalArgumentException("keysetName cannot be null");
        }
    }

    public static /* synthetic */ boolean zzd() {
        return true;
    }

    public final synchronized zzby zza() throws GeneralSecurityException {
        return this.zze.zza();
    }

    private zzlz(zza zzaVar) {
        this.zzc = new zzme(zzaVar.zza, zzaVar.zzb, zzaVar.zzc);
        this.zzd = zzaVar.zze;
        this.zze = zzaVar.zzi;
    }

    public static /* synthetic */ void zza(zzby zzbyVar, zzce zzceVar, zzbh zzbhVar) {
        try {
            if (zzbhVar != null) {
                zzbyVar.zza(zzceVar, zzbhVar);
            } else {
                zzbm.zza(zzbyVar, zzceVar);
            }
        } catch (IOException e) {
            throw new GeneralSecurityException(e);
        }
    }
}
