package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzvh extends zzaje<zzvh, zza> implements zzakr {
    private static final zzvh zzc;
    private static volatile zzaky<zzvh> zzd;
    private int zze;
    private zzajl<zzb> zzf = zzaje.zzp();

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzvh, zza> implements zzakr {
        private zza() {
            super(zzvh.zzc);
        }

        public final zza zza(zzb zzbVar) {
            zzi();
            ((zzvh) this.zza).zza(zzbVar);
            return this;
        }

        public /* synthetic */ zza(zzvi zzviVar) {
            this();
        }

        public final zza zza(int i) {
            zzi();
            ((zzvh) this.zza).zzc(i);
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public static final class zzb extends zzaje<zzb, zza> implements zzakr {
        private static final zzb zzc;
        private static volatile zzaky<zzb> zzd;
        private String zze = "";
        private int zzf;
        private int zzg;
        private int zzh;

        /* loaded from: classes5.dex */
        public static final class zza extends zzaje.zza<zzb, zza> implements zzakr {
            private zza() {
                super(zzb.zzc);
            }

            public final zza zza(int i) {
                zzi();
                ((zzb) this.zza).zza(i);
                return this;
            }

            public /* synthetic */ zza(zzvi zzviVar) {
                this();
            }

            public final zza zza(zzvs zzvsVar) {
                zzi();
                ((zzb) this.zza).zza(zzvsVar);
                return this;
            }

            public final zza zza(zzva zzvaVar) {
                zzi();
                ((zzb) this.zza).zza(zzvaVar);
                return this;
            }

            public final zza zza(String str) {
                zzi();
                ((zzb) this.zza).zza(str);
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzc = zzbVar;
            zzaje.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        public static zza zzb() {
            return zzc.zzm();
        }

        public final int zza() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
        public final Object zza(int i, Object obj, Object obj2) {
            int i2 = zzvi.zza[i - 1];
            zzvi zzviVar = null;
            switch (i2) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzviVar);
                case 3:
                    return zzaje.zza(zzc, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzc;
                case 5:
                    zzaky<zzb> zzakyVar = zzd;
                    if (zzakyVar == null) {
                        synchronized (zzb.class) {
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
        public final void zza(zzvs zzvsVar) {
            this.zzh = zzvsVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzva zzvaVar) {
            this.zzf = zzvaVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zze = str;
        }
    }

    static {
        zzvh zzvhVar = new zzvh();
        zzc = zzvhVar;
        zzaje.zza((Class<zzvh>) zzvh.class, zzvhVar);
    }

    private zzvh() {
    }

    public static zza zza() {
        return zzc.zzm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(int i) {
        this.zze = i;
    }

    public final zzb zza(int i) {
        return this.zzf.get(0);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzvi.zza[i - 1];
        zzvi zzviVar = null;
        switch (i2) {
            case 1:
                return new zzvh();
            case 2:
                return new zza(zzviVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", zzb.class});
            case 4:
                return zzc;
            case 5:
                zzaky<zzvh> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzvh.class) {
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
    public final void zza(zzb zzbVar) {
        zzbVar.getClass();
        zzajl<zzb> zzajlVar = this.zzf;
        if (!zzajlVar.zzc()) {
            this.zzf = zzaje.zza(zzajlVar);
        }
        this.zzf.add(zzbVar);
    }
}
