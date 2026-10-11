package com.google.android.gms.internal.mlkit_vision_digital_ink;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
public class zzamf {
    private final String zza;
    private final Class zzb;
    private final boolean zzc;

    public zzamf(String str, Class cls, boolean z) {
        this(str, cls, z, true);
    }

    public static zzamf zza(String str, Class cls) {
        return new zzamf(str, cls, false, false);
    }

    public final String toString() {
        return getClass().getName() + "/" + this.zza + IteratorUtils.f104923a + this.zzb.getName() + IteratorUtils.f104924b;
    }

    public final boolean zzb() {
        return this.zzc;
    }

    private zzamf(String str, Class cls, boolean z, boolean z2) {
        zzaoc.zzb(str);
        this.zza = str;
        this.zzb = cls;
        this.zzc = z;
        System.identityHashCode(this);
        for (int i = 0; i < 5; i++) {
        }
    }
}
