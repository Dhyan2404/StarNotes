package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzsn extends zzaje<zzsn, zza> implements zzakr {
    private static final zzsn zzc;
    private static volatile zzaky<zzsn> zzd;
    private int zze;
    private int zzf;
    private zzsr zzg;
    private zzaho zzh = zzaho.zza;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzsn, zza> implements zzakr {
        private zza() {
            super(zzsn.zzc);
        }

        public final zza zza(zzaho zzahoVar) {
            zzi();
            ((zzsn) this.zza).zza(zzahoVar);
            return this;
        }

        public /* synthetic */ zza(zzsm zzsmVar) {
            this();
        }

        public final zza zza(zzsr zzsrVar) {
            zzi();
            ((zzsn) this.zza).zza(zzsrVar);
            return this;
        }
    }

    static {
        zzsn zzsnVar = new zzsn();
        zzc = zzsnVar;
        zzaje.zza((Class<zzsn>) zzsn.class, zzsnVar);
    }

    private zzsn() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzaky<zzsn> zzf() {
        return (zzaky) zzc.zza(zzaje.zzf.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzsr zzd() {
        zzsr zzsrVar = this.zzg;
        return zzsrVar == null ? zzsr.zzd() : zzsrVar;
    }

    public final zzaho zze() {
        return this.zzh;
    }

    public static zzsn zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzsn) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzsm.zza[i - 1];
        zzsm zzsmVar = null;
        switch (i2) {
            case 1:
                return new zzsn();
            case 2:
                return new zza(zzsmVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzsn> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzsn.class) {
                        zzakyVar = zzd;
                        if (zzakyVar == null) {
                            zzakyVar = new zzaje.zzc<>(zzc);
                            zzd = zzakyVar;
                        }
                    }
                }
                return zzakyVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzaho zzahoVar) {
        zzahoVar.getClass();
        this.zzh = zzahoVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzsr zzsrVar) {
        zzsrVar.getClass();
        this.zzg = zzsrVar;
        this.zze |= 1;
    }
}
