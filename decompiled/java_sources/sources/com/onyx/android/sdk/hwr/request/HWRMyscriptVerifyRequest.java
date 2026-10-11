package com.onyx.android.sdk.hwr.request;

import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRMyscriptActivateBody;
import com.onyx.android.sdk.hwr.service.http.OnyxHWRResourceService;
import com.onyx.android.sdk.hwr.utils.HWRMmkvUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\r\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000bJ\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/request/HWRMyscriptVerifyRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "()V", "model", "", "getModel", "()Ljava/lang/String;", "setModel", "(Ljava/lang/String;)V", "execute", "", "()Ljava/lang/Boolean;", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRMyscriptVerifyRequest extends BaseCloudRequest {
    public String model;

    @NotNull
    public final String getModel() {
        String str = this.model;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("model");
        return null;
    }

    /* renamed from: setModel, reason: collision with other method in class */
    public final void m72274setModel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.model = str;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Object execute() {
        HWRMmkvUtils hWRMmkvUtils = HWRMmkvUtils.INSTANCE;
        if (hWRMmkvUtils.isMyscriptVerified()) {
            return Boolean.TRUE;
        }
        HWRMyscriptActivateBody hWRMyscriptActivateBody = new HWRMyscriptActivateBody();
        hWRMyscriptActivateBody.setModel(getModel());
        hWRMyscriptActivateBody.setFingerprint(getFingerprint());
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        Response executeCall = executeCall(((OnyxHWRResourceService) ServiceFactory.INSTANCE.getOnyxSpecifyService(OnyxHWRResourceService.class, clusterInfo.getInternationalCloudDataUrl())).verifyMyscriptPermission(hWRMyscriptActivateBody));
        if (executeCall != null && executeCall.isSuccessful() && ((Boolean) executeCall.body()).booleanValue()) {
            hWRMmkvUtils.setMyscriptVerified();
            return Boolean.TRUE;
        }
        throw HWRException.INSTANCE.m33355of("Myscript Not Allowed");
    }

    @NotNull
    public final HWRMyscriptVerifyRequest setModel(@NotNull String model) {
        Intrinsics.checkNotNullParameter(model, "model");
        m72274setModel(model);
        return this;
    }
}
