package com.onyx.android.sdk.data.cluster;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.cluster.action.LoadClusterListAction;
import com.onyx.android.sdk.data.cluster.action.SaveClusterListAction;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.cluster.model.ClusterList;
import com.onyx.android.sdk.data.cluster.model.ClusterMetadata;
import com.onyx.android.sdk.data.utils.JSONUtils;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00000\u0011J\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\u0011J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00000\u0011J\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00000\u0011J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00000\u0011J\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\nJ\u0006\u0010\u0019\u001a\u00020\u001aJ\b\u0010\u001b\u001a\u00020\u001cH\u0007J\b\u0010\u001d\u001a\u00020\u001eH\u0007J\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0011J\u0006\u0010 \u001a\u00020\u0017J\b\u0010!\u001a\u00020\u001eH\u0003J\u0019\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001c0#2\u0006\u0010$\u001a\u00020\u001e¢\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020\u001cJ\u0012\u0010'\u001a\u0004\u0018\u00010\u001c2\b\u0010(\u001a\u0004\u0018\u00010\u001cJ\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020\u000fJ\u0006\u0010,\u001a\u00020\u000fJ\u0006\u0010-\u001a\u00020\u000fJ\u0010\u0010.\u001a\u00020*2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u00100\u001a\u00020\u0000H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\f\u0010\u0006R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/ClusterManager;", "", "()V", "cloudScheduler", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getCloudScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "cloudScheduler$delegate", "Lkotlin/Lazy;", "clusterList", "Lcom/onyx/android/sdk/data/cluster/model/ClusterList;", "dataScheduler", "getDataScheduler", "dataScheduler$delegate", "loaded", "", "checkSaveObservable", "Lio/reactivex/rxjava3/core/Observable;", "createCloudObservable", "createDataObservable", "ensureLoadObservable", "forceLoadObservable", "getCloudObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getClusterList", "getClusterMetadata", "Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;", "getCurClusterId", "", "getCurClusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "getCurrentClusterObservable", "getDataObserveOn", "getDefaultClusterInfo", "getIndexServerList", "", "clusterInfo", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)[Ljava/lang/String;", "getMetadataClusterId", "getRegion", "clusterId", "init", "", "isChinaCluster", "isFixedMetadataCluster", "isLoaded", "setClusterList", "setLoaded", "updateGlobalData", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nClusterManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterManager.kt\ncom/onyx/android/sdk/data/cluster/ClusterManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"})
/* loaded from: classes7.dex */
public final class ClusterManager {

    @NotNull
    public static final ClusterManager INSTANCE = new ClusterManager();

