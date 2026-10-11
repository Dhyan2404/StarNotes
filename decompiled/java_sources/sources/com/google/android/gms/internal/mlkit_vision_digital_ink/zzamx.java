package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes5.dex */
public final class zzamx {
    private static final zzamz zza;

    static {
        String[] strArr;
        strArr = zzamz.zzd;
        zza = zzb(strArr);
    }

    public static /* bridge */ /* synthetic */ zzamz zza() {
        return zza;
    }

    private static zzamz zzb(String[] strArr) {
        zzamz zzamzVar;
        try {
            zzamzVar = zzana.zza();
        } catch (NoClassDefFoundError unused) {
            zzamzVar = null;
        }
        if (zzamzVar != null) {
            return zzamzVar;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            try {
                return (zzamz) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable th) {
                th = th;
                if (th instanceof InvocationTargetException) {
                    th = th.getCause();
                }
                sb.append('\n');
                sb.append(str);
                sb.append(": ");
                sb.append(th);
            }
        }
        throw new IllegalStateException(sb.insert(0, "No logging platforms found:").toString());
    }
}
