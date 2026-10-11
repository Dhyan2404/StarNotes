package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzvg;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzon<P> {
    private final Class<P> zza;
    private Map<zzxv, List<zzop<P>>> zzb;
    private final List<zzop<P>> zzc;
    private zzop<P> zzd;
    private zzrk zze;

    private final zzon<P> zza(P p, zzbu zzbuVar, zzvg.zza zzaVar, boolean z) throws GeneralSecurityException {
        zzxv zzxvVar;
        zzxv zzxvVar2;
        if (this.zzb == null) {
            throw new IllegalStateException("addEntry cannot be called after build");
        }
        if (p != null) {
            if (zzaVar.zzc() == zzva.ENABLED) {
                zzop<P> zzopVar = new zzop<>(p, zzxv.zza(zzbo.zza(zzaVar)), zzaVar.zzc(), zzaVar.zzf(), zzaVar.zza(), zzaVar.zzb().zzf(), zzbuVar);
                Map<zzxv, List<zzop<P>>> map = this.zzb;
                List<zzop<P>> list = this.zzc;
                ArrayList arrayList = new ArrayList();
                arrayList.add(zzopVar);
                zzxvVar = ((zzop) zzopVar).zzb;
                List<zzop<P>> put = map.put(zzxvVar, Collections.unmodifiableList(arrayList));
                if (put != null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(put);
                    arrayList2.add(zzopVar);
                    zzxvVar2 = ((zzop) zzopVar).zzb;
                    map.put(zzxvVar2, Collections.unmodifiableList(arrayList2));
                }
                list.add(zzopVar);
                if (z) {
                    if (this.zzd == null) {
                        this.zzd = zzopVar;
                    } else {
                        throw new IllegalStateException("you cannot set two primary primitives");
                    }
                }
                return this;
            }
            throw new GeneralSecurityException("only ENABLED key is allowed");
        }
        throw new NullPointerException("`fullPrimitive` must not be null");
    }

    public final zzon<P> zzb(P p, zzbu zzbuVar, zzvg.zza zzaVar) throws GeneralSecurityException {
        return zza(p, zzbuVar, zzaVar, true);
    }

    private zzon(Class<P> cls) {
        this.zzb = new HashMap();
        this.zzc = new ArrayList();
        this.zza = cls;
        this.zze = zzrk.zza;
    }

    public final zzon<P> zza(P p, zzbu zzbuVar, zzvg.zza zzaVar) throws GeneralSecurityException {
        return zza(p, zzbuVar, zzaVar, false);
    }

    public final zzon<P> zza(zzrk zzrkVar) {
        if (this.zzb != null) {
            this.zze = zzrkVar;
            return this;
        }
        throw new IllegalStateException("setAnnotations cannot be called after build");
    }

    public final zzoo<P> zza() throws GeneralSecurityException {
        Map<zzxv, List<zzop<P>>> map = this.zzb;
        if (map != null) {
            zzoo<P> zzooVar = new zzoo<>(map, this.zzc, this.zzd, this.zze, this.zza);
            this.zzb = null;
            return zzooVar;
        }
        throw new IllegalStateException("build cannot be called twice");
    }
}
