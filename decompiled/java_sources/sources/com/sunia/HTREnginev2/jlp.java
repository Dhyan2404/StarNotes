package com.sunia.HTREnginev2;

import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzhl;

/* loaded from: classes5.dex */
public final class jlp extends LruCache<String, com.google.android.gms.internal.measurement.zzb> {

    /* renamed from: a */
    public final /* synthetic */ zzhl f74454a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jlp(zzhl zzhlVar, int i) {
        super(20);
        this.f74454a = zzhlVar;
    }

    @Override // androidx.collection.LruCache
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzb create(String str) {
        String str2 = str;
        Preconditions.checkNotEmpty(str2);
        return zzhl.m22458c(this.f74454a, str2);
    }
}
