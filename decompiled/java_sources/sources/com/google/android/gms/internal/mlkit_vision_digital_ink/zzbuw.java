package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Map;

/* loaded from: classes5.dex */
final class zzbuw implements Map.Entry {
    private final Map.Entry zza;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.zza.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzbuy) this.zza.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzbvu) {
            return ((zzbuy) this.zza.getValue()).zzc((zzbvu) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzbuy zza() {
        return (zzbuy) this.zza.getValue();
    }
}
