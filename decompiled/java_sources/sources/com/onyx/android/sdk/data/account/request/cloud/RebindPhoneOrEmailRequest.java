package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.RebindPhoneOrEmailArgs;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/RebindPhoneOrEmailRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "rebindArgs", "Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;", "(Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;)V", "execute", "", "updateAccountInfo", "localAccount", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RebindPhoneOrEmailRequest extends BaseCloudRequest {

    @NotNull
    private final RebindPhoneOrEmailArgs rebindArgs;

    public RebindPhoneOrEmailRequest(@NotNull RebindPhoneOrEmailArgs rebindArgs) {
        Intrinsics.checkNotNullParameter(rebindArgs, "rebindArgs");
        this.rebindArgs = rebindArgs;
    }

    private final void updateAccountInfo(OnyxAccountModel localAccount) {
        String accountType = this.rebindArgs.getAccountType();
        if (Intrinsics.areEqual(accountType, "phone")) {
            localAccount.setPhone(this.rebindArgs.getNewAccount());
            localAccount.setAreaCode(this.rebindArgs.getNewAreaCode());
        } else if (Intrinsics.areEqual(accountType, "email")) {
            localAccount.setEmail(this.rebindArgs.getNewAccount());
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72230execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72230execute() {
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).rebindPhoneOrEmail(this.rebindArgs), false, 1, null);
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        Intrinsics.checkNotNull(onyxAccount);
        updateAccountInfo(onyxAccount);
        CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccount(onyxAccount);
    }
}
