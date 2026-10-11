package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzsj extends zzaje<zzsj, zza> implements zzakr {
    private static final zzsj zzc;
    private static volatile zzaky<zzsj> zzd;
    private int zze;
    private zzsk zzf;
    private int zzg;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzsj, zza> implements zzakr {
        private zza() {
            super(zzsj.zzc);
        }

        public final zza zza(int i) {
            zzi();
            ((zzsj) this.zza).zza(i);
            return this;
        }

        public /* synthetic */ zza(zzsi zzsiVar) {
            this();
        }

        public final zza zza(zzsk zzskVar) {
            zzi();
            ((zzsj) this.zza).zza(zzskVar);
            return this;
        }
    }

    static {
        zzsj zzsjVar = new zzsj();
        zzc = zzsjVar;
        zzaje.zza((Class<zzsj>) zzsj.class, zzsjVar);
    }

    private zzsj() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzsj zzd() {
        return zzc;
    }

    public final int zza() {
        return this.zzg;
    }

    public final zzsk zze() {
        zzsk zzskVar = this.zzf;
        return zzskVar == null ? zzsk.zzd() : zzskVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzsi.zza[i - 1];
        zzsi zzsiVar = null;
        switch (i2) {
            case 1:
                return new zzsj();
            case 2:
                return new zza(zzsiVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzsj> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzsj.class) {
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
        this.zzg = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzsk zzskVar) {
        zzskVar.getClass();
        this.zzf = zzskVar;
        this.zze |= 1;
    }
}
