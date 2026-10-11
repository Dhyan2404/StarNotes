package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zztn extends zzaje<zztn, zza> implements zzakr {
    private static final zztn zzc;
    private static volatile zzaky<zztn> zzd;
    private int zze;
    private zzto zzf;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zztn, zza> implements zzakr {
        private zza() {
            super(zztn.zzc);
        }

        public final zza zza(zzto zztoVar) {
            zzi();
            ((zztn) this.zza).zza(zztoVar);
            return this;
        }

        public /* synthetic */ zza(zztm zztmVar) {
            this();
        }
    }

    static {
        zztn zztnVar = new zztn();
        zzc = zztnVar;
        zzaje.zza((Class<zztn>) zztn.class, zztnVar);
    }

    private zztn() {
    }

    public static zza zza() {
        return zzc.zzm();
    }

    public final zzto zzc() {
        zzto zztoVar = this.zzf;
        return zztoVar == null ? zzto.zze() : zztoVar;
    }

    public static zztn zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zztn) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zztm.zza[i - 1];
        zztm zztmVar = null;
        switch (i2) {
            case 1:
                return new zztn();
            case 2:
                return new zza(zztmVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzaky<zztn> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zztn.class) {
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
    public final void zza(zzto zztoVar) {
        zztoVar.getClass();
        this.zzf = zztoVar;
        this.zze |= 1;
    }
}
