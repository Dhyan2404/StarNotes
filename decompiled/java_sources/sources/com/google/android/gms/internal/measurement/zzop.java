package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* loaded from: classes5.dex */
public final class zzop implements Supplier<zzoo> {
    private static zzop zza = new zzop();
    private final Supplier<zzoo> zzb = Suppliers.ofInstance(new zzor());

    @SideEffectFree
    public static boolean zza() {
        return ((zzoo) zza.get()).zza();
    }

    @Override // com.google.common.base.Supplier, java.util.function.Supplier
    public final /* synthetic */ Object get() {
        return this.zzb.get();
    }
}
