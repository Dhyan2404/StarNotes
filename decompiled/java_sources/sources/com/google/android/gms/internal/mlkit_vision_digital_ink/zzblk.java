package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzblk extends zzblh {
    static final Map zzb;
    private final Constructor zzc;
    private final Object[] zzd;
    private final Map zze;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(Byte.TYPE, (byte) 0);
        hashMap.put(Short.TYPE, (short) 0);
        hashMap.put(Integer.TYPE, 0);
        hashMap.put(Long.TYPE, 0L);
        hashMap.put(Float.TYPE, Float.valueOf(0.0f));
        hashMap.put(Double.TYPE, Double.valueOf(0.0d));
        hashMap.put(Character.TYPE, (char) 0);
        hashMap.put(Boolean.TYPE, Boolean.FALSE);
        zzb = hashMap;
    }

    public zzblk(Class cls, Map map, boolean z) {
        super(map);
        this.zze = new HashMap();
        Constructor zzf = zzbnj.zzf(cls);
        this.zzc = zzf;
        if (z) {
            zzbll.zzb(null, zzf);
        } else {
            zzbnj.zzh(zzf);
        }
        String[] zzj = zzbnj.zzj(cls);
        for (int i = 0; i < zzj.length; i++) {
            this.zze.put(zzj[i], Integer.valueOf(i));
        }
        Class<?>[] parameterTypes = this.zzc.getParameterTypes();
        this.zzd = new Object[parameterTypes.length];
        for (int i2 = 0; i2 < parameterTypes.length; i2++) {
            this.zzd[i2] = zzb.get(parameterTypes[i2]);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzblh
    public final /* bridge */ /* synthetic */ void zzf(Object obj, zzbny zzbnyVar, zzbli zzbliVar) throws IllegalAccessException, IOException {
        Object[] objArr = (Object[]) obj;
        Integer num = (Integer) this.zze.get(zzbliVar.zzj);
        if (num != null) {
            zzbliVar.zza(zzbnyVar, num.intValue(), objArr);
            return;
        }
        throw new IllegalStateException("Could not find the index in the constructor '" + zzbnj.zzc(this.zzc) + "' for field with name '" + zzbliVar.zzj + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzblh
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final Object zze(Object[] objArr) {
        try {
            return this.zzc.newInstance(objArr);
        } catch (IllegalAccessException e) {
            throw zzbnj.zzb(e);
        } catch (IllegalArgumentException | InstantiationException e2) {
            throw new RuntimeException("Failed to invoke constructor '" + zzbnj.zzc(this.zzc) + "' with args " + Arrays.toString(objArr), e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException("Failed to invoke constructor '" + zzbnj.zzc(this.zzc) + "' with args " + Arrays.toString(objArr), e3.getCause());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzblh
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final Object[] zzc() {
        return (Object[]) this.zzd.clone();
    }
}
