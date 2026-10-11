package com.google.firebase.auth.internal;

import com.google.firebase.auth.SignInMethodQueryResult;
import java.util.List;

/* loaded from: classes6.dex */
public final class zzao implements SignInMethodQueryResult {

    /* renamed from: a */
    public final List<String> f35713a;

    public zzao(List<String> list) {
        this.f35713a = list;
    }

    @Override // com.google.firebase.auth.SignInMethodQueryResult
    public final List<String> getSignInMethods() {
        return this.f35713a;
    }
}
