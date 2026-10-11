package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.CheckAccountStatusArgs;
import com.onyx.android.sdk.data.account.bean.CheckAccountStatusData;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/CheckAccountStatusRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "accountIdList", "", "", "(Ljava/util/List;)V", "getAccountIdList", "()Ljava/util/List;", "execute", "Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusData;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CheckAccountStatusRequest extends BaseCloudRequest {

    @NotNull
    private final List<String> accountIdList;

    public CheckAccountStatusRequest(@NotNull List<String> accountIdList) {
        Intrinsics.checkNotNullParameter(accountIdList, "accountIdList");
        this.accountIdList = accountIdList;
    }

    @NotNull
    public final List<String> getAccountIdList() {
        return this.accountIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Object execute() {
        return (CheckAccountStatusData) RetrofitExt.INSTANCE.executeAndGetData(((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).checkAccountStatus(new CheckAccountStatusArgs(this.accountIdList)));
    }
}
