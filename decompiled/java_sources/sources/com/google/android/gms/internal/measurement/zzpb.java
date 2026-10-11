package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* loaded from: classes5.dex */
public final class zzpb implements Supplier<zzpa> {
    private static zzpb zza = new zzpb();
    private final Supplier<zzpa> zzb = Suppliers.ofInstance(new zzpd());

    @SideEffectFree
    public static boolean zza() {
        return ((zzpa) zza.get()).zza();
    }

    @SideEffectFree
    public static boolean zzb() {
        return ((zzpa) zza.get()).zzb();
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final /* synthetic */ Object get() {
        return this.zzb.get();
    }
}
