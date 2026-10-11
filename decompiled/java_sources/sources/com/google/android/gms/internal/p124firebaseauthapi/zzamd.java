package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzamd extends zzaje<zzamd, zza> implements zzakr {
    private static final zzamd zzc;
    private static volatile zzaky<zzamd> zzd;
    private long zze;
    private int zzf;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzamd, zza> implements zzakr {
        private zza() {
            super(zzamd.zzc);
        }

        public final zza zza(int i) {
            if (!this.zza.zzu()) {
                zzj();
            }
            ((zzamd) this.zza).zza(i);
            return this;
        }

        public /* synthetic */ zza(zzamc zzamcVar) {
            this();
        }

        public final zza zza(long j) {
            if (!this.zza.zzu()) {
                zzj();
            }
            ((zzamd) this.zza).zza(j);
            return this;
        }
    }

    static {
        zzamd zzamdVar = new zzamd();
        zzc = zzamdVar;
        zzaje.zza((Class<zzamd>) zzamd.class, zzamdVar);
    }

    private zzamd() {
    }

    public static zza zzc() {
        return zzc.zzm();
    }

    public final int zza() {
        return this.zzf;
    }

    public final long zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzamc.zza[i - 1];
        zzamc zzamcVar = null;
        switch (i2) {
            case 1:
                return new zzamd();
            case 2:
                return new zza(zzamcVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzamd> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzamd.class) {
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
    public final void zza(int i) {
        this.zzf = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(long j) {
        this.zze = j;
    }
}
