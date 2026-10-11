package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.account.bean.CloudOnyxAccount;
import com.onyx.android.sdk.data.account.bean.ResponseData;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/LoginByOnyxQrCodeRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoginByOnyxQrCodeRequest extends BaseAccountRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginByOnyxQrCodeRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72218execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72218execute() throws Exception {
        Map<String, Object> data;
        AccountIntentArgs accountIntentArgs = getAccountContext().getAccountIntentArgs();
        if (StringUtils.isBlank(accountIntentArgs != null ? accountIntentArgs.getQrcodeId() : null)) {
            return;
        }
        if (StringUtils.isBlank(accountIntentArgs != null ? accountIntentArgs.getClientType() : null)) {
            return;
        }
        try {
            Response<ResponseData<Map<String, Object>>> execute = ServiceFactory.INSTANCE.getAccountService(ClusterInfo.INSTANCE.getContentApiHost(getClusterInfo())).checkQrCodeLogin(accountIntentArgs != null ? accountIntentArgs.getQrcodeId() : null, accountIntentArgs != null ? accountIntentArgs.getClientType() : null).execute();
            Intrinsics.checkNotNull(execute);
            if (execute.isSuccessful() && (data = execute.body().getData()) != null && data.containsKey(Constant.USER_INFO)) {
                JSONUtils jSONUtils = JSONUtils.INSTANCE;
                CloudOnyxAccount cloudOnyxAccount = (CloudOnyxAccount) jSONUtils.parseObject(jSONUtils.toJson(data.get(Constant.USER_INFO)), CloudOnyxAccount.class);
                getAccountContext().setToken(cloudOnyxAccount != null ? cloudOnyxAccount.getToken() : null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
