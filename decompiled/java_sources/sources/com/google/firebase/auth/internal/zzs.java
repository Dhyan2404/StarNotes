package com.google.firebase.auth.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.ActionCodeMultiFactorInfo;
import com.google.firebase.auth.MultiFactorInfo;

/* loaded from: classes6.dex */
public final class zzs extends ActionCodeMultiFactorInfo {

    /* renamed from: a */
    public final MultiFactorInfo f35777a;

    public zzs(String str, MultiFactorInfo multiFactorInfo) {
        this.email = Preconditions.checkNotEmpty(str);
        this.f35777a = (MultiFactorInfo) Preconditions.checkNotNull(multiFactorInfo);
    }

    @Override // com.google.firebase.auth.ActionCodeMultiFactorInfo
    public final MultiFactorInfo getMultiFactorInfo() {
        return this.f35777a;
    }
}
