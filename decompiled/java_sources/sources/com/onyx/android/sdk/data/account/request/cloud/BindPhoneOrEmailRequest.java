package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.BindPhoneOrEmailArgs;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/BindPhoneOrEmailRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "bindArgs", "Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;", "(Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;)V", "execute", "", "updateAccountInfo", "localAccount", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BindPhoneOrEmailRequest extends BaseCloudRequest {

    @NotNull
    private final BindPhoneOrEmailArgs bindArgs;

    public BindPhoneOrEmailRequest(@NotNull BindPhoneOrEmailArgs bindArgs) {
        Intrinsics.checkNotNullParameter(bindArgs, "bindArgs");
        this.bindArgs = bindArgs;
    }

    private final void updateAccountInfo(OnyxAccountModel localAccount) {
        String areaCode = this.bindArgs.getAreaCode();
        if (areaCode != null) {
            localAccount.setAreaCode(areaCode);
        }
        String verifiedAccount = this.bindArgs.getVerifiedAccount();
        if (verifiedAccount != null) {
            String boundAccountType = this.bindArgs.getBoundAccountType();
            if (Intrinsics.areEqual(boundAccountType, "phone")) {
                localAccount.setPhone(verifiedAccount);
            } else if (Intrinsics.areEqual(boundAccountType, "email")) {
                localAccount.setEmail(verifiedAccount);
            }
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72203execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72203execute() {
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).bindPhoneOrEmail(this.bindArgs), false, 1, null);
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        Intrinsics.checkNotNull(onyxAccount);
        updateAccountInfo(onyxAccount);
        CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccount(onyxAccount);
    }
}
