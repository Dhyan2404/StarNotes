package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.DataResponseKt;
import com.onyx.android.sdk.data.account.bean.TokenBean;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.error.ErrorType;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\t0\bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/LoginByPhoneOrEmailRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "execute", "", "generateParams", "", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoginByPhoneOrEmailRequest extends BaseAccountRequest {

    @NotNull
    private final AccountContext accountContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginByPhoneOrEmailRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
        this.accountContext = accountContext;
    }

    private final Map<String, String> generateParams() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AccountIntentArgs accountIntentArgs = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs);
        String account = accountIntentArgs.getAccount();
        AccountIntentArgs accountIntentArgs2 = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs2);
        String verificationCode = accountIntentArgs2.getVerificationCode();
        AccountIntentArgs accountIntentArgs3 = getAccountContext().getAccountIntentArgs();
        Intrinsics.checkNotNull(accountIntentArgs3);
        String areaCode = accountIntentArgs3.getAreaCode();
        if (this.accountContext.getLoginType() == 2) {
            linkedHashMap.put("email", account);
        } else {
            linkedHashMap.put("phone", account);
            linkedHashMap.put("areaCode", areaCode);
        }
        linkedHashMap.put("code", verificationCode);
        return linkedHashMap;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72220execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72220execute() throws Exception {
        Response<DataResponse<TokenBean>> execute = ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).logInByPhoneOrEmail(generateParams()).execute();
        DataResponse<TokenBean> body = execute.body();
        DataResponse<TokenBean> body2 = execute.body();
        if (DataResponseKt.isSuccess(body2)) {
            AccountContext accountContext = getAccountContext();
            TokenBean data = body.getData();
            accountContext.setToken(data != null ? data.getToken() : null);
            return;
        }
        throw OnyxException.INSTANCE.m31893of(ErrorType.REQUEST_FAIL, body2.getMessage(), body2.getResultCode());
    }
}
