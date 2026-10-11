package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* loaded from: classes5.dex */
public final class zzoq implements Supplier<zzot> {
    private static zzoq zza = new zzoq();
    private final Supplier<zzot> zzb = Suppliers.ofInstance(new zzos());

    @SideEffectFree
    public static boolean zza() {
        return ((zzot) zza.get()).zza();
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final /* synthetic */ Object get() {
        return this.zzb.get();
    }
}
