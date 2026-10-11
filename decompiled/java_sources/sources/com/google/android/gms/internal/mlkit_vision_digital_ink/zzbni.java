package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
final class zzbni extends zzbne {
    private final Method zza;
    private final Method zzb;
    private final Method zzc;
    private final Method zzd;

    private zzbni() throws NoSuchMethodException {
        super(null);
        this.zza = Class.class.getMethod("isRecord", new Class[0]);
        this.zzb = Class.class.getMethod("getRecordComponents", new Class[0]);
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbne
    public final Constructor zza(Class cls) {
        try {
            Object[] objArr = (Object[]) this.zzb.invoke(cls, new Object[0]);
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                clsArr[i] = (Class) this.zzd.invoke(objArr[i], new Object[0]);
            }
            return cls.getDeclaredConstructor(clsArr);
        } catch (ReflectiveOperationException e) {
            throw zzbnj.zza(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbne
    public final Method zzb(Class cls, Field field) {
        try {
            return cls.getMethod(field.getName(), new Class[0]);
        } catch (ReflectiveOperationException e) {
            throw zzbnj.zza(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbne
    public final boolean zzc(Class cls) {
        try {
            return ((Boolean) this.zza.invoke(cls, new Object[0])).booleanValue();
        } catch (ReflectiveOperationException e) {
            throw zzbnj.zza(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbne
    public final String[] zzd(Class cls) {
        try {
            Object[] objArr = (Object[]) this.zzb.invoke(cls, new Object[0]);
            String[] strArr = new String[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                strArr[i] = (String) this.zzc.invoke(objArr[i], new Object[0]);
            }
            return strArr;
        } catch (ReflectiveOperationException e) {
            throw zzbnj.zza(e);
        }
    }

    public /* synthetic */ zzbni(zzbnh zzbnhVar) {
        super(null);
        this.zza = Class.class.getMethod("isRecord", new Class[0]);
        Method method = Class.class.getMethod("getRecordComponents", new Class[0]);
        this.zzb = method;
        Class<?> componentType = method.getReturnType().getComponentType();
        this.zzc = componentType.getMethod("getName", new Class[0]);
        this.zzd = componentType.getMethod("getType", new Class[0]);
    }
}
