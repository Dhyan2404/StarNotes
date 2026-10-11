package com.onyx.android.sdk.data.cluster.request;

import android.os.Build;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.data.cluster.OnyxIndexService;
import com.onyx.android.sdk.data.cluster.bean.ClusterBean;
import com.onyx.android.sdk.data.cluster.bean.ClusterListBean;
import com.onyx.android.sdk.data.cluster.bean.ClusterResultBean;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002J\b\u0010\u000b\u001a\u00020\tH\u0016J\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "apiHost", "", "(Ljava/lang/String;)V", "clusterBeans", "", "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;", "checkClusterData", "", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "execute", "getResult", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGetClusterListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetClusterListRequest.kt\ncom/onyx/android/sdk/data/cluster/request/GetClusterListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n766#2:50\n857#2,2:51\n*S KotlinDebug\n*F\n+ 1 GetClusterListRequest.kt\ncom/onyx/android/sdk/data/cluster/request/GetClusterListRequest\n*L\n46#1:50\n46#1:51,2\n*E\n"})
/* loaded from: classes7.dex */
public final class GetClusterListRequest extends BaseCloudRequest {

    @NotNull
    private String apiHost;

    @Nullable
    private List<ClusterBean> clusterBeans;

    public GetClusterListRequest(@NotNull String apiHost) {
        Intrinsics.checkNotNullParameter(apiHost, "apiHost");
        this.apiHost = apiHost;
    }

    private final void checkClusterData(List<ClusterBean> result) {
        List<ClusterBean> list;
        if (result == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : result) {
            if (((ClusterBean) obj).isValid()) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        this.clusterBeans = list;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Object execute() {
        m72238execute();
        return Unit.INSTANCE;
    }

    @Nullable
    public final List<ClusterBean> getResult() {
        return this.clusterBeans;
    }

    /* renamed from: execute, reason: collision with other method in class */
    public void m72238execute() throws Exception {
        try {
            OnyxIndexService indexService = ServiceFactory.INSTANCE.getIndexService(this.apiHost);
            LocaleUtils localeUtils = LocaleUtils.INSTANCE;
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            ClusterListBean data = ((ClusterResultBean) getCheckedBody(executeCall(indexService.getSSLServerInfos(localeUtils.getLocaleStr(locale), Build.MODEL)))).getData();
            checkClusterData(data != null ? data.getResults() : null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
