package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* loaded from: classes5.dex */
public final class zzpu implements Supplier<zzpx> {
    private static zzpu zza = new zzpu();
    private final Supplier<zzpx> zzb = Suppliers.ofInstance(new zzpw());

    @SideEffectFree
    public static boolean zza() {
        return ((zzpx) zza.get()).zza();
    }

    @SideEffectFree
    public static boolean zzb() {
        return ((zzpx) zza.get()).zzb();
    }

    @SideEffectFree
    public static boolean zzc() {
        return ((zzpx) zza.get()).zzc();
    }

    @SideEffectFree
    public static boolean zzd() {
        return ((zzpx) zza.get()).zzd();
    }

    @SideEffectFree
    public static boolean zze() {
        return ((zzpx) zza.get()).zze();
    }

    @SideEffectFree
    public static boolean zzf() {
        return ((zzpx) zza.get()).zzf();
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final /* synthetic */ Object get() {
        return this.zzb.get();
    }
}
