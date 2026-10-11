package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbjp implements zzbke {
    final /* synthetic */ Constructor zza;

    public zzbjp(Constructor constructor) {
        this.zza = constructor;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbke
    public final Object zza() {
        try {
            return this.zza.newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw zzbnj.zzb(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Failed to invoke constructor '" + zzbnj.zzc(this.zza) + "' with no args", e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException("Failed to invoke constructor '" + zzbnj.zzc(this.zza) + "' with no args", e3.getCause());
        }
    }
}
