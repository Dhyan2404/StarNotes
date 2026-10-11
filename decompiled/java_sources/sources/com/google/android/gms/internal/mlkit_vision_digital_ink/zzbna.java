package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzbna extends zzbio {
    private final Map zza = new HashMap();
    private final Map zzb = new HashMap();
    private final Map zzc = new HashMap();

    public zzbna(Class cls) {
        try {
            for (Field field : (Field[]) AccessController.doPrivileged(new zzbmz(this, cls))) {
                Enum r4 = (Enum) field.get(null);
                String name = r4.name();
                String str = r4.toString();
                zzbir zzbirVar = (zzbir) field.getAnnotation(zzbir.class);
                if (zzbirVar != null) {
                    name = zzbirVar.zza();
                    for (String str2 : zzbirVar.zzb()) {
                        this.zza.put(str2, r4);
                    }
                }
                this.zza.put(name, r4);
                this.zzb.put(str, r4);
                this.zzc.put(r4, name);
            }
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ Object zza(zzbny zzbnyVar) throws IOException {
        if (zzbnyVar.zzt() == 9) {
            zzbnyVar.zzn();
            return null;
        }
        String zzi = zzbnyVar.zzi();
        Enum r0 = (Enum) this.zza.get(zzi);
        return r0 != null ? r0 : (Enum) this.zzb.get(zzi);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final /* bridge */ /* synthetic */ void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
