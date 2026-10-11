package com.onyx.galaxy.note.settings.request;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.cloud.p026v2.StatisticsService;
import com.onyx.android.sdk.data.common.data.CloudStorageStatusBean;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/request/GetCloudStorageStatusRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "()V", "execute", "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class GetCloudStorageStatusRequest extends BaseCloudRequest {
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Object execute() throws Exception {
        Response executeCall = RetrofitUtils.INSTANCE.executeCall(((StatisticsService) ServiceFactory.INSTANCE.getOnyxApiV1Service(StatisticsService.class)).getCloudStorageStatus(BaseCloudRequest.INSTANCE.getBearerToken(AccountDataBundle.INSTANCE.getAccountToken())));
        if (executeCall.isSuccessful()) {
            Object body = executeCall.body();
            Intrinsics.checkNotNullExpressionValue(body, "body(...)");
            return (CloudStorageStatusBean) body;
        }
        throw new Exception("submit feedback failed");
    }
}
