package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0015\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\b¨\u0006\t"}, m61528d2 = {"com/google/apps/tiktok/tracing/TracePropagation$propagateFutureCallback$1", "Lcom/google/common/util/concurrent/FutureCallback;", "onFailure", "", "t", "", "onSuccess", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "(Ljava/lang/Object;)V", "java.com.google.apps.tiktok.tracing_tracing_external"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes5.dex */
public final class zzaep implements zzarr {
    final /* synthetic */ zzaeh zza;
    final /* synthetic */ zzarr zzb;

    public zzaep(zzaeh zzaehVar, zzarr zzarrVar) {
        this.zza = zzaehVar;
        this.zzb = zzarrVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzarr
    public final void zza(@NotNull Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        zzaeh trace = this.zza;
        Intrinsics.checkNotNullExpressionValue(trace, "trace");
        zzarr zzarrVar = this.zzb;
        zzaeh zzd = zzaeu.zzd(zzaeu.zze(), trace);
        try {
            zzarrVar.zza(t);
            Unit unit = Unit.INSTANCE;
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzarr
    public final void zzb(Object obj) {
        zzaeh trace = this.zza;
        Intrinsics.checkNotNullExpressionValue(trace, "trace");
        zzarr zzarrVar = this.zzb;
        zzaeh zzd = zzaeu.zzd(zzaeu.zze(), trace);
        try {
            zzarrVar.zzb(obj);
            Unit unit = Unit.INSTANCE;
        } finally {
        }
    }
}
