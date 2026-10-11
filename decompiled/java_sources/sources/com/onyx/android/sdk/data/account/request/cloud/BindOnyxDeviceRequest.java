package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.account.bean.CloudOnyxAccount;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.Device;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/BindOnyxDeviceRequest;", "Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "execute", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BindOnyxDeviceRequest extends BaseAccountRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BindOnyxDeviceRequest(@NotNull AccountContext accountContext) {
        super(accountContext);
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72202execute();
        return Unit.INSTANCE;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72202execute() {
        Device updateCurrentDeviceInfo = Device.INSTANCE.updateCurrentDeviceInfo(ResManager.INSTANCE.getAppContext());
        if (updateCurrentDeviceInfo == null) {
            return;
        }
        Response<DataResponse<CloudOnyxAccount>> execute = ServiceFactory.INSTANCE.getAccountService(ClusterInfo.INSTANCE.getContentApiHost(getClusterInfo())).bindDevice(updateCurrentDeviceInfo, BaseCloudRequest.INSTANCE.getBearerToken(getAccountContext().getToken())).execute();
        Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        if (execute.isSuccessful()) {
            return;
        }
        if (execute.code() == 401) {
            Debug.INSTANCE.m32044e(BindOnyxDeviceRequest.class, "error token: " + getAccountContext().getToken(), new Object[0]);
        }
        throw new CloudNoteException(execute.code(), execute.errorBody().string());
    }
}
