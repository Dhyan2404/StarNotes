package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Strings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzagr {
    private final int zza;
    private List<String> zzb;

    public zzagr() {
        this(null);
    }

    public static zzagr zza() {
        return new zzagr(null);
    }

    public final List<String> zzb() {
        return this.zzb;
    }

    private zzagr(@Nullable List<String> list) {
        this.zza = 1;
        this.zzb = new ArrayList();
    }

    public zzagr(int i, List<String> list) {
        this.zza = 1;
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                list.set(i2, Strings.emptyToNull(list.get(i2)));
            }
            this.zzb = Collections.unmodifiableList(list);
            return;
        }
        this.zzb = Collections.emptyList();
    }
}
