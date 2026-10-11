package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* loaded from: classes5.dex */
public final class zzow implements Supplier<zzoz> {
    private static zzow zza = new zzow();
    private final Supplier<zzoz> zzb = Suppliers.ofInstance(new zzoy());

    @SideEffectFree
    public static boolean zza() {
        return ((zzoz) zza.get()).zza();
    }

    @SideEffectFree
    public static boolean zzb() {
        return ((zzoz) zza.get()).zzb();
    }

    @SideEffectFree
    public static boolean zzc() {
        return ((zzoz) zza.get()).zzc();
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final /* synthetic */ Object get() {
        return this.zzb.get();
    }
}
