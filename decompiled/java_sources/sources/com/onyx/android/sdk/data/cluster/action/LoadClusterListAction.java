package com.onyx.android.sdk.data.cluster.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.ClusterUtils;
import com.onyx.android.sdk.data.cluster.model.ClusterList;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVCluster;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\b\u0010\u0005\u001a\u00020\u0000H\u0002¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/action/LoadClusterListAction;", "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "load", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoadClusterListAction extends BaseClusterAction<LoadClusterListAction> {
    /* JADX INFO: Access modifiers changed from: private */
    public final LoadClusterListAction load() {
        ClusterManager clusterManager = ClusterManager.INSTANCE;
        if (clusterManager.isLoaded()) {
            ClusterUtils.INSTANCE.m32941d(LoadClusterListAction.class, "already loaded");
            return this;
        }
        ClusterList clusterList = (ClusterList) JSONUtils.INSTANCE.parseObject(MMKVCluster.INSTANCE.getClusterList(MMKVUtils.INSTANCE), ClusterList.class);
        if (clusterList == null) {
            clusterList = new ClusterList();
        }
        if (clusterList.isNotBlank()) {
            clusterManager.setClusterList(clusterList);
        }
        clusterManager.setLoaded(clusterList.isNotBlank());
        ClusterUtils.INSTANCE.m32941d(LoadClusterListAction.class, "load custer id: " + clusterList.getCurClusterId());
        return this;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadClusterListAction> create() {
        Observable map = createObservable().map(new Function() { // from class: com.onyx.android.sdk.data.cluster.action.LoadClusterListAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final LoadClusterListAction apply(@NotNull ClusterManager it2) {
                LoadClusterListAction load;
                Intrinsics.checkNotNullParameter(it2, "it");
                load = LoadClusterListAction.this.load();
                return load;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
