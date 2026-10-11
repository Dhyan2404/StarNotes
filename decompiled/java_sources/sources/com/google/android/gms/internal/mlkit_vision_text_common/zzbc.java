package com.google.android.gms.internal.mlkit_vision_text_common;

import com.sunia.HTREnginev2.pfh;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzbc {
    public static int zza(@CheckForNull Object obj) {
        return (int) (Integer.rotateLeft((int) ((obj == null ? 0 : obj.hashCode()) * pfh.f80747a), 15) * pfh.f80748b);
    }
}
