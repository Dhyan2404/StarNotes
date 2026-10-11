package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
final class zzaso extends zzaqa.zzi implements Runnable {
    private final Runnable zza;

    public zzaso(Runnable runnable) {
        runnable.getClass();
        this.zza = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Error | RuntimeException e) {
            zzt(e);
            throw e;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final String zza() {
        return "task=[" + this.zza.toString() + IteratorUtils.f104924b;
    }
}
