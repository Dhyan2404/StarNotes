package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\u0006\u0010\u000b\u001a\u00020\fJ\b\u0010\r\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u000e\u001a\u00020\fJ\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "T", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "createCloudObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/account/AccountDataBundle;", "createDataObservable", "getCloudScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "getClusterInfo", "getDataScheduler", "setClusterInfo", "updateClusterInfoObservable", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseRxAccountAction<T> extends RxBaseAction<T> {

    @Nullable
    private ClusterInfo clusterInfo;

    /* JADX INFO: Access modifiers changed from: private */
    public final ClusterInfo setClusterInfo(ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
        return clusterInfo;
    }

    @NotNull
    public Observable<AccountDataBundle> createCloudObservable() {
        Observable<AccountDataBundle> observeOn = Observable.just(AccountDataBundle.INSTANCE).observeOn(getCloudScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public Observable<AccountDataBundle> createDataObservable() {
        Observable<AccountDataBundle> observeOn = Observable.just(AccountDataBundle.INSTANCE).observeOn(getDataScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Scheduler getCloudScheduler() {
        return ClusterManager.INSTANCE.getCloudObserveOn();
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @NotNull
    public final Scheduler getDataScheduler() {
        return AccountDataBundle.INSTANCE.getDataObserveOn();
    }

    @NotNull
    public final Observable<ClusterInfo> updateClusterInfoObservable() {
        Observable map = ClusterManager.INSTANCE.getCurrentClusterObservable().map(new Function(this) { // from class: com.onyx.android.sdk.data.account.action.BaseRxAccountAction$updateClusterInfoObservable$1
            final /* synthetic */ BaseRxAccountAction<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ClusterInfo apply(@NotNull ClusterInfo clusterInfo) {
                ClusterInfo clusterInfo2;
                Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
                clusterInfo2 = this.this$0.setClusterInfo(clusterInfo);
                return clusterInfo2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
