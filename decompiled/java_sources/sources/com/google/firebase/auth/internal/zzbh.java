package com.google.firebase.auth.internal;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzafq;
import com.google.android.gms.internal.p124firebaseauthapi.zzagq;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public final class zzbh {
    @Nullable
    public static MultiFactorInfo zza(zzafq zzafqVar) {
        if (zzafqVar == null) {
            return null;
        }
        if (!TextUtils.isEmpty(zzafqVar.zze())) {
            return new PhoneMultiFactorInfo(zzafqVar.zzd(), zzafqVar.zzc(), zzafqVar.zza(), Preconditions.checkNotEmpty(zzafqVar.zze()));
        }
        if (zzafqVar.zzb() != null) {
            return new TotpMultiFactorInfo(zzafqVar.zzd(), zzafqVar.zzc(), zzafqVar.zza(), (zzagq) Preconditions.checkNotNull(zzafqVar.zzb(), "totpInfo cannot be null."));
        }
        return null;
    }

    public static List<MultiFactorInfo> zza(List<zzafq> list) {
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator<zzafq> it2 = list.iterator();
            while (it2.hasNext()) {
                MultiFactorInfo zza = zza(it2.next());
                if (zza != null) {
                    arrayList.add(zza);
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }
}
