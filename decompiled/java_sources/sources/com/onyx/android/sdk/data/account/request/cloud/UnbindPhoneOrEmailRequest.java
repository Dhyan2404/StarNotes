package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.UnbindPhoneOrEmailArgs;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/UnbindPhoneOrEmailRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "unbindArgs", "Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;", "(Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;)V", "execute", "", "updateAccountInfo", "localAccount", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UnbindPhoneOrEmailRequest extends BaseCloudRequest {

    @NotNull
    private final UnbindPhoneOrEmailArgs unbindArgs;

    public UnbindPhoneOrEmailRequest(@NotNull UnbindPhoneOrEmailArgs unbindArgs) {
        Intrinsics.checkNotNullParameter(unbindArgs, "unbindArgs");
        this.unbindArgs = unbindArgs;
    }

    private final void updateAccountInfo(OnyxAccountModel localAccount) {
        String unboundAccountType = this.unbindArgs.getUnboundAccountType();
        if (Intrinsics.areEqual(unboundAccountType, "phone")) {
            localAccount.setPhone(null);
            localAccount.setAreaCode(null);
        } else if (Intrinsics.areEqual(unboundAccountType, "email")) {
            localAccount.setEmail(null);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72231execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72231execute() {
        CloudAccountService accountService = ServiceFactory.INSTANCE.getAccountService(ClusterInfo.INSTANCE.getContentApiHost(ClusterManager.INSTANCE.getCurClusterInfo()));
        BaseCloudRequest.Companion companion = BaseCloudRequest.INSTANCE;
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, accountService.unbindPhoneOrEmail(companion.getBearerToken(accountDataBundle.getAccountToken()), this.unbindArgs), false, 1, null);
        OnyxAccountModel onyxAccount = accountDataBundle.getOnyxAccount();
        Intrinsics.checkNotNull(onyxAccount);
        updateAccountInfo(onyxAccount);
        CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccount(onyxAccount);
    }
}
