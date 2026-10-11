package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzud extends zzaje<zzud, zza> implements zzakr {
    private static final zzud zzc;
    private static volatile zzaky<zzud> zzd;
    private int zze;
    private int zzf;
    private zzuh zzg;
    private zzaho zzh = zzaho.zza;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzud, zza> implements zzakr {
        private zza() {
            super(zzud.zzc);
        }

        public final zza zza(zzaho zzahoVar) {
            zzi();
            ((zzud) this.zza).zza(zzahoVar);
            return this;
        }

        public /* synthetic */ zza(zzuc zzucVar) {
            this();
        }

        public final zza zza(zzuh zzuhVar) {
            zzi();
            ((zzud) this.zza).zza(zzuhVar);
            return this;
        }
    }

    static {
        zzud zzudVar = new zzud();
        zzc = zzudVar;
        zzaje.zza((Class<zzud>) zzud.class, zzudVar);
    }

    private zzud() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzud zzd() {
        return zzc;
    }

    public static zzaky<zzud> zzg() {
        return (zzaky) zzc.zza(zzaje.zzf.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzuh zze() {
        zzuh zzuhVar = this.zzg;
        return zzuhVar == null ? zzuh.zze() : zzuhVar;
    }

    public final zzaho zzf() {
        return this.zzh;
    }

    public static zzud zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzud) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzuc.zza[i - 1];
        zzuc zzucVar = null;
        switch (i2) {
            case 1:
                return new zzud();
            case 2:
                return new zza(zzucVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzud> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzud.class) {
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
    public final void zza(zzuh zzuhVar) {
        zzuhVar.getClass();
        this.zzg = zzuhVar;
        this.zze |= 1;
    }
}
