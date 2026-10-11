package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzun extends zzaje<zzun, zza> implements zzakr {
    private static final zzun zzc;
    private static volatile zzaky<zzun> zzd;
    private int zze;
    private zzur zzf;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzun, zza> implements zzakr {
        private zza() {
            super(zzun.zzc);
        }

        public final zza zza(zzur zzurVar) {
            zzi();
            ((zzun) this.zza).zza(zzurVar);
            return this;
        }

        public /* synthetic */ zza(zzup zzupVar) {
            this();
        }
    }

    static {
        zzun zzunVar = new zzun();
        zzc = zzunVar;
        zzaje.zza((Class<zzun>) zzun.class, zzunVar);
    }

    private zzun() {
    }

    public static zza zza() {
        return zzc.zzm();
    }

    public final zzur zzc() {
        zzur zzurVar = this.zzf;
        return zzurVar == null ? zzur.zzf() : zzurVar;
    }

    public static zzun zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzun) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzup.zza[i - 1];
        zzup zzupVar = null;
        switch (i2) {
            case 1:
                return new zzun();
            case 2:
                return new zza(zzupVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzun> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzun.class) {
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
    public final void zza(zzur zzurVar) {
        zzurVar.getClass();
        this.zzf = zzurVar;
        this.zze |= 1;
    }
}
