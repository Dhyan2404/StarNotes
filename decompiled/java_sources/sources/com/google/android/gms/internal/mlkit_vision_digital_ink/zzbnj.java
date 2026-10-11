package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public final class zzbnj {
    private static final zzbne zza;

    static {
        zzbne zzbngVar;
        try {
            zzbngVar = new zzbni(null);
        } catch (NoSuchMethodException unused) {
            zzbngVar = new zzbng(null);
        }
        zza = zzbngVar;
    }

    public static /* bridge */ /* synthetic */ RuntimeException zza(ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson ${project.version}). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", reflectiveOperationException);
    }

    public static RuntimeException zzb(IllegalAccessException illegalAccessException) {
        throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson ${project.version}). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", illegalAccessException);
    }

    public static String zzc(Constructor constructor) {
        StringBuilder sb = new StringBuilder(constructor.getDeclaringClass().getName());
        zzk(constructor, sb);
        return sb.toString();
    }

    public static String zzd(AccessibleObject accessibleObject, boolean z) {
        String concat;
        if (accessibleObject instanceof Field) {
            Field field = (Field) accessibleObject;
            concat = "field '" + field.getDeclaringClass().getName() + "#" + field.getName() + CloudStorageConstants.SINGLE_QUOTES;
        } else if (accessibleObject instanceof Method) {
            Method method = (Method) accessibleObject;
            StringBuilder sb = new StringBuilder(method.getName());
            zzk(method, sb);
            String sb2 = sb.toString();
            concat = "method '" + method.getDeclaringClass().getName() + "#" + sb2 + CloudStorageConstants.SINGLE_QUOTES;
        } else if (accessibleObject instanceof Constructor) {
            concat = "constructor '" + zzc((Constructor) accessibleObject) + CloudStorageConstants.SINGLE_QUOTES;
        } else {
            concat = "<unknown AccessibleObject> ".concat(String.valueOf(accessibleObject.toString()));
        }
        if (!z || !Character.isLowerCase(concat.charAt(0))) {
            return concat;
        }
        return Character.toUpperCase(concat.charAt(0)) + concat.substring(1);
    }

    public static String zze(Constructor constructor) {
        try {
            constructor.setAccessible(true);
            return null;
        } catch (Exception e) {
            return "Failed making constructor '" + zzc(constructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e.getMessage();
        }
    }

    public static Constructor zzf(Class cls) {
        return zza.zza(cls);
    }

    public static Method zzg(Class cls, Field field) {
        return zza.zzb(cls, field);
    }

    public static void zzh(AccessibleObject accessibleObject) throws zzbhz {
        try {
            accessibleObject.setAccessible(true);
        } catch (Exception e) {
            throw new zzbhz("Failed making " + zzd(accessibleObject, false) + " accessible; either increase its visibility or write a custom TypeAdapter for its declaring type.", e);
        }
    }

    public static boolean zzi(Class cls) {
        return zza.zzc(cls);
    }

    public static String[] zzj(Class cls) {
        return zza.zzd(cls);
    }

    private static void zzk(AccessibleObject accessibleObject, StringBuilder sb) {
        sb.append('(');
        Class<?>[] parameterTypes = accessibleObject instanceof Method ? ((Method) accessibleObject).getParameterTypes() : ((Constructor) accessibleObject).getParameterTypes();
        for (int i = 0; i < parameterTypes.length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(parameterTypes[i].getSimpleName());
        }
        sb.append(')');
    }
}
