package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes5.dex */
final class zzajn {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    public zzajn(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    public final IllegalArgumentException zza() {
        return new IllegalArgumentException("Multiple entries with same key: " + this.zza + "=" + this.zzb + CloudStorageConstants.OPERATION_AND + this.zza + "=" + this.zzc);
    }
}
