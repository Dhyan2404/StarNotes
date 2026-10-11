package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.CloudOnyxAccount;
import com.onyx.android.sdk.data.account.bean.WechatVerifyArgs;
import com.onyx.android.sdk.data.account.bean.WechatVerifyTypes;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/WechatVerifyRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "verifyArgs", "Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;", "(Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;)V", "execute", "", "updateUserInfo", "verifyByApp", "verifyByQr", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WechatVerifyRequest extends BaseCloudRequest {

    @NotNull
    private final WechatVerifyArgs verifyArgs;

    public WechatVerifyRequest(@NotNull WechatVerifyArgs verifyArgs) {
        Intrinsics.checkNotNullParameter(verifyArgs, "verifyArgs");
        this.verifyArgs = verifyArgs;
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
        Intrinsics.checkNotNull(cloudOnyxAccount);
        onyxAccount.updateAttribute(cloudOnyxAccount);
    }

    private final void verifyByApp() {
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).wechatVerifyWithApp(this.verifyArgs), false, 1, null);
    }

    private final void verifyByQr() {
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).wechatVerifyWithQr(BaseCloudRequest.INSTANCE.getBearerToken(AccountDataBundle.INSTANCE.getAccountToken()), this.verifyArgs), false, 1, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72234execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72234execute() {
        List listOf;
        boolean contains;
        String type = this.verifyArgs.getType();
        if (Intrinsics.areEqual(type, WechatVerifyTypes.QR)) {
            verifyByQr();
        } else if (Intrinsics.areEqual(type, "APP")) {
            verifyByApp();
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"bind", "unbind"});
        contains = CollectionsKt___CollectionsKt.contains(listOf, this.verifyArgs.getAction());
        if (contains) {
            updateUserInfo();
        }
    }
}
