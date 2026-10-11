package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.DataResponseKt;
import com.onyx.android.sdk.data.account.bean.GoogleAuthParams;
import com.onyx.android.sdk.data.account.bean.TokenBean;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/LoginByGoogleAuthRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoginByGoogleAuthRequest extends BaseAccountRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginByGoogleAuthRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72215execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72215execute() throws Exception {
        CloudAccountService cloudAccountService = (CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class);
        AccountIntentArgs accountIntentArgs = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs);
        String authCode = accountIntentArgs.getAuthCode();
        Intrinsics.checkNotNull(authCode);
        Response executeCall = RetrofitUtils.INSTANCE.executeCall(cloudAccountService.logInByGoogleAuth(new GoogleAuthParams(authCode)));
        DataResponse dataResponse = (DataResponse) executeCall.body();
        if (DataResponseKt.isSuccess(dataResponse)) {
            AccountContext accountContext = getAccountContext();
            TokenBean tokenBean = (TokenBean) ((DataResponse) executeCall.body()).getData();
            accountContext.setToken(tokenBean != null ? tokenBean.getToken() : null);
            return;
        }
        throw OnyxException.INSTANCE.m31893of(ErrorType.REQUEST_FAIL, dataResponse.getMessage(), dataResponse.getResultCode());
    }
}
