package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzrq {

    @Nullable
    private ArrayList<zzrt> zza = new ArrayList<>();
    private zzrk zzb = zzrk.zza;

    @Nullable
    private Integer zzc = null;

    public final zzrq zza(zzbw zzbwVar, int i, String str, String str2) {
        ArrayList<zzrt> arrayList = this.zza;
        if (arrayList != null) {
            arrayList.add(new zzrt(zzbwVar, i, str, str2));
            return this;
        }
        throw new IllegalStateException("addEntry cannot be called after build()");
    }

    public final zzrq zza(zzrk zzrkVar) {
        if (this.zza != null) {
            this.zzb = zzrkVar;
            return this;
        }
        throw new IllegalStateException("setAnnotations cannot be called after build()");
    }

    public final zzrq zza(int i) {
        if (this.zza != null) {
            this.zzc = Integer.valueOf(i);
            return this;
        }
        throw new IllegalStateException("setPrimaryKeyId cannot be called after build()");
    }

    public final zzrr zza() throws GeneralSecurityException {
        if (this.zza != null) {
            Integer num = this.zzc;
            if (num != null) {
                int intValue = num.intValue();
                ArrayList<zzrt> arrayList = this.zza;
                int size = arrayList.size();
                boolean z = false;
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    zzrt zzrtVar = arrayList.get(i);
                    i++;
                    if (zzrtVar.zza() == intValue) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    throw new GeneralSecurityException("primary key ID is not present in entries");
                }
            }
            zzrr zzrrVar = new zzrr(this.zzb, Collections.unmodifiableList(this.zza), this.zzc);
            this.zza = null;
            return zzrrVar;
        }
        throw new IllegalStateException("cannot call build() twice");
    }
}
