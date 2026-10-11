package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes5.dex */
final class zzn extends zzo {
    static final zzj zza = new zzn();

    private zzn() {
        super("CharMatcher.none()");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzj
    public final boolean zza(char c) {
        return false;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzj
    public final int zza(CharSequence charSequence, int i) {
        zzz.zza(i, charSequence.length(), FirebaseAnalytics.Param.INDEX);
        return -1;
    }
}
