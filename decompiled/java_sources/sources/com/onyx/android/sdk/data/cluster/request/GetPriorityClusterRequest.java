package com.onyx.android.sdk.data.cluster.request;

import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.cluster.bean.ClusterBean;
import com.onyx.android.sdk.data.cluster.bean.PriorityClusterParma;
import com.onyx.android.sdk.data.cluster.bean.PriorityClusterResultBean;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0002J\b\u0010\f\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u0004\u0018\u00010\bJ\u0014\u0010\u000e\u001a\u00020\n2\n\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "user", "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;", "apiHost", "", "(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;Ljava/lang/String;)V", "clusterBean", "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;", "checkClusterData", "", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "execute", "getResult", "logErrorMsg", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "logMsg", NotificationCompat.CATEGORY_MESSAGE, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GetPriorityClusterRequest extends BaseCloudRequest {

    @NotNull
    private final String apiHost;

    @Nullable
    private ClusterBean clusterBean;

    @NotNull
    private final PriorityClusterParma.ClusterUserInfo user;

    public GetPriorityClusterRequest(@NotNull PriorityClusterParma.ClusterUserInfo user, @NotNull String apiHost) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(apiHost, "apiHost");
        this.user = user;
        this.apiHost = apiHost;
    }

    private final void checkClusterData(ClusterBean result) {
        if (result != null && result.isValid()) {
            this.clusterBean = result;
        }
    }

    private final void logErrorMsg(Exception e) {
        String stackTraceToString;
        StringBuilder sb = new StringBuilder();
        sb.append("getPriorityServerInfo failed,apiHost:");
        sb.append(this.apiHost);
        sb.append(";androidId:");
        sb.append(SecurityUtils.INSTANCE.getAndroidId());
        sb.append(";ClusterUserInfo:");
        sb.append(JSONUtils.INSTANCE.toJson(this.user));
        sb.append(";e:");
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
        sb.append(stackTraceToString);
        logMsg(sb.toString());
    }

    private final void logMsg(String msg) {
        LogUtils.file(GetPriorityClusterRequest.class.getSimpleName(), msg);
        Debug.INSTANCE.m32054i(GetPriorityClusterRequest.class.getSimpleName(), msg, new Object[0]);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72239execute();
        return Unit.INSTANCE;
    }

    @Nullable
    /* renamed from: getResult, reason: from getter */
    public final ClusterBean getClusterBean() {
        return this.clusterBean;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72239execute() throws Exception {
        try {
            checkClusterData(((PriorityClusterResultBean) getCheckedBody(executeCall(ServiceFactory.INSTANCE.getIndexService(this.apiHost).getPriorityServerInfo(new PriorityClusterParma(this.user))))).getData().getServerInfo());
        } catch (Exception e) {
            logErrorMsg(e);
        }
    }
}
