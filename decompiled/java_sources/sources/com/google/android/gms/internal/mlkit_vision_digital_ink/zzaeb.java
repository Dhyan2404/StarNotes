package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.collection.SimpleArrayMap;

/* loaded from: classes5.dex */
public class zzaeb {
    private final SimpleArrayMap zza;
    private boolean zzb = false;

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanExtras<");
        for (zzaeb zzaebVar = this; zzaebVar != null; zzaebVar = null) {
            for (int i = 0; i < zzaebVar.zza.size(); i++) {
                sb.append(this.zza.valueAt(i));
                sb.append("], ");
            }
        }
        sb.append(">");
        return sb.toString();
    }

    public final zzaeb zza() {
        if (this.zzb) {
            throw new IllegalStateException("Already frozen");
        }
        this.zzb = true;
        return this;
    }

    public final boolean zzb() {
        return this.zzb;
    }
}
