package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes5.dex */
public abstract class zzarq extends zzaro implements zzasi {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaro
    public /* bridge */ /* synthetic */ Future zzh() {
        throw null;
    }

    public abstract zzasi zzi();

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi
    public final void zzp(Runnable runnable, Executor executor) {
        zzi().zzp(runnable, executor);
    }
}
