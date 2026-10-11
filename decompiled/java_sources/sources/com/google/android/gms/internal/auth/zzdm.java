package com.google.android.gms.internal.auth;

import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzdm implements Serializable, zzdj {
    final Object zza;

    public zzdm(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof zzdm)) {
            return false;
        }
        Object obj2 = this.zza;
        Object obj3 = ((zzdm) obj).zza;
        return obj2 == obj3 || obj2.equals(obj3);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza});
    }

    public final String toString() {
        return "Suppliers.ofInstance(" + this.zza + MotionUtils.f31762d;
    }

    @Override // com.google.android.gms.internal.auth.zzdj
    public final Object zza() {
        return this.zza;
    }
}
