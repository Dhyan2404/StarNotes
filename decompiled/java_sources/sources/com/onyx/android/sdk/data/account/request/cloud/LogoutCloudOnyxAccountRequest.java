package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0002¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/LogoutCloudOnyxAccountRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "execute", "", "logoutFromCloud", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LogoutCloudOnyxAccountRequest extends BaseAccountRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LogoutCloudOnyxAccountRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
    }

    private final void logoutFromCloud() {
        try {
            RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ServiceFactory.INSTANCE.getAccountService(ClusterInfo.INSTANCE.getContentApiHost(getClusterInfo())).logout(BaseCloudRequest.INSTANCE.getBearerToken(AccountDataBundle.INSTANCE.getTokenFromDB())), false, 1, null);
        } catch (OnyxException e) {
            if (!Intrinsics.areEqual(e.getType(), "Unauthorized")) {
                throw e;
            }
            Debug.INSTANCE.m32046e("Account not Unauthorized");
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72223execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72223execute() throws Exception {
        logoutFromCloud();
    }
}
