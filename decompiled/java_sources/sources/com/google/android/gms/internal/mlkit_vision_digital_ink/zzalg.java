package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
abstract class zzalg extends zzalt {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        zza().clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        if (obj instanceof zzald) {
            zzald zzaldVar = (zzald) obj;
            if (zzaldVar.zza() > 0 && zza().zza(zzaldVar.zzb()) == zzaldVar.zza()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        if (obj instanceof zzald) {
            zzald zzaldVar = (zzald) obj;
            Object zzb = zzaldVar.zzb();
            int zza = zzaldVar.zza();
            if (zza != 0) {
                return zza().zzi(zzb, zza, 0);
            }
        }
        return false;
    }

    public abstract zzale zza();
}
