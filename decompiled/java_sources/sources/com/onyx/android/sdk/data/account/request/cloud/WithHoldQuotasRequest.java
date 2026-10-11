package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.AccountQuotaItemData;
import com.onyx.android.sdk.data.account.bean.QuotaSecret;
import com.onyx.android.sdk.data.account.bean.WithHoldQuotasData;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/WithHoldQuotasRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;", "withHoldQuotasData", "Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;", "(Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;)V", "execute", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WithHoldQuotasRequest extends RxBaseRequest<AccountQuotaItemData> {

    @NotNull
    private final WithHoldQuotasData withHoldQuotasData;

    public WithHoldQuotasRequest(@NotNull WithHoldQuotasData withHoldQuotasData) {
        Intrinsics.checkNotNullParameter(withHoldQuotasData, "withHoldQuotasData");
        this.withHoldQuotasData = withHoldQuotasData;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public AccountQuotaItemData execute() {
        RetrofitExt retrofitExt = RetrofitExt.INSTANCE;
        ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
        return (AccountQuotaItemData) retrofitExt.executeAndGetData(((CloudAccountService) serviceFactory.getOnyxApiV2Service(CloudAccountService.class)).withholdQuotas(this.withHoldQuotasData.updateHash(((QuotaSecret) retrofitExt.executeAndGetData(((CloudAccountService) serviceFactory.getOnyxApiV2Service(CloudAccountService.class)).fetchQuotasSecret())).getSecret())));
    }
}
