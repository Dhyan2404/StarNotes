package com.onyx.android.sdk.universal.editor.action;

import android.app.Activity;
import android.content.Context;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0010¢\u0006\u0004\b\u001e\u0010\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\t\u001a\u00020\bJ\b\u0010\u000b\u001a\u0004\u0018\u00010\bJ\b\u0010\r\u001a\u0004\u0018\u00010\fJ\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "updateClusterInfoObservable", "getClusterInfo", "Landroid/content/Context;", "context", "setActivityContext", "getActivityContext", "Landroid/app/Activity;", "getActivity", "clusterInfo", "setClusterInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", C6997f.f39671c, "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "Ljava/lang/ref/WeakReference;", C6998g.f39679a, "Ljava/lang/ref/WeakReference;", "activityContextRef", Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class RxBaseAppAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public ClusterInfo clusterInfo;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public WeakReference<Context> activityContextRef;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.RxBaseAppAction$a */
    /* loaded from: classes8.dex */
    public static final class C8370a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<T> f47838e;

        public C8370a(RxBaseAppAction<T> rxBaseAppAction) {
            this.f47838e = rxBaseAppAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClusterInfo apply(@NotNull ClusterInfo clusterInfo) {
            Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
            return this.f47838e.setClusterInfo(clusterInfo);
        }
    }

    public RxBaseAppAction(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
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

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final RxBaseAction<T> setActivityContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.activityContextRef = new WeakReference<>(context);
        return this;
    }

    public final ClusterInfo setClusterInfo(ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
        return clusterInfo;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    @NotNull
    public final Observable<ClusterInfo> updateClusterInfoObservable() {
        ClusterInfo clusterInfo = this.clusterInfo;
        if (clusterInfo == null) {
            Observable map = ClusterManager.INSTANCE.getCurrentClusterObservable().map(new C8370a(this));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        Intrinsics.checkNotNull(clusterInfo);
        Observable<ClusterInfo> just = Observable.just(clusterInfo);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
