package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.CloudOnyxAccount;
import com.onyx.android.sdk.data.account.bean.HuaweiVerifyArgs;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\u0006H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiVerifyRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "verifyArgs", "Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;", "(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V", "bindHuawei", "", "destroyHuawei", "execute", "unbindHuawei", "updateUserInfo", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HuaweiVerifyRequest extends BaseCloudRequest {

    @NotNull
    private final HuaweiVerifyArgs verifyArgs;

    public HuaweiVerifyRequest(@NotNull HuaweiVerifyArgs verifyArgs) {
        Intrinsics.checkNotNullParameter(verifyArgs, "verifyArgs");
        this.verifyArgs = verifyArgs;
    }

    private final void bindHuawei() {
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).bindHuawei(this.verifyArgs), false, 1, null);
    }

    private final void destroyHuawei() {
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).destroyHuawei(this.verifyArgs), false, 1, null);
    }

    private final void unbindHuawei() {
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).unbindHuawei(this.verifyArgs), false, 1, null);
    }

    private final void updateUserInfo() {
        AccountContext accountContext = new AccountContext();
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        accountContext.setToken(accountDataBundle.getAccountToken());
        LoadUserInfoRequest loadUserInfoRequest = new LoadUserInfoRequest(accountContext);
        loadUserInfoRequest.m72240setClusterInfo(ClusterManager.INSTANCE.getCurClusterInfo());
        loadUserInfoRequest.m72213execute();
        OnyxAccountModel onyxAccount = accountDataBundle.getOnyxAccount();
        Intrinsics.checkNotNull(onyxAccount);
        CloudOnyxAccount cloudOnyxAccount = accountContext.getCloudOnyxAccount();
        onyxAccount.setHuawei(cloudOnyxAccount != null ? cloudOnyxAccount.getHuawei() : null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72212execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72212execute() {
        String action = this.verifyArgs.getAction();
        if (action != null) {
            int hashCode = action.hashCode();
            if (hashCode == -840745386) {
                if (action.equals("unbind")) {
                    unbindHuawei();
                    updateUserInfo();
                    return;
                }
                return;
            }
            if (hashCode != 3023933) {
                if (hashCode == 1557372922 && action.equals("destroy")) {
                    destroyHuawei();
                    return;
                }
                return;
            }
            if (action.equals("bind")) {
                bindHuawei();
                updateUserInfo();
            }
        }
    }
}
