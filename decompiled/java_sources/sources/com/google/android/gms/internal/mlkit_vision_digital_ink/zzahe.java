package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;

/* loaded from: classes5.dex */
public final class zzahe {
    public static zzaha zza(zzaha zzahaVar) {
        return ((zzahaVar instanceof zzahd) || (zzahaVar instanceof zzahb)) ? zzahaVar : zzahaVar instanceof Serializable ? new zzahb(zzahaVar) : new zzahd(zzahaVar);
    }
}
