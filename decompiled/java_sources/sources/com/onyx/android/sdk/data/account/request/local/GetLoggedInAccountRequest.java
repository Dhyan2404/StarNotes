package com.onyx.android.sdk.data.account.request.local;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0000H\u0016J\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/local/GetLoggedInAccountRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "()V", "onyxAccount", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "execute", "getOnyxAccount", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GetLoggedInAccountRequest extends RxBaseRequest<GetLoggedInAccountRequest> {

    @Nullable
    private OnyxAccountModel onyxAccount;

    @Nullable
    public final OnyxAccountModel getOnyxAccount() {
        return this.onyxAccount;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public GetLoggedInAccountRequest execute() throws Exception {
        this.onyxAccount = CouchDBManager.INSTANCE.getOnyxAccountProvider().getLoggedInAccount();
        return this;
    }
}
