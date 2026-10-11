package com.google.firebase.auth.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.ActionCodeEmailInfo;

/* loaded from: classes6.dex */
public final class zzq extends ActionCodeEmailInfo {

    /* renamed from: a */
    public final String f35772a;

    public zzq(String str, String str2) {
        this.email = Preconditions.checkNotEmpty(str);
        this.f35772a = Preconditions.checkNotEmpty(str2);
    }

    @Override // com.google.firebase.auth.ActionCodeEmailInfo
    public final String getPreviousEmail() {
        return this.f35772a;
    }
}
