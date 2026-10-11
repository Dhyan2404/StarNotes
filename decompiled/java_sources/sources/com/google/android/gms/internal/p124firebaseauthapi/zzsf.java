package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzsf extends zzaje<zzsf, zza> implements zzakr {
    private static final zzsf zzc;
    private static volatile zzaky<zzsf> zzd;
    private int zze;
    private zzsj zzf;
    private zzue zzg;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzsf, zza> implements zzakr {
        private zza() {
            super(zzsf.zzc);
        }

        public final zza zza(zzsj zzsjVar) {
            zzi();
            ((zzsf) this.zza).zza(zzsjVar);
            return this;
        }

        public /* synthetic */ zza(zzse zzseVar) {
            this();
        }

        public final zza zza(zzue zzueVar) {
            zzi();
            ((zzsf) this.zza).zza(zzueVar);
            return this;
        }
    }

    static {
        zzsf zzsfVar = new zzsf();
        zzc = zzsfVar;
        zzaje.zza((Class<zzsf>) zzsf.class, zzsfVar);
    }

    private zzsf() {
    }

    public static zza zza() {
        return zzc.zzm();
    }

    public final zzsj zzc() {
        zzsj zzsjVar = this.zzf;
        return zzsjVar == null ? zzsj.zzd() : zzsjVar;
    }

    public final zzue zzd() {
        zzue zzueVar = this.zzg;
        return zzueVar == null ? zzue.zze() : zzueVar;
    }

    public static zzsf zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzsf) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzse.zza[i - 1];
        zzse zzseVar = null;
        switch (i2) {
            case 1:
                return new zzsf();
            case 2:
                return new zza(zzseVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzsf> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzsf.class) {
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
    public final void zza(zzsj zzsjVar) {
        zzsjVar.getClass();
        this.zzf = zzsjVar;
        this.zze |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzue zzueVar) {
        zzueVar.getClass();
        this.zzg = zzueVar;
        this.zze |= 2;
    }
}
