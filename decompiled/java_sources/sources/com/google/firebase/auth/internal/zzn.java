package com.google.firebase.auth.internal;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.p124firebaseauthapi.zzce;
import com.google.android.gms.internal.p124firebaseauthapi.zzkh;
import com.google.android.gms.internal.p124firebaseauthapi.zzkq;
import com.google.android.gms.internal.p124firebaseauthapi.zzlz;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

/* loaded from: classes6.dex */
public final class zzn {

    /* renamed from: c */
    public static zzn f35764c;

    /* renamed from: a */
    public final String f35765a;

    /* renamed from: b */
    @Nullable
    public final zzlz f35766b;

    public zzn(Context context, String str, boolean z) {
        zzlz zzlzVar;
        this.f35765a = str;
        try {
            zzkh.zza();
            zzlz.zza zza = new zzlz.zza().zza(context, "GenericIdpKeyset", String.format("com.google.firebase.auth.api.crypto.%s", str)).zza(zzkq.zza);
            zza.zza(String.format("android-keystore://firebear_master_key_id.%s", str));
            zzlzVar = zza.zza();
        } catch (IOException | GeneralSecurityException e) {
            Log.e("FirebearCryptoHelper", "Exception encountered during crypto setup:\n" + e.getMessage());
            zzlzVar = null;
        }
        this.f35766b = zzlzVar;
    }

    public static zzn zza(Context context, String str) {
        zzn zznVar = f35764c;
        if (zznVar == null || !com.google.android.gms.internal.p124firebaseauthapi.zzw.zza(zznVar.f35765a, str)) {
            f35764c = new zzn(context, str, true);
        }
        return f35764c;
    }

    @Nullable
    public final String zza(String str) {
        String str2;
        zzlz zzlzVar = this.f35766b;
        if (zzlzVar == null) {
            Log.e("FirebearCryptoHelper", "KeysetManager failed to initialize - unable to decrypt payload");
            return null;
        }
        try {
            synchronized (zzlzVar) {
                str2 = new String(((com.google.android.gms.internal.p124firebaseauthapi.zzbp) this.f35766b.zza().zza(com.google.android.gms.internal.p124firebaseauthapi.zzbp.class)).zza(Base64.decode(str, 8), null), "UTF-8");
            }
            return str2;
        } catch (UnsupportedEncodingException | GeneralSecurityException e) {
            Log.e("FirebearCryptoHelper", "Exception encountered while decrypting bytes:\n" + e.getMessage());
            return null;
        }
    }

    @Nullable
    public final String zza() {
        if (this.f35766b == null) {
            Log.e("FirebearCryptoHelper", "KeysetManager failed to initialize - unable to get Public key");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        zzce zza = com.google.android.gms.internal.p124firebaseauthapi.zzbj.zza(byteArrayOutputStream);
        try {
            synchronized (this.f35766b) {
                this.f35766b.zza().zza().zza(zza);
            }
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 8);
        } catch (IOException | GeneralSecurityException e) {
            Log.e("FirebearCryptoHelper", "Exception encountered when attempting to get Public Key:\n" + e.getMessage());
            return null;
        }
    }
}
