package com.onyx.android.sdk.cloudstorage.common.base;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012J\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012J\b\u0010\u0016\u001a\u00020\u0013H&J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "T", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "getClusterInfo", "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "setClusterInfo", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V", "multiObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getMultiObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "observeOn", "getObserveOn", "createMultiObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "createObservable", "createObservableWithUpdateClusterInfo", "getProvider", "updateClusterInfoObservable", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseCloudStorageAction<T> extends RxBaseAction<T> {

    @Nullable
    private ClusterInfo clusterInfo;

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction$a */
    /* loaded from: classes7.dex */
    public static final class C7173a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BaseCloudStorageAction<T> f41073e;

        public C7173a(BaseCloudStorageAction<T> baseCloudStorageAction) {
            this.f41073e = baseCloudStorageAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull BaseCloudStorageAction<T> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41073e.updateClusterInfoObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction$b */
    /* loaded from: classes7.dex */
    public static final class C7174b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BaseCloudStorageAction<T> f41074e;

        public C7174b(BaseCloudStorageAction<T> baseCloudStorageAction) {
            this.f41074e = baseCloudStorageAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseCloudStorageProvider apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f41074e.getOnyxCloudProvider();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction$c */
    /* loaded from: classes7.dex */
    public static final class C7175c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BaseCloudStorageAction<T> f41075e;

        public C7175c(BaseCloudStorageAction<T> baseCloudStorageAction) {
            this.f41075e = baseCloudStorageAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClusterInfo apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f41075e.setClusterInfo(it2);
            return it2;
        }
    }

    @NotNull
    public final Observable<BaseCloudStorageProvider> createMultiObservable() {
        return getOnyxCloudProvider().createMultiObservable();
    }

    @NotNull
    public final Observable<BaseCloudStorageProvider> createObservable() {
        return getOnyxCloudProvider().createObservable();
    }

    @NotNull
    public final Observable<BaseCloudStorageProvider> createObservableWithUpdateClusterInfo() {
        Observable map = Observable.just(this).flatMap(new C7173a(this)).observeOn(getObserveOn()).map(new C7174b(this));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @NotNull
    public final Scheduler getMultiObserveOn() {
        return getOnyxCloudProvider().getMultiObserveOn();
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return getOnyxCloudProvider().getObserveOn();
    }

    @NotNull
    /* renamed from: getProvider */
    public abstract BaseCloudStorageProvider getOnyxCloudProvider();

    public final void setClusterInfo(@Nullable ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
    }

    @NotNull
    public final Observable<ClusterInfo> updateClusterInfoObservable() {
        Observable map = ClusterManager.INSTANCE.getCurrentClusterObservable().map(new C7175c(this));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
