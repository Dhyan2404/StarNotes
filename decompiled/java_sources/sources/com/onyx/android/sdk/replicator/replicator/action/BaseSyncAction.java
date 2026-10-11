package com.onyx.android.sdk.replicator.replicator.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\f\u0010\rJ\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0002R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "updateClusterInfoObservable", "getClusterInfo", "clusterInfo", "setClusterInfo", "e", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseSyncAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ClusterInfo clusterInfo;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.BaseSyncAction$a */
    /* loaded from: classes8.dex */
    public static final class C7830a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BaseSyncAction<T> f46190e;

        public C7830a(BaseSyncAction<T> baseSyncAction) {
            this.f46190e = baseSyncAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClusterInfo apply(@NotNull ClusterInfo clusterInfo) {
            Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
            return this.f46190e.setClusterInfo(clusterInfo);
        }
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    public final ClusterInfo setClusterInfo(ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
        return clusterInfo;
    }

    @NotNull
    public final Observable<ClusterInfo> updateClusterInfoObservable() {
        ClusterInfo clusterInfo = this.clusterInfo;
        if (clusterInfo == null) {
            Observable map = ClusterManager.INSTANCE.getCurrentClusterObservable().map(new C7830a(this));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Intrinsics.checkNotNull(clusterInfo);
        Observable<ClusterInfo> just = Observable.just(clusterInfo);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
