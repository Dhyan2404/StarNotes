package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzagw {
    private final zzafq zza;
    private final boolean zzb;
    private final zzagv zzc;

    private zzagw(zzagv zzagvVar, boolean z, zzafq zzafqVar, int i) {
        this.zzc = zzagvVar;
        this.zzb = z;
        this.zza = zzafqVar;
    }

    public static zzagw zzc(zzafq zzafqVar) {
        return new zzagw(new zzagq(zzafqVar));
    }

    public static zzagw zzd(String str) {
        zzagg.zzf(str.length() != 0, "The separator may not be the empty string.");
        return str.length() == 1 ? zzc(new zzafj(str.charAt(0))) : new zzagw(new zzags(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Iterator zzi(CharSequence charSequence) {
        return this.zzc.zza(this, charSequence);
    }

    public final zzagw zzb() {
        return new zzagw(this.zzc, true, this.zza, Integer.MAX_VALUE);
    }

    public final Iterable zze(CharSequence charSequence) {
        charSequence.getClass();
        return new zzagt(this, charSequence);
    }

    public final List zzg(CharSequence charSequence) {
        charSequence.getClass();
        Iterator zzi = zzi(charSequence);
        ArrayList arrayList = new ArrayList();
        while (zzi.hasNext()) {
            arrayList.add((String) zzi.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    private zzagw(zzagv zzagvVar) {
        this(zzagvVar, false, zzafo.zza, Integer.MAX_VALUE);
    }
}
