package com.onyx.android.sdk.universal.editor.action;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.events.app.ScaleResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.ScaleRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\r\u001a\u00020\n\u0012\b\b\u0002\u0010\u000f\u001a\u00020\n\u0012\b\b\u0002\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/ScaleAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/graphics/Matrix;", "matrix", "", GoogleApiAvailabilityLight.f29016b, "l", "m", "", C6999h.f39688c, "F", "scale", "i", "centerXOffset", "j", "centerYOffset", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;FFF)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScaleAction extends RxBaseAppAction<ScaleAction> {

    /* renamed from: h, reason: from kotlin metadata */
    public final float scale;

    /* renamed from: i, reason: from kotlin metadata */
    public final float centerXOffset;

    /* renamed from: j, reason: from kotlin metadata */
    public final float centerYOffset;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ScaleAction$a */
    /* loaded from: classes8.dex */
    public static final class C8408a<T, R> implements Function {
        public C8408a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(EditorBundleKt.stopScroll(ScaleAction.this.getEditorBundle()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ScaleAction$b */
    /* loaded from: classes8.dex */
    public static final class C8409b<T, R> implements Function {
        public C8409b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m37132a(boolean z) {
            return DocCommonActionsKt.postVirtualDocViewInfo(ScaleAction.this.getEditorBundle());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m37132a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ScaleAction$c */
    /* loaded from: classes8.dex */
    public static final class C8410c<T, R> implements Function {
        public C8410c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Matrix apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleAction.this.m37128l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ScaleAction$d */
    /* loaded from: classes8.dex */
    public static final class C8411d<T> implements Consumer {
        public C8411d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Matrix it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScaleAction.this.m37130n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ScaleAction$e */
    /* loaded from: classes8.dex */
    public static final class C8412e<T, R> implements Function {
        public C8412e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Matrix it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.display(ScaleAction.this);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ScaleAction$f */
    /* loaded from: classes8.dex */
    public static final class C8413f<T> implements Consumer {
        public C8413f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScaleAction.this.m37129m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ScaleAction$g */
    /* loaded from: classes8.dex */
    public static final class C8414g<T, R> implements Function {
        public C8414g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScaleAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleAction.this;
        }
    }

    public /* synthetic */ ScaleAction(EditorBundle editorBundle, float f, float f2, float f3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, (i & 2) != 0 ? 1.0f : f, (i & 4) != 0 ? 0.0f : f2, (i & 8) != 0 ? 0.0f : f3);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ScaleAction> create() {
        Observable<ScaleAction> map = Observable.just(this).map(new C8408a()).flatMap(new C8409b()).map(new C8410c()).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C8411d()).observeOn(AndroidSchedulers.mainThread()).flatMap(new C8412e()).doOnNext(new C8413f()).map(new C8414g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Matrix m37128l() {
        float actualScale = this.scale / EditorBundleKt.actualScale(getEditorBundle());
        RectF viewportRect = EditorBundleKt.viewportRect(getEditorBundle());
        Matrix matrix = new Matrix();
        matrix.setScale(actualScale, actualScale, viewportRect.centerX() + this.centerXOffset, viewportRect.centerY() + this.centerYOffset);
        return matrix;
    }

    /* renamed from: m */
    public final void m37129m() {
        EditorBundleKt.postEvent(getEditorBundle(), new ScaleResultEvent(EditorBundleKt.currentDisplayScale(getEditorBundle())));
    }

    /* renamed from: n */
    public final void m37130n(Matrix matrix) {
        WorkBundle workBundle = getEditorBundle().getWorkBundle();
        ScaleRequest scaleRequest = new ScaleRequest(workBundle, WorkBundleKt.obtainBoxManager(workBundle).loadReboundMatrix(MatrixKt.copy(matrix)));
        scaleRequest.execute2();
        WorkBundleKt.postEvent(workBundle, new VirtualDocViewInfoEvent(scaleRequest.getVirtualDocViewInfo(), false, 2, null));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScaleAction(@NotNull EditorBundle editorBundle, float f, float f2, float f3) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.scale = f;
        this.centerXOffset = f2;
        this.centerYOffset = f3;
    }
}
