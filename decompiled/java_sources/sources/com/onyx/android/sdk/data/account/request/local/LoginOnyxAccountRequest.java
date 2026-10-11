package com.onyx.android.sdk.data.account.request.local;

import com.onyx.android.sdk.data.account.AccountLogUtils;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.CloudOnyxAccount;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.account.request.cloud.BaseAccountRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.utils.MMKVAccount;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/local/LoginOnyxAccountRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoginOnyxAccountRequest extends BaseAccountRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginOnyxAccountRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72235execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72235execute() throws Exception {
        OnyxAccountModel onyxAccountModel = new OnyxAccountModel();
        CloudOnyxAccount cloudOnyxAccount = getAccountContext().getCloudOnyxAccount();
        Intrinsics.checkNotNull(cloudOnyxAccount);
        onyxAccountModel.updateAttribute(cloudOnyxAccount);
        onyxAccountModel.setToken(getAccountContext().getToken());
        AccountIntentArgs accountIntentArgs = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs);
        onyxAccountModel.setLoginType(accountIntentArgs.getLoginType());
        AccountIntentArgs accountIntentArgs2 = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs2);
        onyxAccountModel.setLoginAccount(accountIntentArgs2.getAccount());
        AccountIntentArgs accountIntentArgs3 = getAccountContext().getAccountIntentArgs();
        onyxAccountModel.setAreaCode(accountIntentArgs3 != null ? accountIntentArgs3.getAreaCode() : null);
        ClusterInfo clusterInfo = getAccountContext().getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        onyxAccountModel.setClusterId(clusterInfo.getClusterId());
        onyxAccountModel.setTokenExpiredAt(getAccountContext().getTokenExpiredAt());
        onyxAccountModel.setLocalVisible(true);
        onyxAccountModel.setLogoff(false);
        CouchDBManager couchDBManager = CouchDBManager.INSTANCE;
        couchDBManager.getOnyxAccountProvider().logOut(1);
        couchDBManager.getOnyxAccountProvider().logIn(onyxAccountModel);
        MMKVAccount.INSTANCE.setLastTokenUpdateTime(MMKVUtils.INSTANCE, System.currentTimeMillis());
        AccountLogUtils.INSTANCE.m32937i(LoginOnyxAccountRequest.class, "login onyx account");
    }
}
