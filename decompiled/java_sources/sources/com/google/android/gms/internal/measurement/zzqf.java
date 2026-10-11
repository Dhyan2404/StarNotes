package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* loaded from: classes5.dex */
public final class zzqf implements Supplier<zzqe> {
    private static zzqf zza = new zzqf();
    private final Supplier<zzqe> zzb = Suppliers.ofInstance(new zzqg());

    @SideEffectFree
    public static boolean zza() {
        return ((zzqe) zza.get()).zza();
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final /* synthetic */ Object get() {
        return this.zzb.get();
    }
}
