package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.List;

/* loaded from: classes5.dex */
public final class zzame extends RuntimeException {
    private final List<String> zza;

    public zzame(zzakp zzakpVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.zza = null;
    }

    public final zzajk zza() {
        return new zzajk(getMessage());
    }
}
