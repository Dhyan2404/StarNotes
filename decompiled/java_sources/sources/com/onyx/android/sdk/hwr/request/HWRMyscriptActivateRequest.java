package com.onyx.android.sdk.hwr.request;

import android.os.Build;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.bean.Device;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRMyscriptActivateBody;
import com.onyx.android.sdk.hwr.service.http.OnyxHWRResourceService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002J\r\u0010\u0003\u001a\u00020\u0004H\u0016¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRMyscriptActivateRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "()V", "execute", "", "()Ljava/lang/Boolean;", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRMyscriptActivateRequest extends BaseCloudRequest {
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Object execute() {
        String androidId = Device.INSTANCE.getAndroidId(ResManager.INSTANCE.getAppContext());
        HWRMyscriptActivateBody hWRMyscriptActivateBody = new HWRMyscriptActivateBody();
        hWRMyscriptActivateBody.setAndroidId(androidId);
        hWRMyscriptActivateBody.setFingerprint(getFingerprint());
        hWRMyscriptActivateBody.setModel(Build.MODEL);
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        Response executeCall = executeCall(((OnyxHWRResourceService) ServiceFactory.INSTANCE.getOnyxSpecifyService(OnyxHWRResourceService.class, clusterInfo.getInternationalCloudDataUrl())).commitMyscriptActivateRecord(hWRMyscriptActivateBody));
        if (executeCall != null && executeCall.isSuccessful()) {
            return Boolean.TRUE;
        }
        throw HWRException.INSTANCE.m33355of("Commit Myscript Activate Record Fail");
    }
}
