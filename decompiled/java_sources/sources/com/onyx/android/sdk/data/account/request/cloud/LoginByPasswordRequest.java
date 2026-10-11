package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.DataResponseKt;
import com.onyx.android.sdk.data.account.bean.LoginByPasswordParams;
import com.onyx.android.sdk.data.account.bean.TokenBean;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/LoginByPasswordRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoginByPasswordRequest extends BaseAccountRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginByPasswordRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72219execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72219execute() throws Exception {
        TokenBean tokenBean;
        CloudAccountService cloudAccountService = (CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class);
        AccountIntentArgs accountIntentArgs = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs);
        String verify = accountIntentArgs.getVerify();
        Intrinsics.checkNotNull(verify);
        AccountIntentArgs accountIntentArgs2 = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs2);
        String account = accountIntentArgs2.getAccount();
        Intrinsics.checkNotNull(account);
        AccountIntentArgs accountIntentArgs3 = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs3);
        String password = accountIntentArgs3.getPassword();
        Intrinsics.checkNotNull(password);
        Object parseObject = JSONUtils.INSTANCE.parseObject(verify, (Class<Object>) LoginByPasswordParams.Verify.class);
        Intrinsics.checkNotNull(parseObject);
        DataResponse dataResponse = (DataResponse) RetrofitUtils.INSTANCE.executeCall(cloudAccountService.logInByPassword(new LoginByPasswordParams(password, "nc_register_h5", account, (LoginByPasswordParams.Verify) parseObject))).body();
        if (DataResponseKt.isSuccess(dataResponse)) {
            getAccountContext().setToken((dataResponse == null || (tokenBean = (TokenBean) dataResponse.getData()) == null) ? null : tokenBean.getToken());
            return;
        }
        throw OnyxException.INSTANCE.m31893of(ErrorType.REQUEST_FAIL, dataResponse.getMessage(), dataResponse.getResultCode());
    }
}
