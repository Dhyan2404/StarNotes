package com.onyx.android.sdk.data.common.request;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.TokenBean;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "()V", "execute", "", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TokenRefreshRequest extends BaseCloudRequest {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final HttpUrl tokenRefreshUrl = ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV1Service(CloudAccountService.class)).refreshToken(AccountDataBundle.INSTANCE.getAccountToken()).request().url();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/request/TokenRefreshRequest$Companion;", "", "()V", "tokenRefreshUrl", "Lokhttp3/HttpUrl;", "getTokenRefreshUrl", "()Lokhttp3/HttpUrl;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HttpUrl getTokenRefreshUrl() {
            return TokenRefreshRequest.tokenRefreshUrl;
        }

        private Companion() {
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Object execute() {
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        if (!accountDataBundle.isAlreadyLogin()) {
            return "";
        }
        try {
            String token = ((TokenBean) RetrofitExt.INSTANCE.executeAndGetData(((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV1Service(CloudAccountService.class)).refreshToken(accountDataBundle.getAccountToken()))).getToken();
            Intrinsics.checkNotNull(token);
            OnyxAccountModel onyxAccount = accountDataBundle.getOnyxAccount();
            Intrinsics.checkNotNull(onyxAccount);
            onyxAccount.setToken(token);
            CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccount(onyxAccount);
            return token;
        } catch (Throwable unused) {
            return "";
        }
    }
}
