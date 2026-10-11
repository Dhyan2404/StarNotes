package com.google.android.gms.internal.p124firebaseauthapi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzakd implements zzalg {
    private static final zzakm zza = new zzakc();
    private final zzakm zzb;

    public zzakd() {
        this(new zzake(zzajc.zza(), zza()));
    }

    private static zzakm zza() {
        try {
            return (zzakm) Class.forName("com.google.protobuf.h").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zza;
        }
    }

    private zzakd(zzakm zzakmVar) {
        this.zzb = (zzakm) zzajh.zza(zzakmVar, "messageInfoFactory");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalg
    public final <T> zzalh<T> zza(Class<T> cls) {
        zzalj.zza((Class<?>) cls);
        zzakn zza2 = this.zzb.zza(cls);
        if (zza2.zzc()) {
            if (zzaje.class.isAssignableFrom(cls)) {
                return zzakv.zza(zzalj.zzb(), zzaiu.zzb(), zza2.zza());
            }
            return zzakv.zza(zzalj.zza(), zzaiu.zza(), zza2.zza());
        }
        if (zzaje.class.isAssignableFrom(cls)) {
            if (zza(zza2)) {
                return zzakt.zza(cls, zza2, zzakz.zzb(), zzaju.zzb(), zzalj.zzb(), zzaiu.zzb(), zzakk.zzb());
            }
            return zzakt.zza(cls, zza2, zzakz.zzb(), zzaju.zzb(), zzalj.zzb(), (zzais<?>) null, zzakk.zzb());
        }
        if (zza(zza2)) {
            return zzakt.zza(cls, zza2, zzakz.zza(), zzaju.zza(), zzalj.zza(), zzaiu.zza(), zzakk.zza());
        }
        return zzakt.zza(cls, zza2, zzakz.zza(), zzaju.zza(), zzalj.zza(), (zzais<?>) null, zzakk.zza());
    }

    private static boolean zza(zzakn zzaknVar) {
        return zzakf.zza[zzaknVar.zzb().ordinal()] != 1;
    }
}
