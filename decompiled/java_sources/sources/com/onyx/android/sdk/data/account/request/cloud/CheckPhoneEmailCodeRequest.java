package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.account.bean.TokenCheckResult;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u000b\u001a\u00020\fH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/CheckPhoneEmailCodeRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", LoginAuthConst.ACCOUNT_AUTH, "", "code", "(Ljava/lang/String;Ljava/lang/String;)V", "token", "getToken", "()Ljava/lang/String;", "setToken", "(Ljava/lang/String;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CheckPhoneEmailCodeRequest extends BaseCloudRequest {

    @Nullable
    private final String account;

    @Nullable
    private final String code;

    @Nullable
    private String token;

    public CheckPhoneEmailCodeRequest(@Nullable String str, @Nullable String str2) {
        this.account = str;
        this.code = str2;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72204execute();
        return Unit.INSTANCE;
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    public final void setToken(@Nullable String str) {
        this.token = str;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72204execute() {
        this.token = ((TokenCheckResult) RetrofitExt.INSTANCE.executeAndGetData(((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).checkCode(this.account, this.code))).getToken();
    }
}
