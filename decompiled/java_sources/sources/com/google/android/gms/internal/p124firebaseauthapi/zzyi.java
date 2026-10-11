package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.PhoneAuthCredential;

/* loaded from: classes5.dex */
public final class zzyi {
    private final PhoneAuthCredential zza;

    @Nullable
    private final String zzb;

    public zzyi(PhoneAuthCredential phoneAuthCredential, @Nullable String str) {
        this.zza = phoneAuthCredential;
        this.zzb = str;
    }

    public final PhoneAuthCredential zza() {
        return this.zza;
    }
}
