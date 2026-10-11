package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import com.google.android.gms.internal.p124firebaseauthapi.zzvg;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzby {
    private final zzvg zza;
    private final List<zzca> zzb;
    private final zzrk zzc;

    private zzby(zzvg zzvgVar, List<zzca> list) {
        this.zza = zzvgVar;
        this.zzb = list;
        this.zzc = zzrk.zza;
    }

    private static zzbu zza(zzvg.zza zzaVar) throws GeneralSecurityException {
        zzou zza = zzou.zza(zzaVar.zzb().zzf(), zzaVar.zzb().zze(), zzaVar.zzb().zzb(), zzaVar.zzf(), zzaVar.zzf() == zzvs.RAW ? null : Integer.valueOf(zzaVar.zza()));
        zzns zza2 = zzns.zza();
        zzcn zza3 = zzcn.zza();
        if (!zza2.zzb(zza)) {
            return new zzna(zza, zza3);
        }
        return zza2.zza((zzns) zza, zza3);
    }

    public final String toString() {
        return zzcs.zza(this.zza).toString();
    }

    public final zzvg zzb() {
        return this.zza;
    }

    public final zzvh zzc() {
        return zzcs.zza(this.zza);
    }

    private static List<zzca> zzb(zzvg zzvgVar) {
        ArrayList arrayList = new ArrayList(zzvgVar.zza());
        for (zzvg.zza zzaVar : zzvgVar.zze()) {
            int zza = zzaVar.zza();
            try {
                arrayList.add(new zzca(zza(zzaVar), zza(zzaVar.zzc()), zza, zza == zzvgVar.zzb()));
            } catch (GeneralSecurityException unused) {
                arrayList.add(null);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static void zzc(zzvg zzvgVar) throws GeneralSecurityException {
        if (zzvgVar == null || zzvgVar.zza() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
    }

    private zzby(zzvg zzvgVar, List<zzca> list, zzrk zzrkVar) {
        this.zza = zzvgVar;
        this.zzb = list;
        this.zzc = zzrkVar;
    }

    private static zzbw zza(zzva zzvaVar) throws GeneralSecurityException {
        int i = zzbx.zza[zzvaVar.ordinal()];
        if (i == 1) {
            return zzbw.zza;
        }
        if (i == 2) {
            return zzbw.zzb;
        }
        if (i == 3) {
            return zzbw.zzc;
        }
        throw new GeneralSecurityException("Unknown key status");
    }

    public static final zzby zza(zzvg zzvgVar) throws GeneralSecurityException {
        zzc(zzvgVar);
        return new zzby(zzvgVar, zzb(zzvgVar));
    }

    public final zzby zza() throws GeneralSecurityException {
        zzvg.zza zzaVar;
        zzca zzcaVar;
        zzva zzvaVar;
        if (this.zza != null) {
            zzvg.zzb zzc = zzvg.zzc();
            ArrayList arrayList = new ArrayList(this.zzb.size());
            int i = 0;
            for (zzca zzcaVar2 : this.zzb) {
                if (zzcaVar2 != null && (zzcaVar2.zzb() instanceof zzck)) {
                    zzbu zzb = ((zzck) zzcaVar2.zzb()).zzb();
                    zzcaVar = new zzca(zzb, zzcaVar2.zzc(), zzcaVar2.zza(), zzcaVar2.zzd());
                    zzbw zzc2 = zzcaVar2.zzc();
                    int zza = zzcaVar2.zza();
                    zzou zzouVar = (zzou) zzns.zza().zza(zzb, zzou.class, zzcn.zza());
                    Integer zze = zzouVar.zze();
                    if (zze != null && zze.intValue() != zza) {
                        throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
                    }
                    if (zzbw.zza.equals(zzc2)) {
                        zzvaVar = zzva.ENABLED;
                    } else if (zzbw.zzb.equals(zzc2)) {
                        zzvaVar = zzva.DISABLED;
                    } else if (zzbw.zzc.equals(zzc2)) {
                        zzvaVar = zzva.DESTROYED;
                    } else {
                        throw new IllegalStateException("Unknown key status");
                    }
                    zzaVar = (zzvg.zza) ((zzaje) zzvg.zza.zzd().zza(zzuw.zza().zza(zzouVar.zzf()).zza(zzouVar.zzd()).zza(zzouVar.zza())).zza(zzvaVar).zza(zza).zza(zzouVar.zzc()).zzf());
                } else {
                    zzvg.zza zza2 = this.zza.zza(i);
                    zzuw zzb2 = zza2.zzb();
                    if (zzb2.zzb() == zzuw.zzb.ASYMMETRIC_PRIVATE) {
                        zzaVar = (zzvg.zza) ((zzaje) zza2.zzn().zza(zzco.zza(zzb2.zzf(), zzb2.zze())).zzf());
                        try {
                            zzbu zza3 = zza(zzaVar);
                            int zza4 = zzaVar.zza();
                            zzcaVar = new zzca(zza3, zza(zzaVar.zzc()), zza4, zza4 == this.zza.zzb());
                        } catch (GeneralSecurityException unused) {
                            zzcaVar = null;
                        }
                    } else {
                        throw new GeneralSecurityException("The keyset contains a non-private key");
                    }
                }
                zzc.zza(zzaVar);
                arrayList.add(zzcaVar);
                i++;
            }
            zzc.zza(this.zza.zzb());
            return new zzby((zzvg) ((zzaje) zzc.zzf()), arrayList, this.zzc);
        }
        throw new GeneralSecurityException("cleartext keyset is not available");
    }

    public static final zzby zza(zzcb zzcbVar, zzbh zzbhVar) throws GeneralSecurityException, IOException {
        byte[] bArr = new byte[0];
        zztx zza = zzcbVar.zza();
        if (zza != null && zza.zzc().zzb() != 0) {
            return zza(zza(zza, zzbhVar, bArr));
        }
        throw new GeneralSecurityException("empty keyset");
    }

    private static zztx zza(zzvg zzvgVar, zzbh zzbhVar, byte[] bArr) throws GeneralSecurityException {
        byte[] zzb = zzbhVar.zzb(zzvgVar.m22248a_(), bArr);
        try {
            if (zzvg.zza(zzbhVar.zza(zzb, bArr), zzaiq.zza()).equals(zzvgVar)) {
                return (zztx) ((zzaje) zztx.zza().zza(zzaho.zza(zzb)).zza(zzcs.zza(zzvgVar)).zzf());
            }
            throw new GeneralSecurityException("cannot encrypt keyset");
        } catch (zzajk unused) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    private static zzvg zza(zztx zztxVar, zzbh zzbhVar, byte[] bArr) throws GeneralSecurityException {
        try {
            zzvg zza = zzvg.zza(zzbhVar.zza(zztxVar.zzc().zzf(), bArr), zzaiq.zza());
            zzc(zza);
            return zza;
        } catch (zzajk unused) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    public final <P> P zza(Class<P> cls) throws GeneralSecurityException {
        zzoy zza = zzoy.zza();
        if (zza instanceof zzmo) {
            Class<?> zza2 = zza.zza(cls);
            if (zza2 != null) {
                return (P) zza(zza, cls, zza2);
            }
            throw new GeneralSecurityException("No wrapper found for " + cls.getName());
        }
        throw new GeneralSecurityException("Currently only subclasses of InternalConfiguration are accepted");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <B, P> P zza(zzmo zzmoVar, Class<P> cls, Class<B> cls2) throws GeneralSecurityException {
        zzcs.zzb(this.zza);
        zzon zza = zzoo.zza(cls2);
        zza.zza(this.zzc);
        for (int i = 0; i < this.zzb.size(); i++) {
            zzvg.zza zza2 = this.zza.zza(i);
            if (zza2.zzc().equals(zzva.ENABLED)) {
                zzca zzcaVar = this.zzb.get(i);
                if (zzcaVar != null) {
                    zzbu zzb = zzcaVar.zzb();
                    try {
                        Object zza3 = zzmoVar.zza(zzb, cls2);
                        if (zza2.zza() == this.zza.zzb()) {
                            zza.zzb(zza3, zzb, zza2);
                        } else {
                            zza.zza(zza3, zzb, zza2);
                        }
                    } catch (GeneralSecurityException e) {
                        throw new GeneralSecurityException("Unable to get primitive " + String.valueOf(cls2) + " for key of type " + zza2.zzb().zzf() + ", see https://developers.google.com/tink/faq/registration_errors", e);
                    }
                } else {
                    throw new GeneralSecurityException("Key parsing of key with index " + i + " and type_url " + zza2.zzb().zzf() + " failed, unable to get primitive");
                }
            }
        }
        return (P) zzmoVar.zza(zza.zza(), cls);
    }

    public final void zza(zzce zzceVar, zzbh zzbhVar) throws GeneralSecurityException, IOException {
        zzceVar.zza(zza(this.zza, zzbhVar, new byte[0]));
    }

    public final void zza(zzce zzceVar) throws GeneralSecurityException, IOException {
        for (zzvg.zza zzaVar : this.zza.zze()) {
            if (zzaVar.zzb().zzb() == zzuw.zzb.UNKNOWN_KEYMATERIAL || zzaVar.zzb().zzb() == zzuw.zzb.SYMMETRIC || zzaVar.zzb().zzb() == zzuw.zzb.ASYMMETRIC_PRIVATE) {
                throw new GeneralSecurityException(String.format("keyset contains key material of type %s for type url %s", zzaVar.zzb().zzb().name(), zzaVar.zzb().zzf()));
            }
        }
        zzceVar.zza(this.zza);
    }
}
