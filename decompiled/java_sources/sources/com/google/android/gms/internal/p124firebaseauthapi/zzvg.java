package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzvg extends zzaje<zzvg, zzb> implements zzakr {
    private static final zzvg zzc;
    private static volatile zzaky<zzvg> zzd;
    private int zze;
    private zzajl<zza> zzf = zzaje.zzp();

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje<zza, C20575zza> implements zzakr {
        private static final zza zzc;
        private static volatile zzaky<zza> zzd;
        private int zze;
        private zzuw zzf;
        private int zzg;
        private int zzh;
        private int zzi;

        /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzvg$zza$zza, reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C20575zza extends zzaje.zza<zza, C20575zza> implements zzakr {
            private C20575zza() {
                super(zza.zzc);
            }

            public final C20575zza zza(zzuw.zza zzaVar) {
                zzi();
                ((zza) this.zza).zza((zzuw) ((zzaje) zzaVar.zzf()));
                return this;
            }

            public /* synthetic */ C20575zza(zzvf zzvfVar) {
                this();
            }

            public final C20575zza zza(zzuw zzuwVar) {
                zzi();
                ((zza) this.zza).zza(zzuwVar);
                return this;
            }

            public final C20575zza zza(int i) {
                zzi();
                ((zza) this.zza).zza(i);
                return this;
            }

            public final C20575zza zza(zzvs zzvsVar) {
                zzi();
                ((zza) this.zza).zza(zzvsVar);
                return this;
            }

            public final C20575zza zza(zzva zzvaVar) {
                zzi();
                ((zza) this.zza).zza(zzvaVar);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzc = zzaVar;
            zzaje.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        public static C20575zza zzd() {
            return zzc.zzm();
        }

        public final int zza() {
            return this.zzh;
        }

        public final zzuw zzb() {
            zzuw zzuwVar = this.zzf;
            return zzuwVar == null ? zzuw.zzd() : zzuwVar;
        }

        public final zzva zzc() {
            zzva zza = zzva.zza(this.zzg);
            return zza == null ? zzva.UNRECOGNIZED : zza;
        }

        public final zzvs zzf() {
            zzvs zza = zzvs.zza(this.zzi);
            return zza == null ? zzvs.UNRECOGNIZED : zza;
        }

        public final boolean zzg() {
            return (this.zze & 1) != 0;
        }

        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
        public final Object zza(int i, Object obj, Object obj2) {
            int i2 = zzvf.zza[i - 1];
            zzvf zzvfVar = null;
            switch (i2) {
                case 1:
                    return new zza();
                case 2:
                    return new C20575zza(zzvfVar);
                case 3:
                    return zzaje.zza(zzc, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzc;
                case 5:
                    zzaky<zza> zzakyVar = zzd;
                    if (zzakyVar == null) {
                        synchronized (zza.class) {
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
        public final void zza(zzuw zzuwVar) {
            zzuwVar.getClass();
            this.zzf = zzuwVar;
            this.zze |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i) {
            this.zzh = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzvs zzvsVar) {
            this.zzi = zzvsVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzva zzvaVar) {
            this.zzg = zzvaVar.zza();
        }
    }

    /* loaded from: classes5.dex */
    public static final class zzb extends zzaje.zza<zzvg, zzb> implements zzakr {
        private zzb() {
            super(zzvg.zzc);
        }

        public final int zza() {
            return ((zzvg) this.zza).zza();
        }

        public final zza zzb(int i) {
            return ((zzvg) this.zza).zza(i);
        }

        public /* synthetic */ zzb(zzvf zzvfVar) {
            this();
        }

        public final zzb zza(zza zzaVar) {
            zzi();
            ((zzvg) this.zza).zza(zzaVar);
            return this;
        }

        public final List<zza> zzb() {
            return Collections.unmodifiableList(((zzvg) this.zza).zze());
        }

        public final zzb zza(int i) {
            zzi();
            ((zzvg) this.zza).zzc(i);
            return this;
        }
    }

    static {
        zzvg zzvgVar = new zzvg();
        zzc = zzvgVar;
        zzaje.zza((Class<zzvg>) zzvg.class, zzvgVar);
    }

    private zzvg() {
    }

    public static zzb zzc() {
        return zzc.zzm();
    }

    public final int zza() {
        return this.zzf.size();
    }

    public final int zzb() {
        return this.zze;
    }

    public final List<zza> zze() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(int i) {
        this.zze = i;
    }

    public final zza zza(int i) {
        return this.zzf.get(i);
    }

    public static zzvg zza(InputStream inputStream, zzaiq zzaiqVar) throws IOException {
        return (zzvg) zzaje.zza(zzc, inputStream, zzaiqVar);
    }

    public static zzvg zza(byte[] bArr, zzaiq zzaiqVar) throws zzajk {
        return (zzvg) zzaje.zza(zzc, bArr, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzvf.zza[i - 1];
        zzvf zzvfVar = null;
        switch (i2) {
            case 1:
                return new zzvg();
            case 2:
                return new zzb(zzvfVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", zza.class});
            case 4:
                return zzc;
            case 5:
                zzaky<zzvg> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzvg.class) {
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
    public final void zza(zza zzaVar) {
        zzaVar.getClass();
        zzajl<zza> zzajlVar = this.zzf;
        if (!zzajlVar.zzc()) {
            this.zzf = zzaje.zza(zzajlVar);
        }
        this.zzf.add(zzaVar);
    }
}
