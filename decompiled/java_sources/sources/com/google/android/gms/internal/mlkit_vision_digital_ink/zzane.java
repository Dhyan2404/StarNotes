package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.os.Build;
import dalvik.system.VMStack;

/* loaded from: classes5.dex */
public final class zzane extends zzamz {
    private static final boolean zza = zza.zza();
    private static final boolean zzb;
    private static final zzamy zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class zza {
        public static boolean zza() {
            return zzane.zzt();
        }
    }

    static {
        String str = Build.FINGERPRINT;
        boolean z = true;
        if (str != null && !"robolectric".equals(str)) {
            z = false;
        }
        zzb = z;
        zzc = new zzamy() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzane.1
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzamy
            public zzamd zza(Class<?> cls, int i) {
                return zzamd.zza;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzamy
            public String zzb(Class cls) {
                StackTraceElement zza2;
                if (zzane.zza) {
                    try {
                        if (cls.equals(zzane.zzp())) {
                            return VMStack.getStackClass2().getName();
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (!zzane.zzb || (zza2 = zzaob.zza(cls, 1)) == null) {
                    return null;
                }
                return zza2.getClassName();
            }
        };
    }

    public static Class<?> zzp() {
        return VMStack.getStackClass2();
    }

    public static String zzq() {
        try {
            return VMStack.getStackClass2().getName();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean zzt() {
        try {
            Class.forName("dalvik.system.VMStack").getMethod("getStackClass2", new Class[0]);
            return zza.class.getName().equals(zzq());
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzamz
    public zzami zze(String str) {
        return zzanh.zzb(str);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzamz
    public zzamy zzh() {
        return zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzamz
    public zzann zzj() {
        return zzani.zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzamz
    public String zzm() {
        return "platform: Android";
    }
}
