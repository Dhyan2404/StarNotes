package com.onyx.android.sdk.data.cluster.action;

import com.blankj.utilcode.util.LogUtils;
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
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\b\u0010\u0005\u001a\u00020\u0000H\u0002¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/action/SaveClusterListAction;", "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "save", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSaveClusterListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveClusterListAction.kt\ncom/onyx/android/sdk/data/cluster/action/SaveClusterListAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"})
/* loaded from: classes7.dex */
public final class SaveClusterListAction extends BaseClusterAction<SaveClusterListAction> {
    /* JADX INFO: Access modifiers changed from: private */
    public final SaveClusterListAction save() {
        ClusterManager clusterManager = ClusterManager.INSTANCE;
        ClusterList clusterList = clusterManager.getClusterList();
        if (StringUtils.isBlank(clusterList.getCurClusterId())) {
            clusterList.setCurClusterId(clusterManager.getCurClusterId());
            ClusterUtils.INSTANCE.m32943i(SaveClusterListAction.class, "update clusterId when is empty");
        }
        String json = JSONUtils.INSTANCE.toJson(clusterList);
        if (json != null) {
            MMKVCluster.INSTANCE.saveClusterList(MMKVUtils.INSTANCE, json);
        }
        ClusterUtils.INSTANCE.m32943i(SaveClusterListAction.class, "save clusterId: " + clusterList.getCurClusterId());
        LogUtils.file(SaveClusterListAction.class.getSimpleName(), "save clusterId:" + clusterList.getCurClusterId());
        return this;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveClusterListAction> create() {
        Observable map = createObservable().map(new Function() { // from class: com.onyx.android.sdk.data.cluster.action.SaveClusterListAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final SaveClusterListAction apply(@NotNull ClusterManager it2) {
                SaveClusterListAction save;
                Intrinsics.checkNotNullParameter(it2, "it");
                save = SaveClusterListAction.this.save();
                return save;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
