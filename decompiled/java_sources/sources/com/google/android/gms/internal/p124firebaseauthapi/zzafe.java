package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzafe {
    private List<zzaff> zza;

    public zzafe() {
        this.zza = new ArrayList();
    }

    public final List<zzaff> zza() {
        return this.zza;
    }

    public zzafe(List<zzaff> list) {
        this.zza = Collections.unmodifiableList(list);
    }
}
