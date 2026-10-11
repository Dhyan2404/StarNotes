package com.google.android.gms.internal.mlkit_vision_digital_ink;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.collections4.IteratorUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001J\u001b\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m61528d2 = {"com/google/apps/tiktok/tracing/TracePropagation$propagateAsyncFunction$1", "Lcom/google/common/util/concurrent/AsyncFunction;", "apply", "Lcom/google/common/util/concurrent/ListenableFuture;", "input", "(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;", "toString", "", "java.com.google.apps.tiktok.tracing_tracing_external"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes5.dex */
public final class zzaem implements zzaqt {
    final /* synthetic */ zzaeh zza;

    /* renamed from: zzb, reason: from toString */
    final /* synthetic */ zzaqt propagating;

    public zzaem(zzaeh zzaehVar, zzaqt zzaqtVar) {
        this.zza = zzaehVar;
        this.propagating = zzaqtVar;
    }

    @NotNull
    public final String toString() {
        return "propagating=[" + this.propagating + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
    @NotNull
    public final zzasi zza(Object obj) {
        zzaeh trace = this.zza;
        Intrinsics.checkNotNullExpressionValue(trace, "trace");
        zzaqt zzaqtVar = this.propagating;
        zzaev zze = zzaeu.zze();
        zzaeh zzd = zzaeu.zzd(zze, trace);
        try {
            zzasi zza = zzaqtVar.zza(obj);
            zzaeu.zzd(zze, zzd);
            Intrinsics.checkNotNullExpressionValue(zza, "wrapInTrace(trace) { asyncFunction.apply(input) }");
            return zza;
        } finally {
        }
    }
}
