package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes6.dex */
final class zzku extends zzle {
    public zzku(int i) {
        super(i, null);
    }

    @Override // com.google.android.recaptcha.internal.zzle
    public final void zza() {
        if (!zzj()) {
            for (int i = 0; i < zzb(); i++) {
                ((zzii) zzg(i).getKey()).zzg();
            }
            Iterator it2 = zzc().iterator();
            while (it2.hasNext()) {
                ((zzii) ((Map.Entry) it2.next()).getKey()).zzg();
            }
        }
        super.zza();
    }
}