    /* renamed from: cloudScheduler$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy cloudScheduler;

    @Nullable
    private static ClusterList clusterList;

    /* renamed from: dataScheduler$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy dataScheduler;
    private static boolean loaded;

    static {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$dataScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        dataScheduler = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$cloudScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.Companion.newMultiThreadManager$default(RxScheduler.INSTANCE, null, 0L, 3, null);
            }
        });
        cloudScheduler = lazy2;
    }

    private ClusterManager() {
    }

    private final RxScheduler getCloudScheduler() {
        return (RxScheduler) cloudScheduler.getValue();
    }

    private final RxScheduler getDataScheduler() {
        return (RxScheduler) dataScheduler.getValue();
    }

    @NonNull
    @WorkerThread
    private final ClusterInfo getDefaultClusterInfo() {
        String curClusterId = getCurClusterId();
        if (StringUtils.contains(curClusterId, Locale.CHINESE.getLanguage())) {
            return ClusterInfo.INSTANCE.createDefaultChineseCluster();
        }
        if (StringUtils.contains(curClusterId, Locale.ENGLISH.getLanguage())) {
            return ClusterInfo.INSTANCE.createDefaultAmericaCluster();
        }
        ClusterConstant clusterConstant = ClusterConstant.INSTANCE;
        return StringUtils.contains(curClusterId, clusterConstant.getVIETNAM_SERVER_ID()) ? ClusterInfo.INSTANCE.createDefaultVietnamCluster() : StringUtils.contains(curClusterId, clusterConstant.getEUR_SERVER_ID()) ? ClusterInfo.INSTANCE.createDefaultEURCluster() : StringUtils.contains(curClusterId, clusterConstant.getTEST_SERVER_ID()) ? ClusterInfo.INSTANCE.createTestCluster(curClusterId) : ClusterUtils.INSTANCE.isCBTestCluster(curClusterId) ? ClusterInfo.INSTANCE.createCBTestCluster() : ClusterInfo.INSTANCE.createDefaultChineseCluster();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClusterManager updateGlobalData() {
        return this;
    }

    @NotNull
    public final Observable<ClusterManager> checkSaveObservable() {
        Observable<ClusterManager> map = ensureLoadObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$checkSaveObservable$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends SaveClusterListAction> apply(@NotNull ClusterManager it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new SaveClusterListAction().build();
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$checkSaveObservable$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ClusterManager apply(@NotNull SaveClusterListAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ClusterManager.this;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<ClusterManager> createCloudObservable() {
        Observable<ClusterManager> observeOn = Observable.just(this).observeOn(getCloudObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<ClusterManager> createDataObservable() {
        Observable<ClusterManager> observeOn = Observable.just(this).observeOn(getDataObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<ClusterManager> ensureLoadObservable() {
        Observable<ClusterManager> map = createDataObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$ensureLoadObservable$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends LoadClusterListAction> apply(@NotNull ClusterManager it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new LoadClusterListAction().build();
            }
        }).observeOn(getDataObserveOn()).map(new Function() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$ensureLoadObservable$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ClusterManager apply(@NotNull LoadClusterListAction it2) {
                ClusterManager updateGlobalData;
                Intrinsics.checkNotNullParameter(it2, "it");
                updateGlobalData = ClusterManager.INSTANCE.updateGlobalData();
                return updateGlobalData;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<ClusterManager> forceLoadObservable() {
        Observable<ClusterManager> flatMap = createDataObservable().map(new Function() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$forceLoadObservable$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ClusterManager apply(@NotNull ClusterManager o) {
                Intrinsics.checkNotNullParameter(o, "o");
                return o.setLoaded(false);
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$forceLoadObservable$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ClusterManager> apply(@NotNull ClusterManager it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ClusterManager.INSTANCE.ensureLoadObservable();
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final Scheduler getCloudObserveOn() {
        return getCloudScheduler().getObserveOn();
    }

    @NotNull
    public final ClusterList getClusterList() {
        if (clusterList == null) {
            clusterList = new ClusterList();
        }
        ClusterList clusterList2 = clusterList;
        Intrinsics.checkNotNull(clusterList2, "null cannot be cast to non-null type com.onyx.android.sdk.data.cluster.model.ClusterList");
        return clusterList2;
    }

    @NotNull
    public final ClusterMetadata getClusterMetadata() {
        ClusterMetadata clusterMetadata = (ClusterMetadata) JSONUtils.INSTANCE.parseObject(ContextKt.getMetaData$default(ResManager.INSTANCE.getAppContext(), ClusterConstant.INSTANCE.getMETADATA_CLUSTER(), null, 2, null), new TypeReference<ClusterMetadata>() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$getClusterMetadata$1
        });
        return clusterMetadata == null ? new ClusterMetadata(null, false, 3, null) : clusterMetadata;
    }

    @WorkerThread
    @NotNull
    public final String getCurClusterId() {
        boolean isLoaded = isLoaded();
        String curClusterId = getClusterList().getCurClusterId();
        if (StringUtils.isBlank(curClusterId)) {
            curClusterId = getClusterMetadata().getDefaultCluster();
            if (isLoaded) {
                ClusterUtils.INSTANCE.m32943i(ClusterManager.class, "init curClusterId: " + curClusterId);
                getClusterList().setCurClusterId(curClusterId);
            }
        }
        Intrinsics.checkNotNull(curClusterId, "null cannot be cast to non-null type kotlin.String");
        return curClusterId;
    }

    @NonNull
    @WorkerThread
    @NotNull
    public final ClusterInfo getCurClusterInfo() {
        String curClusterId = getCurClusterId();
        ClusterUtils clusterUtils = ClusterUtils.INSTANCE;
        if (clusterUtils.isTestCluster(curClusterId)) {
            return ClusterInfo.INSTANCE.createTestCluster(curClusterId);
        }
        if (clusterUtils.isCBTestCluster(curClusterId)) {
            return ClusterInfo.INSTANCE.createCBTestCluster();
        }
        ClusterInfo loadClusterInfo = getClusterList().loadClusterInfo(curClusterId);
        if (loadClusterInfo == null) {
            loadClusterInfo = getDefaultClusterInfo();
        }
        if (loadClusterInfo == null) {
            loadClusterInfo = getClusterList().getFirstClusterInfo();
        }
        Intrinsics.checkNotNull(loadClusterInfo, "null cannot be cast to non-null type com.onyx.android.sdk.data.cluster.model.ClusterInfo");
        return loadClusterInfo;
    }

    @NotNull
    public final Observable<ClusterInfo> getCurrentClusterObservable() {
        Observable<ClusterInfo> observeOn = ensureLoadObservable().map(new Function() { // from class: com.onyx.android.sdk.data.cluster.ClusterManager$getCurrentClusterObservable$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ClusterInfo apply(@NotNull ClusterManager obj) {
                Intrinsics.checkNotNullParameter(obj, "obj");
                return obj.getCurClusterInfo();
            }
        }).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Scheduler getDataObserveOn() {
        return getDataScheduler().getObserveOn();
    }

    @NotNull
    public final String[] getIndexServerList(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        return clusterInfo.isDevCluster() ? ClusterConstant.INSTANCE.getTEST_INDEX_SERVER_HOST_ARRAY() : clusterInfo.isChineseCluster() ? ClusterConstant.INSTANCE.getINTERNAL_INDEX_SERVER_HOST_ARRAY() : ClusterConstant.INSTANCE.getOVERSEA_INDEX_SERVER_HOST_ARRAY();
    }

    @NotNull
    public final String getMetadataClusterId() {
        return getClusterMetadata().getDefaultCluster();
    }

    @Nullable
    public final String getRegion(@Nullable String clusterId) {
        if (clusterId == null) {
            return "";
        }
        ClusterList clusterList2 = clusterList;
        ClusterInfo loadClusterInfo = clusterList2 != null ? clusterList2.loadClusterInfo(clusterId) : null;
        return loadClusterInfo == null ? "" : loadClusterInfo.getRegion();
    }

    public final void init() {
        ensureLoadObservable().subscribe();
    }

    public final boolean isChinaCluster() {
        return getCurClusterInfo().isChineseCluster();
    }

    public final boolean isFixedMetadataCluster() {
        return getClusterMetadata().getFixed();
    }

    public final boolean isLoaded() {
        return loaded;
    }

    public final void setClusterList(@Nullable ClusterList clusterList2) {
        clusterList = clusterList2;
    }

    @NotNull
    public final ClusterManager setLoaded(boolean loaded2) {
        loaded = loaded2;
        return this;
    }
}
