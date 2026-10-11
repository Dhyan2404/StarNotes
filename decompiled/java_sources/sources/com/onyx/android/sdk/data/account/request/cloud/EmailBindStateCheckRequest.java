package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.EmailBindStateCheckArgs;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/EmailBindStateCheckRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "email", "", "(Ljava/lang/String;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class EmailBindStateCheckRequest extends BaseCloudRequest {

    @NotNull
    private final String email;

    public EmailBindStateCheckRequest(@NotNull String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        this.email = email;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72205execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72205execute() {
        RetrofitExt.INSTANCE.executeAndGetData(((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).checkEmailBindState(new EmailBindStateCheckArgs(this.email)));
    }
}
