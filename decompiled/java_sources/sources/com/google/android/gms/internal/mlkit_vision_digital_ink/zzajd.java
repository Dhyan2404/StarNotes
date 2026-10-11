package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.sunia.HTREnginev2.pfh;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzajd {
    public static int zza(int i) {
        return (int) (Integer.rotateLeft((int) (i * pfh.f80747a), 15) * pfh.f80748b);
    }

    public static int zzb(@CheckForNull Object obj) {
        return zza(obj == null ? 0 : obj.hashCode());
    }
}
