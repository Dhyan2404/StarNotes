package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.TokenBean;
import com.onyx.android.sdk.data.account.bean.WechatVerifyArgs;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/LoginByWechatRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "execute", "", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoginByWechatRequest extends BaseAccountRequest {

    @NotNull
    private static final String ACTION_LOGIN = "login";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginByWechatRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72222execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72222execute() throws Exception {
        TokenBean data;
        AccountIntentArgs accountIntentArgs = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs);
        String verificationCode = accountIntentArgs.getVerificationCode();
        if (StringUtils.isBlank(verificationCode)) {
            return;
        }
        CloudAccountService cloudAccountService = (CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class);
        WechatVerifyArgs wechatVerifyArgs = new WechatVerifyArgs();
        wechatVerifyArgs.setCode(verificationCode);
        wechatVerifyArgs.setAction("login");
        Response<DataResponse<DataResponse<TokenBean>>> execute = cloudAccountService.wechatQrLogin(wechatVerifyArgs).execute();
        if (execute.isSuccessful()) {
            AccountContext accountContext = getAccountContext();
            DataResponse<TokenBean> data2 = execute.body().getData();
            accountContext.setToken((data2 == null || (data = data2.getData()) == null) ? null : data.getToken());
            if (getAccountContext().getToken() == null) {
                throw new RuntimeException("Wechat Login Fail");
            }
            return;
        }
        throw new CloudNoteException(execute.code(), execute.errorBody().string());
    }
}
