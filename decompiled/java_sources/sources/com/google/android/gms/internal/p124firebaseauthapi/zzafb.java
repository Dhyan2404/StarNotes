package com.google.android.gms.internal.p124firebaseauthapi;

import com.dropbox.core.android.AuthActivity;

/* loaded from: classes5.dex */
public enum zzafb {
    ACCESS_TOKEN(AuthActivity.EXTRA_ACCESS_TOKEN),
    ID_TOKEN("idToken");

    private final String zzd;

    zzafb(String str) {
        this.zzd = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzd;
    }
}
