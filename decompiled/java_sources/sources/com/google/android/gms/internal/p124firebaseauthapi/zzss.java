package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzss extends zzaje<zzss, zza> implements zzakr {
    private static final zzss zzc;
    private static volatile zzaky<zzss> zzd;
    private int zze;
    private zzaho zzf = zzaho.zza;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzss, zza> implements zzakr {
        private zza() {
            super(zzss.zzc);
        }

        public final zza zza(zzaho zzahoVar) {
            zzi();
            ((zzss) this.zza).zza(zzahoVar);
            return this;
        }

        public /* synthetic */ zza(zzst zzstVar) {
            this();
        }
    }

    static {
        zzss zzssVar = new zzss();
        zzc = zzssVar;
        zzaje.zza((Class<zzss>) zzss.class, zzssVar);
    }

    private zzss() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzaky<zzss> zze() {
        return (zzaky) zzc.zza(zzaje.zzf.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zze;
    }

    public final zzaho zzd() {
        return this.zzf;
    }

    public static zzss zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzss) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzst.zza[i - 1];
        zzst zzstVar = null;
        switch (i2) {
            case 1:
                return new zzss();
            case 2:
                return new zza(zzstVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzss> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzss.class) {
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
        this.zzf = zzahoVar;
    }
}
