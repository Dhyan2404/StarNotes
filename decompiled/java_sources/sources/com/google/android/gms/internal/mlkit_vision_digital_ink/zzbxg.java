package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;

/* loaded from: classes5.dex */
final class zzbxg implements Iterator {
    final Iterator zza;
    final /* synthetic */ zzbxh zzb;

    public zzbxg(zzbxh zzbxhVar) {
        zzbvb zzbvbVar;
        this.zzb = zzbxhVar;
        zzbvbVar = zzbxhVar.zza;
        this.zza = zzbvbVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
