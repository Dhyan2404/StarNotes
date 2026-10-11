package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzaqq extends zzaqn {
    public /* synthetic */ zzaqq(zzaqp zzaqpVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqn
    public final int zza(zzaqr zzaqrVar) {
        int i;
        int i2;
        synchronized (zzaqrVar) {
            i = zzaqrVar.remaining;
            i2 = i - 1;
            zzaqrVar.remaining = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqn
    public final void zzb(zzaqr zzaqrVar, @CheckForNull Set set, Set set2) {
        Set set3;
        synchronized (zzaqrVar) {
            set3 = zzaqrVar.seenExceptions;
            if (set3 == null) {
                zzaqrVar.seenExceptions = set2;
            }
        }
    }

    private zzaqq() {
        super(null);
    }
}
