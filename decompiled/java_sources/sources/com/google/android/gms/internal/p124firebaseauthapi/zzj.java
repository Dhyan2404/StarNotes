package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes5.dex */
public abstract class zzj {
    public int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        zzz.zza(i, length, FirebaseAnalytics.Param.INDEX);
        while (i < length) {
            if (zza(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public abstract boolean zza(char c);
}
