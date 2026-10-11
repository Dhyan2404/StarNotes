package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Arrays;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public final class zzafy {
    private final String zza;
    private final zzafx zzb;
    private zzafx zzc;

    public /* synthetic */ zzafy(String str, zzafv zzafvVar) {
        zzafx zzafxVar = new zzafx(null);
        this.zzb = zzafxVar;
        this.zzc = zzafxVar;
        str.getClass();
        this.zza = str;
    }

    private final zzafx zzd() {
        zzafx zzafxVar = new zzafx(null);
        this.zzc.zzc = zzafxVar;
        this.zzc = zzafxVar;
        return zzafxVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzafx zzafxVar = this.zzb.zzc;
        String str = "";
        while (zzafxVar != null) {
            Object obj = zzafxVar.zzb;
            boolean z = zzafxVar instanceof zzafw;
            sb.append(str);
            String str2 = zzafxVar.zza;
            if (str2 != null) {
                sb.append(str2);
                sb.append('=');
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r1.length() - 1);
            }
            zzafxVar = zzafxVar.zzc;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzafy zza(String str, @CheckForNull Object obj) {
        zzafx zzd = zzd();
        zzd.zzb = obj;
        zzd.zza = str;
        return this;
    }

    public final zzafy zzb(String str, boolean z) {
        String valueOf = String.valueOf(z);
        zzafw zzafwVar = new zzafw(null);
        this.zzc.zzc = zzafwVar;
        this.zzc = zzafwVar;
        zzafwVar.zzb = valueOf;
        zzafwVar.zza = "canceled";
        return this;
    }

    public final zzafy zzc(@CheckForNull Object obj) {
        zzd().zzb = obj;
        return this;
    }
}
