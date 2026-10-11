package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes5.dex */
public final class zzth extends zzaje<zzth, zza> implements zzakr {
    private static final zzth zzc;
    private static volatile zzaky<zzth> zzd;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzth, zza> implements zzakr {
        private zza() {
            super(zzth.zzc);
        }

        public /* synthetic */ zza(zztg zztgVar) {
            this();
        }
    }

    static {
        zzth zzthVar = new zzth();
        zzc = zzthVar;
        zzaje.zza((Class<zzth>) zzth.class, zzthVar);
    }

    private zzth() {
    }

    public static zzth zzb() {
        return zzc;
    }

    public static zzth zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzth) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zztg.zza[i - 1];
        zztg zztgVar = null;
        switch (i2) {
            case 1:
                return new zzth();
            case 2:
                return new zza(zztgVar);
            case 3:
                return zzaje.zza(zzc, TarConstants.VERSION_ANT, (Object[]) null);
            case 4:
                return zzc;
            case 5:
                zzaky<zzth> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzth.class) {
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
}
