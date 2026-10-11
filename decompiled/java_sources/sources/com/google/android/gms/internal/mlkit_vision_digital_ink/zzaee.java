package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaee {
    int zza;
    final int zzb;
    zzaee zzc;
    final Map zzd = new HashMap(0);

    public zzaee(int i, int i2, zzaee zzaeeVar) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        this.zza = i;
        this.zzb = i2;
        this.zzc = null;
    }

    public final String toString() {
        return "Node" + System.identityHashCode(this);
    }
}
