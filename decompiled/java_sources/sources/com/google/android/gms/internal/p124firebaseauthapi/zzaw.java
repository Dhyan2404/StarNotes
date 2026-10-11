package com.google.android.gms.internal.p124firebaseauthapi;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes5.dex */
final class zzaw {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    public zzaw(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    public final IllegalArgumentException zza() {
        return new IllegalArgumentException("Multiple entries with same key: " + String.valueOf(this.zza) + "=" + String.valueOf(this.zzb) + CloudStorageConstants.OPERATION_AND + String.valueOf(this.zza) + "=" + String.valueOf(this.zzc));
    }
}
