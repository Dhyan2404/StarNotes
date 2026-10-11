package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* loaded from: classes5.dex */
public final class zzna implements Supplier<zznd> {
    private static zzna zza = new zzna();
    private final Supplier<zznd> zzb = Suppliers.ofInstance(new zznc());

    @SideEffectFree
    public static boolean zza() {
        return ((zznd) zza.get()).zza();
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final /* synthetic */ Object get() {
        return this.zzb.get();
    }
}
