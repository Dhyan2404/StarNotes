package com.onyx.android.sdk.data.account.request.cloud;

import com.google.android.gms.common.Scopes;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountProfile;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.JSONUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/BindAccountRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "type", "", Scopes.PROFILE, "Lcom/onyx/android/sdk/data/account/bean/AccountProfile;", "(Ljava/lang/String;Lcom/onyx/android/sdk/data/account/bean/AccountProfile;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BindAccountRequest extends BaseCloudRequest {

    @NotNull
    private final AccountProfile profile;

    @NotNull
    private final String type;

    public BindAccountRequest(@NotNull String type, @NotNull AccountProfile profile) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(profile, "profile");
        this.type = type;
        this.profile = profile;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72201execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72201execute() {
        Response<AccountProfile> execute = ServiceFactory.INSTANCE.getAccountService(ClusterInfo.INSTANCE.getContentApiHost(getClusterInfo())).bindAccount(BaseCloudRequest.INSTANCE.getBearerToken(AccountDataBundle.INSTANCE.getTokenFromDB()), this.type, JSONUtils.INSTANCE.toJson(this.profile)).execute();
        if (execute.isSuccessful()) {
            Debug.INSTANCE.m32035d(BindAccountRequest.class, this.type + " : bind success", new Object[0]);
            return;
        }
        throw new Exception(execute.errorBody().string());
    }
}
