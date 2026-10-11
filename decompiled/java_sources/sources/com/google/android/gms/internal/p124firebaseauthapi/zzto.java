package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzto extends zzaje<zzto, zza> implements zzakr {
    private static final zzto zzc;
    private static volatile zzaky<zzto> zzd;
    private int zze;
    private zztv zzf;
    private zztj zzg;
    private int zzh;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzto, zza> implements zzakr {
        private zza() {
            super(zzto.zzc);
        }

        public final zza zza(zztj zztjVar) {
            zzi();
            ((zzto) this.zza).zza(zztjVar);
            return this;
        }

        public /* synthetic */ zza(zztp zztpVar) {
            this();
        }

        public final zza zza(zzti zztiVar) {
            zzi();
            ((zzto) this.zza).zza(zztiVar);
            return this;
        }

        public final zza zza(zztv zztvVar) {
            zzi();
            ((zzto) this.zza).zza(zztvVar);
            return this;
        }
    }

    static {
        zzto zztoVar = new zzto();
        zzc = zztoVar;
        zzaje.zza((Class<zzto>) zzto.class, zztoVar);
    }

    private zzto() {
    }

    public static zza zzc() {
        return zzc.zzm();
    }

    public static zzto zze() {
        return zzc;
    }

    public final zzti zza() {
        zzti zza2 = zzti.zza(this.zzh);
        return zza2 == null ? zzti.UNRECOGNIZED : zza2;
    }

    public final zztj zzb() {
        zztj zztjVar = this.zzg;
        return zztjVar == null ? zztj.zzc() : zztjVar;
    }

    public final zztv zzf() {
        zztv zztvVar = this.zzf;
        return zztvVar == null ? zztv.zzc() : zztvVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zztp.zza[i - 1];
        zztp zztpVar = null;
        switch (i2) {
            case 1:
                return new zzto();
            case 2:
                return new zza(zztpVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzto> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzto.class) {
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
    public final void zza(zztj zztjVar) {
        zztjVar.getClass();
        this.zzg = zztjVar;
        this.zze |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzti zztiVar) {
        this.zzh = zztiVar.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zztv zztvVar) {
        zztvVar.getClass();
        this.zzf = zztvVar;
        this.zze |= 1;
    }
}
