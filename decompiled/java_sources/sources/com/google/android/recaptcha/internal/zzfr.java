package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
final class zzfr extends zzfm {
    final /* synthetic */ Iterable zza;
    final /* synthetic */ int zzb;

    public zzfr(Iterable iterable, int i) {
        this.zza = iterable;
        this.zzb = i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterable iterable = this.zza;
        if (iterable instanceof List) {
            List list = (List) iterable;
            return list.subList(Math.min(list.size(), this.zzb), list.size()).iterator();
        }
        int i = this.zzb;
        Iterator it2 = iterable.iterator();
        it2.getClass();
        zzff.zzb(i >= 0, "numberToAdvance must be nonnegative");
        for (int i2 = 0; i2 < i && it2.hasNext(); i2++) {
            it2.next();
        }
        return new zzfq(this, it2);
    }
}
