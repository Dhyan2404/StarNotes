package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzagt implements Iterable {
    final /* synthetic */ CharSequence zza;
    final /* synthetic */ zzagw zzb;

    public zzagt(zzagw zzagwVar, CharSequence charSequence) {
        this.zzb = zzagwVar;
        this.zza = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator zzi;
        zzi = this.zzb.zzi(this.zza);
        return zzi;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        zzafu.zzc(sb, iterator(), ", ");
        sb.append(']');
        return sb.toString();
    }
}
