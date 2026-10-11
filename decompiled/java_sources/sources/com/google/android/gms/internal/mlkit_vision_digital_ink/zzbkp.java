package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.apache.commons.math3.dfp.Dfp;

/* loaded from: classes5.dex */
public abstract class zzbkp {
    public static final zzbkp zzc;

    static {
        zzbkp zzbkoVar;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            zzbkoVar = new zzbkl(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod(Dfp.f108018r, Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    zzbkoVar = new zzbkm(declaredMethod2, intValue);
                } catch (Exception unused2) {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod(Dfp.f108018r, Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    zzbkoVar = new zzbkn(declaredMethod3);
                }
            } catch (Exception unused3) {
                zzbkoVar = new zzbko();
            }
        }
        zzc = zzbkoVar;
    }

    public static /* bridge */ /* synthetic */ void zzb(Class cls) {
        String zzb = zzbjq.zzb(cls);
        if (zzb != null) {
            throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(zzb));
        }
    }

    public abstract Object zza(Class cls) throws Exception;
}
