package com.google.android.gms.internal.mlkit_vision_digital_ink;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.collections4.IteratorUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001J\u0015\u0010\u0002\u001a\u00028\u00012\u0006\u0010\u0003\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"com/google/apps/tiktok/tracing/TracePropagation$propagateFunction$1", "Lcom/google/common/base/Function;", "apply", "input", "(Ljava/lang/Object;)Ljava/lang/Object;", "toString", "", "java.com.google.apps.tiktok.tracing_tracing_external"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes5.dex */
public final class zzaeo implements zzaft {
    final /* synthetic */ zzaeh zza;

    /* renamed from: zzb, reason: from toString */
    final /* synthetic */ zzaft propagating;

    public zzaeo(zzaeh zzaehVar, zzaft zzaftVar) {
        this.zza = zzaehVar;
        this.propagating = zzaftVar;
    }

    @NotNull
    public final String toString() {
        return "propagating=[" + this.propagating + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
    public final Object zza(Object obj) {
        zzaeh trace = this.zza;
        Intrinsics.checkNotNullExpressionValue(trace, "trace");
        zzaft zzaftVar = this.propagating;
        zzaeh zzd = zzaeu.zzd(zzaeu.zze(), trace);
        try {
            return zzaftVar.zza(obj);
        } finally {
        }
    }
}
