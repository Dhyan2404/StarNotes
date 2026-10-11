package com.onyx.android.sdk.data.account.request.local;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.request.cloud.BaseAccountRequest;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/local/LogoutLocalOnyxAccountRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "logoutReason", "", "execute", "", "setLogoutReason", "reason", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LogoutLocalOnyxAccountRequest extends BaseAccountRequest {
    private int logoutReason;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LogoutLocalOnyxAccountRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72236execute();
        return Unit.INSTANCE;
    }

    @NotNull
    public final LogoutLocalOnyxAccountRequest setLogoutReason(int reason) {
        this.logoutReason = reason;
        return this;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72236execute() throws Exception {
        CouchDBManager.INSTANCE.getOnyxAccountProvider().logOut(this.logoutReason);
        Debug.INSTANCE.m32052i(LogoutLocalOnyxAccountRequest.class, "LogoutOnyxAccountRequest: " + this.logoutReason, new Object[0]);
    }
}
