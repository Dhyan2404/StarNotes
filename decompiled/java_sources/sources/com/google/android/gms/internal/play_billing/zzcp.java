package com.google.android.gms.internal.play_billing;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes5.dex */
final class zzcp {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    public zzcp(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    public final IllegalArgumentException zza() {
        Object obj = this.zzc;
        Object obj2 = this.zzb;
        Object obj3 = this.zza;
        return new IllegalArgumentException("Multiple entries with same key: " + String.valueOf(obj3) + "=" + String.valueOf(obj2) + CloudStorageConstants.OPERATION_AND + String.valueOf(obj3) + "=" + String.valueOf(obj));
    }
}
