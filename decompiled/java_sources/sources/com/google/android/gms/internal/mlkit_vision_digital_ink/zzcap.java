package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;

/* loaded from: classes5.dex */
public final class zzcap extends zzbui implements zzbvv {
    private static final zzcap zza;
    private static volatile zzbwc zze;
    private zzbuq zzf = zzbui.zzW();

    static {
        zzcap zzcapVar = new zzcap();
        zza = zzcapVar;
        zzbui.zzad(zzcap.class, zzcapVar);
    }

    private zzcap() {
    }

    public static zzbwc zze() {
        return (zzbwc) zza.zzb(7, null, null);
    }

    public static zzcao zzg() {
        return (zzcao) zza.zzN();
    }

    public static zzcap zzi() {
        return zza;
    }

    public static /* synthetic */ void zzk(zzcap zzcapVar, zzcan zzcanVar) {
        zzcanVar.getClass();
        zzbuq zzbuqVar = zzcapVar.zzf;
        if (!zzbuqVar.zzc()) {
            zzcapVar.zzf = zzbui.zzX(zzbuqVar);
        }
        zzcapVar.zzf.add(zzcanVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzbui.zzaa(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzf", zzcan.class});
        }
        if (i2 == 3) {
            return new zzcap();
        }
        zzcab zzcabVar = null;
        if (i2 == 4) {
            return new zzcao(zzcabVar);
        }
        if (i2 == 5) {
            return zza;
        }
        if (i2 != 6) {
            return null;
        }
        zzbwc zzbwcVar = zze;
        if (zzbwcVar == null) {
            synchronized (zzcap.class) {
                zzbwcVar = zze;
                if (zzbwcVar == null) {
                    zzbwcVar = new zzbuc(zza);
                    zze = zzbwcVar;
                }
            }
        }
        return zzbwcVar;
    }

    public final int zzc() {
        return this.zzf.size();
    }

    public final zzcan zzf(int i) {
        return (zzcan) this.zzf.get(0);
    }

    public final List zzj() {
        return this.zzf;
    }
}
