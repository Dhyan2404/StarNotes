package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.collections4.IteratorUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\r\u0010\u0002\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m61528d2 = {"com/google/apps/tiktok/tracing/TracePropagation$propagateCallable$1", "Ljava/util/concurrent/Callable;", "call", "()Ljava/lang/Object;", "toString", "", "java.com.google.apps.tiktok.tracing_tracing_external"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes5.dex */
public final class zzaen implements Callable {
    final /* synthetic */ zzaeh zza;

    /* renamed from: zzb, reason: from toString */
    final /* synthetic */ Callable propagating;

    public zzaen(zzaeh zzaehVar, Callable callable) {
        this.zza = zzaehVar;
        this.propagating = callable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzaeh trace = this.zza;
        Intrinsics.checkNotNullExpressionValue(trace, "trace");
        Callable callable = this.propagating;
        zzaeh zzd = zzaeu.zzd(zzaeu.zze(), trace);
        try {
            return callable.call();
        } finally {
        }
    }

    @NotNull
    public final String toString() {
        return "propagating=[" + this.propagating + IteratorUtils.f104924b;
    }
}
