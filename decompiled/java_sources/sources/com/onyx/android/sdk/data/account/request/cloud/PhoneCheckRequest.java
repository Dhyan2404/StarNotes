package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.PhoneFormatCheckArgs;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/PhoneCheckRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "areaCode", "", "phone", "(Ljava/lang/String;Ljava/lang/String;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PhoneCheckRequest extends BaseCloudRequest {

    @NotNull
    private final String areaCode;

    @NotNull
    private final String phone;

    public PhoneCheckRequest(@NotNull String areaCode, @NotNull String phone) {
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        Intrinsics.checkNotNullParameter(phone, "phone");
        this.areaCode = areaCode;
        this.phone = phone;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72228execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72228execute() {
        RetrofitExt.INSTANCE.executeAndGetData(((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).checkPhoneFormat(new PhoneFormatCheckArgs(this.areaCode, this.phone)));
    }
}
