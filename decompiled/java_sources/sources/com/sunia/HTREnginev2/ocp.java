package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;

/* loaded from: classes5.dex */
public final class ocp implements PendingResultUtil.ResultConverter {
    public /* synthetic */ ocp(com.google.android.gms.auth.api.signin.zba zbaVar) {
    }

    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    @Nullable
    public final /* synthetic */ Object convert(Result result) {
        return ((GoogleSignInResult) result).getSignInAccount();
    }

    public ocp() {
    }
}
