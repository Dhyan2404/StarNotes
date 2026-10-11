package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzvp extends zzaje<zzvp, zza> implements zzakr {
    private static final zzvp zzc;
    private static volatile zzaky<zzvp> zzd;
    private int zze;
    private String zzf = "";
    private zzvc zzg;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzvp, zza> implements zzakr {
        private zza() {
            super(zzvp.zzc);
        }

        public final zza zza(zzvc zzvcVar) {
            zzi();
            ((zzvp) this.zza).zza(zzvcVar);
            return this;
        }

        public /* synthetic */ zza(zzvq zzvqVar) {
            this();
        }

        public final zza zza(String str) {
            zzi();
            ((zzvp) this.zza).zza(str);
            return this;
        }
    }

    static {
        zzvp zzvpVar = new zzvp();
        zzc = zzvpVar;
        zzaje.zza((Class<zzvp>) zzvp.class, zzvpVar);
    }

    private zzvp() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzvp zzd() {
        return zzc;
    }

    public final zzvc zza() {
        zzvc zzvcVar = this.zzg;
        return zzvcVar == null ? zzvc.zzc() : zzvcVar;
    }

    public final String zze() {
        return this.zzf;
    }

    public static zzvp zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzvp) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzvq.zza[i - 1];
        zzvq zzvqVar = null;
        switch (i2) {
            case 1:
                return new zzvp();
            case 2:
                return new zza(zzvqVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzvp> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzvp.class) {
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
    public final void zza(zzvc zzvcVar) {
        zzvcVar.getClass();
        this.zzg = zzvcVar;
        this.zze |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str) {
        str.getClass();
        this.zzf = str;
    }
}
