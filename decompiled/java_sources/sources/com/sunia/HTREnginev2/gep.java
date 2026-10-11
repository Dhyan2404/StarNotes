package com.sunia.HTREnginev2;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.auth.api.signin.internal.zbs;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes5.dex */
public final class gep extends qep {

    /* renamed from: a */
    public final /* synthetic */ Context f70963a;

    /* renamed from: b */
    public final /* synthetic */ GoogleSignInOptions f70964b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gep(GoogleApiClient googleApiClient, Context context, GoogleSignInOptions googleSignInOptions) {
        super(googleApiClient);
        this.f70963a = context;
        this.f70964b = googleSignInOptions;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new GoogleSignInResult(null, status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zbs) ((com.google.android.gms.auth.api.signin.internal.zbe) anyClient).getService()).zbe(new dep(this), this.f70964b);
    }
}
