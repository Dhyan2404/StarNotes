package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.AccountPermissionData;
import com.onyx.android.sdk.data.account.bean.AccountPermissionItem;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/FetchAccountPermissionRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;", "()V", "execute", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FetchAccountPermissionRequest extends RxBaseRequest<List<? extends AccountPermissionItem>> {
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public List<? extends AccountPermissionItem> execute() {
        return ((AccountPermissionData) RetrofitExt.INSTANCE.executeAndGetData(((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).loadAccountPermissions())).getItems();
    }
}
