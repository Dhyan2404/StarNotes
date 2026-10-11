package com.onyx.android.sdk.data.cluster.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;", "T", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", "createObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/cluster/ClusterManager;", "getObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseClusterAction<T> extends RxBaseAction<T> {
    @NotNull
    public final Observable<ClusterManager> createObservable() {
        return ClusterManager.INSTANCE.createDataObservable();
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return ClusterManager.INSTANCE.getDataObserveOn();
    }
}
