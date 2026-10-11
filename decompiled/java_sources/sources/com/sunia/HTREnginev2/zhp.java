package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzbe;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class zhp implements Iterator<String> {

    /* renamed from: e */
    public Iterator<String> f91756e;

    /* renamed from: f */
    public final /* synthetic */ zzbe f91757f;

    public zhp(zzbe zzbeVar) {
        Bundle bundle;
        this.f91757f = zzbeVar;
        bundle = zzbeVar.zza;
        this.f91756e = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f91756e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f91756e.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
