package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.WechatAppService;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.LoginWxResponse;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/LoginByWechatAppRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoginByWechatAppRequest extends BaseAccountRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginByWechatAppRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72221execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72221execute() {
        AccountIntentArgs accountIntentArgs = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs);
        String accessToken = accountIntentArgs.getAccessToken();
        Intrinsics.checkNotNull(accessToken);
        AccountIntentArgs accountIntentArgs2 = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs2);
        String unionid = accountIntentArgs2.getUnionid();
        Intrinsics.checkNotNull(unionid);
        AccountIntentArgs accountIntentArgs3 = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs3);
        String openid = accountIntentArgs3.getOpenid();
        Intrinsics.checkNotNull(openid);
        Response<ResultData<LoginWxResponse>> execute = ((WechatAppService) ServiceFactory.INSTANCE.getOnyxApiV1Service(WechatAppService.class)).wechatLogin(accessToken, unionid, openid).execute();
        if (execute.isSuccessful()) {
            AccountContext accountContext = getAccountContext();
            LoginWxResponse data = execute.body().getData();
            Intrinsics.checkNotNull(data);
            accountContext.setToken(data.getToken());
            return;
        }
        throw new CloudNoteException(execute.code(), execute.errorBody().string());
    }
}
