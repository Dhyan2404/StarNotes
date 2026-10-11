package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.Iterator;

/* loaded from: classes5.dex */
final class zzamj implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzamh zzb;

    public zzamj(zzamh zzamhVar) {
        zzajv zzajvVar;
        this.zzb = zzamhVar;
        zzajvVar = zzamhVar.zza;
        this.zza = zzajvVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
