package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.EmailAuthCredential;

/* loaded from: classes5.dex */
public final class zzyf {
    private final EmailAuthCredential zza;

    @Nullable
    private final String zzb;

    public zzyf(EmailAuthCredential emailAuthCredential, @Nullable String str) {
        this.zza = emailAuthCredential;
        this.zzb = str;
    }

    public final EmailAuthCredential zza() {
        return this.zza;
    }

    @Nullable
    public final String zzb() {
        return this.zzb;
    }
}
