package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzsk extends zzaje<zzsk, zza> implements zzakr {
    private static final zzsk zzc;
    private static volatile zzaky<zzsk> zzd;
    private int zze;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzsk, zza> implements zzakr {
        private zza() {
            super(zzsk.zzc);
        }

        public final zza zza(int i) {
            zzi();
            ((zzsk) this.zza).zza(i);
            return this;
        }

        public /* synthetic */ zza(zzsl zzslVar) {
            this();
        }
    }

    static {
        zzsk zzskVar = new zzsk();
        zzc = zzskVar;
        zzaje.zza((Class<zzsk>) zzsk.class, zzskVar);
    }

    private zzsk() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzsk zzd() {
        return zzc;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzsl.zza[i - 1];
        zzsl zzslVar = null;
        switch (i2) {
            case 1:
                return new zzsk();
            case 2:
                return new zza(zzslVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzsk> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzsk.class) {
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
        this.zze = i;
    }
}
