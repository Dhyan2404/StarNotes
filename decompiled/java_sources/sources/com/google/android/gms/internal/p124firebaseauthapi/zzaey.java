package com.google.android.gms.internal.p124firebaseauthapi;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes5.dex */
public enum zzaey {
    REFRESH_TOKEN("refresh_token"),
    AUTHORIZATION_CODE(CloudStorageConstants.AUTHORIZATION_GRANT_TYPE);

    private final String zzd;

    zzaey(String str) {
        this.zzd = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzd;
    }
}
