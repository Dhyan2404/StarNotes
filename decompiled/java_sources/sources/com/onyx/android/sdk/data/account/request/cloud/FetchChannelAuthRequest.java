package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.ChannelAuthData;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/FetchChannelAuthRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "()V", "execute", "", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FetchChannelAuthRequest extends BaseCloudRequest {
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Object execute() {
        return ((ChannelAuthData) RetrofitExt.INSTANCE.executeAndGetData(((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).loadAuthMethod())).getItems();
    }
}
