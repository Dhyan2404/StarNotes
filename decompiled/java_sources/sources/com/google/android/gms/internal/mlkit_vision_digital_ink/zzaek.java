package com.google.android.gms.internal.mlkit_vision_digital_ink;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.collections4.IteratorUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m61528d2 = {"com/google/apps/tiktok/tracing/TracePropagation$propagate$1", "Ljava/lang/Runnable;", "run", "", "toString", "", "java.com.google.apps.tiktok.tracing_tracing_external"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes5.dex */
public final class zzaek implements Runnable {
    final /* synthetic */ zzaei zza;

    /* renamed from: zzb, reason: from toString */
    final /* synthetic */ Runnable propagating;

    public zzaek(zzaei zzaeiVar, Runnable runnable) {
        this.zza = zzaeiVar;
        this.propagating = runnable;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeh, java.lang.Object, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaei] */
    @Override // java.lang.Runnable
    public final void run() {
        ?? r0 = this.zza;
        Intrinsics.checkNotNull(r0, "null cannot be cast to non-null type com.google.apps.tiktok.tracing.Trace");
        Runnable runnable = this.propagating;
        zzaeh zzd = zzaeu.zzd(zzaeu.zze(), r0);
        try {
            runnable.run();
            Unit unit = Unit.INSTANCE;
        } finally {
        }
    }

    @NotNull
    public final String toString() {
        return "propagating=[" + this.propagating + IteratorUtils.f104924b;
    }
}
