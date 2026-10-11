package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* loaded from: classes5.dex */
public final class zzpc implements Supplier<zzpf> {
    private static zzpc zza = new zzpc();
    private final Supplier<zzpf> zzb = Suppliers.ofInstance(new zzpe());

    @SideEffectFree
    public static boolean zza() {
        return ((zzpf) zza.get()).zza();
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final /* synthetic */ Object get() {
        return this.zzb.get();
    }
}
