package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.MicrosoftVerifyArgs;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/MicrosoftLogoffRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "verifyArgs", "Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;", "(Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;)V", "execute", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MicrosoftLogoffRequest extends BaseCloudRequest {

    @NotNull
    private final MicrosoftVerifyArgs verifyArgs;

    public MicrosoftLogoffRequest(@NotNull MicrosoftVerifyArgs verifyArgs) {
        Intrinsics.checkNotNullParameter(verifyArgs, "verifyArgs");
        this.verifyArgs = verifyArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Object execute() {
        return RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).destroyMicrosoft(this.verifyArgs), false, 1, null);
    }
}
