package com.google.android.gms.internal.mlkit_vision_digital_ink;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes5.dex */
public final class zzaob {
    private static final String[] zza;
    private static final zzaof zzb;

    static {
        zzaof zzaogVar;
        String[] strArr = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
        zza = strArr;
        int i = 0;
        while (true) {
            if (i >= 2) {
                zzaogVar = new zzaog();
                break;
            }
            try {
                zzaogVar = (zzaof) Class.forName(strArr[i]).asSubclass(zzaof.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused) {
                zzaogVar = null;
            }
            if (zzaogVar != null) {
                break;
            } else {
                i++;
            }
        }
        zzb = zzaogVar;
    }

    @NullableDecl
    public static StackTraceElement zza(Class cls, int i) {
        zzaoc.zza(cls, "target");
        return zzb.zza(cls, 2);
    }
}
