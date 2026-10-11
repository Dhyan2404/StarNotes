package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public final class zzali {
    public static boolean zza(zzale zzaleVar, @CheckForNull Object obj) {
        if (obj == zzaleVar) {
            return true;
        }
        if (obj instanceof zzale) {
            zzale zzaleVar2 = (zzale) obj;
            if (zzaleVar.size() == zzaleVar2.size() && zzaleVar.zzh().size() == zzaleVar2.zzh().size()) {
                for (zzald zzaldVar : zzaleVar2.zzh()) {
                    if (zzaleVar.zza(zzaldVar.zzb()) != zzaldVar.zza()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }
}
