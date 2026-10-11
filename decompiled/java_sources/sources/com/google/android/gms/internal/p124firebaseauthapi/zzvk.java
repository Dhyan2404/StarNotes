package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzvk extends zzaje<zzvk, zza> implements zzakr {
    private static final zzvk zzc;
    private static volatile zzaky<zzvk> zzd;
    private int zze;
    private int zzf;
    private zzvl zzg;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzvk, zza> implements zzakr {
        private zza() {
            super(zzvk.zzc);
        }

        public final zza zza(zzvl zzvlVar) {
            zzi();
            ((zzvk) this.zza).zza(zzvlVar);
            return this;
        }

        public /* synthetic */ zza(zzvj zzvjVar) {
            this();
        }
    }

    static {
        zzvk zzvkVar = new zzvk();
        zzc = zzvkVar;
        zzaje.zza((Class<zzvk>) zzvk.class, zzvkVar);
    }

    private zzvk() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzaky<zzvk> zze() {
        return (zzaky) zzc.zza(zzaje.zzf.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzvl zzd() {
        zzvl zzvlVar = this.zzg;
        return zzvlVar == null ? zzvl.zzc() : zzvlVar;
    }

    public static zzvk zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzvk) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzvj.zza[i - 1];
        zzvj zzvjVar = null;
        switch (i2) {
            case 1:
                return new zzvk();
            case 2:
                return new zza(zzvjVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzvk> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzvk.class) {
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
    public final void zza(zzvl zzvlVar) {
        zzvlVar.getClass();
        this.zzg = zzvlVar;
        this.zze |= 1;
    }
}
