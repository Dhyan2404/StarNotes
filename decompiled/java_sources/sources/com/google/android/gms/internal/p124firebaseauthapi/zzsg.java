package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzsg extends zzaje<zzsg, zza> implements zzakr {
    private static final zzsg zzc;
    private static volatile zzaky<zzsg> zzd;
    private int zze;
    private int zzf;
    private zzsk zzg;
    private zzaho zzh = zzaho.zza;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzsg, zza> implements zzakr {
        private zza() {
            super(zzsg.zzc);
        }

        public final zza zza(zzaho zzahoVar) {
            zzi();
            ((zzsg) this.zza).zza(zzahoVar);
            return this;
        }

        public /* synthetic */ zza(zzsh zzshVar) {
            this();
        }

        public final zza zza(zzsk zzskVar) {
            zzi();
            ((zzsg) this.zza).zza(zzskVar);
            return this;
        }
    }

    static {
        zzsg zzsgVar = new zzsg();
        zzc = zzsgVar;
        zzaje.zza((Class<zzsg>) zzsg.class, zzsgVar);
    }

    private zzsg() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzsg zzd() {
        return zzc;
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzsk zze() {
        zzsk zzskVar = this.zzg;
        return zzskVar == null ? zzsk.zzd() : zzskVar;
    }

    public final zzaho zzf() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzsh.zza[i - 1];
        zzsh zzshVar = null;
        switch (i2) {
            case 1:
                return new zzsg();
            case 2:
                return new zza(zzshVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzsg> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzsg.class) {
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
    public final void zza(zzsk zzskVar) {
        zzskVar.getClass();
        this.zzg = zzskVar;
        this.zze |= 1;
    }
}
