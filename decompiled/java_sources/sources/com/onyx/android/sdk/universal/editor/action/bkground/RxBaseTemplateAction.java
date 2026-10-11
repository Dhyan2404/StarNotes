package com.onyx.android.sdk.universal.editor.action.bkground;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.universal.editor.data.TemplateManagerBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\b\u001a\u00020\u0005J\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\f\u001a\u00020\u000bJ\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0004J\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0004J\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0004R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "ensureClusterInfo", "updateClusterInfoObservable", "clusterInfo", "setClusterInfo", "getClusterInfo", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;", "createObservable", "Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;", "createTemplateProviderObservable", "Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;", "createCoverProviderObservable", "e", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class RxBaseTemplateAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ClusterInfo clusterInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction$a */
    /* loaded from: classes8.dex */
    public static final class C8557a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RxBaseTemplateAction<T> f48132e;

        public C8557a(RxBaseTemplateAction<T> rxBaseTemplateAction) {
            this.f48132e = rxBaseTemplateAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48132e.setClusterInfo(it2);
        }
    }

    @NotNull
    public final Observable<CoverProvider> createCoverProviderObservable() {
        Observable<CoverProvider> observeOn = new EnsureCoverProviderAction().build().observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<TemplateManagerBundle> createObservable() {
        return TemplateManagerBundle.INSTANCE.createObservable();
    }

    @NotNull
    public final Observable<TemplateProvider> createTemplateProviderObservable() {
        Observable<TemplateProvider> observeOn = new EnsureTemplateProviderAction().build().observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Observable<ClusterInfo> ensureClusterInfo() {
        ClusterInfo clusterInfo = this.clusterInfo;
        if (clusterInfo == null) {
            return updateClusterInfoObservable();
        }
        Observable<ClusterInfo> just = Observable.just(clusterInfo);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return TemplateManagerBundle.INSTANCE.getObserveOn();
    }

    @NotNull
    public final RxBaseTemplateAction<T> setClusterInfo(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        this.clusterInfo = clusterInfo;
        return this;
    }

    @NotNull
    public final Observable<ClusterInfo> updateClusterInfoObservable() {
        Observable<ClusterInfo> doOnNext = ClusterManager.INSTANCE.getCurrentClusterObservable().doOnNext(new C8557a(this));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
