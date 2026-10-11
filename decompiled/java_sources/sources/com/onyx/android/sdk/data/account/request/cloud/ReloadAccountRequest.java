package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.CloudOnyxAccount;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/ReloadAccountRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "()V", "execute", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ReloadAccountRequest extends BaseCloudRequest {
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Object execute() {
        AccountContext accountContext = new AccountContext();
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        accountContext.setToken(accountDataBundle.getAccountToken());
        LoadUserInfoRequest loadUserInfoRequest = new LoadUserInfoRequest(accountContext);
        loadUserInfoRequest.m72240setClusterInfo(ClusterManager.INSTANCE.getCurClusterInfo());
        loadUserInfoRequest.m72213execute();
        OnyxAccountModel onyxAccount = accountDataBundle.getOnyxAccount();
        Intrinsics.checkNotNull(onyxAccount);
        if (accountDataBundle.isAlreadyLogin()) {
            CloudOnyxAccount cloudOnyxAccount = accountContext.getCloudOnyxAccount();
            Intrinsics.checkNotNull(cloudOnyxAccount);
            onyxAccount.updateAttribute(cloudOnyxAccount);
            CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccount(onyxAccount);
        }
        return onyxAccount;
    }
}
