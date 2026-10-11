package com.onyx.galaxy.note.common.base;

import android.app.Activity;
import android.content.Context;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b \u0010!J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\b\u001a\u00020\u0005J\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u001d\u0010\r\u001a\u00028\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0004¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0012\u001a\u00020\u0011J\b\u0010\u0014\u001a\u0004\u0018\u00010\u0011J\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0004J\u0006\u0010\u0019\u001a\u00020\u000fR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "ensureClusterInfo", "updateClusterInfoObservable", "clusterInfo", "setClusterInfo", "getClusterInfo", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", AbstractLogger.REQUEST, "executeRequest", "(Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Ljava/lang/Object;", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "Landroid/content/Context;", "context", "setActivityContext", "getActivityContext", "Landroid/app/Activity;", "getActivity", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "ensureNoteProvider", "getCloudScheduler", "e", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "Ljava/lang/ref/WeakReference;", C6997f.f39671c, "Ljava/lang/ref/WeakReference;", "activityContextRef", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class RxBaseNoteAppAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ClusterInfo clusterInfo;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public WeakReference<Context> activityContextRef;

    /* renamed from: com.onyx.galaxy.note.common.base.RxBaseNoteAppAction$a */
    /* loaded from: classes9.dex */
    public static final class C11616a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RxBaseNoteAppAction<T> f55995e;

        public C11616a(RxBaseNoteAppAction<T> rxBaseNoteAppAction) {
            this.f55995e = rxBaseNoteAppAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f55995e.setClusterInfo(it2);
        }
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

    @NotNull
    public final Observable<NoteProvider> ensureNoteProvider() {
        return new EnsureNoteProviderAction().build();
    }

    @NotNull
    public final T executeRequest(@NotNull RxBaseRequest<T> request) throws Exception {
        Intrinsics.checkNotNullParameter(request, "request");
        return request.execute();
    }

    @Nullable
    public final Activity getActivity() {
        Context activityContext = getActivityContext();
        if (activityContext == null) {
            return null;
        }
        return ContextKt.toActivitySafety(activityContext);
    }

    @Nullable
    public final Context getActivityContext() {
        WeakReference<Context> weakReference = this.activityContextRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
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
    public Scheduler getObserveOn() {
        return RxScheduler.INSTANCE.sharedSingleThreadManager().getObserveOn();
    }

    @NotNull
    public final RxBaseAction<T> setActivityContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.activityContextRef = new WeakReference<>(context);
        return this;
    }

    @NotNull
    public final RxBaseNoteAppAction<T> setClusterInfo(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        this.clusterInfo = clusterInfo;
        return this;
    }

    @NotNull
    public final Observable<ClusterInfo> updateClusterInfoObservable() {
        Observable<ClusterInfo> doOnNext = ClusterManager.INSTANCE.getCurrentClusterObservable().doOnNext(new C11616a(this));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
