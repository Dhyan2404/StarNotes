package com.google.android.gms.internal.mlkit_vision_digital_ink;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.collections4.IteratorUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m61528d2 = {"com/google/apps/tiktok/tracing/TracePropagation$propagateAsyncCallable$1", "Lcom/google/common/util/concurrent/AsyncCallable;", "call", "Lcom/google/common/util/concurrent/ListenableFuture;", "toString", "", "java.com.google.apps.tiktok.tracing_tracing_external"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes5.dex */
public final class zzael implements zzaqs {
    final /* synthetic */ zzaeh zza;

    /* renamed from: zzb, reason: from toString */
    final /* synthetic */ zzaqs propagating;

    public zzael(zzaeh zzaehVar, zzaqs zzaqsVar) {
        this.zza = zzaehVar;
        this.propagating = zzaqsVar;
    }

    @NotNull
    public final String toString() {
        return "propagating=[" + this.propagating + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
    @NotNull
    public final zzasi zza() {
        zzaeh trace = this.zza;
        Intrinsics.checkNotNullExpressionValue(trace, "trace");
        zzaqs zzaqsVar = this.propagating;
        zzaev zze = zzaeu.zze();
        zzaeh zzd = zzaeu.zzd(zze, trace);
        try {
            zzasi zza = zzaqsVar.zza();
            zzaeu.zzd(zze, zzd);
            Intrinsics.checkNotNullExpressionValue(zza, "wrapInTrace(trace) { asyncCallable.call() }");
            return zza;
        } finally {
        }
    }
}
