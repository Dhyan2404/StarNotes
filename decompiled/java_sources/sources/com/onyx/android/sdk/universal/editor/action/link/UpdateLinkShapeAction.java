package com.onyx.android.sdk.universal.editor.action.link;

import android.graphics.Matrix;
import android.graphics.Paint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.render.RenderMeasure;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeLinkUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b \u0010!J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u001c¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "l", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "i", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "shapeLinkBean", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "j", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "", C4921e.f26537n, Constants.HASIDCALL_INDEX_SIG, "getRender", Constants.BOOLEAN_VALUE_SIG, "setRender", "(Z)V", "render", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateLinkShapeAction extends RxBaseAppAction<UpdateLinkShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape shape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ShapeLinkBean shapeLinkBean;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean render;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.UpdateLinkShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C9644a<T> implements Consumer {
        public C9644a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateLinkShapeAction.this.virtualPageBoxInfo = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.UpdateLinkShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C9645b<T> implements Consumer {
        public C9645b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateLinkShapeAction.this.m39420m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.UpdateLinkShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C9646c<T, R> implements Function {
        public C9646c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateLinkShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateLinkShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.UpdateLinkShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C9647d<T, R> implements Function {
        public C9647d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateLinkShapeAction updateLinkShapeAction = UpdateLinkShapeAction.this;
            return ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay(updateLinkShapeAction, it2, updateLinkShapeAction.shape);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.link.UpdateLinkShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C9648e<T, R> implements Function {
        public C9648e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateLinkShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateLinkShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateLinkShapeAction(@NotNull EditorBundle editorBundle, @NotNull Shape shape, @NotNull ShapeLinkBean shapeLinkBean, @NotNull TouchPoint touchPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(shapeLinkBean, "shapeLinkBean");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.shape = shape;
        this.shapeLinkBean = shapeLinkBean;
        this.touchPoint = touchPoint;
        this.virtualPageBoxInfo = new BoxInfo();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateLinkShapeAction> create() {
        Observable<BoxInfo> observeOn = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, this.touchPoint).doOnNext(new C9644a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9645b()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable map = RxjavaKt.flatMapIf(observeOn, new Function1<BoxInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.link.UpdateLinkShapeAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(UpdateLinkShapeAction.this.getRender());
            }
        }, m39419l()).map(new C9646c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getRender() {
        return this.render;
    }

    /* renamed from: l */
    public final Observable<UpdateLinkShapeAction> m39419l() {
        Observable<UpdateLinkShapeAction> map = Observable.just(this.virtualPageBoxInfo).flatMap(new C9647d()).map(new C9648e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final void m39420m() {
        RenderMeasure renderMeasure = new RenderContext(new Paint(), new Matrix()).getRenderMeasure();
        renderMeasure.setViewPortRect(this.virtualPageBoxInfo.getOriginRectFWithMargin());
        ShapeLinkUtils shapeLinkUtils = ShapeLinkUtils.INSTANCE;
        int calculateLinkWidth = shapeLinkUtils.calculateLinkWidth(this.shapeLinkBean, renderMeasure);
        int calculateLinkHeight = shapeLinkUtils.calculateLinkHeight(this.shapeLinkBean.isOnlyIconStyle());
        TouchPoint downPoint = this.shape.getDownPoint();
        TouchPoint copy = downPoint.copy();
        copy.applyMatrix(this.shape.getShapeMatrix());
        if (copy.getX() < 0.0f) {
            downPoint.setX(downPoint.getX() - copy.getX());
        }
        if (copy.getY() < 0.0f) {
            downPoint.setY(downPoint.getY() - copy.getY());
        }
        this.shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().clear();
        Shape shape = this.shape;
        shape.onDown(shape.getDownPoint(), this.shape.getDownPoint());
        TouchPoint touchPoint = new TouchPoint(this.shape.getDownPoint());
        touchPoint.setX(touchPoint.getX() + ((float) Math.ceil(calculateLinkWidth * renderMeasure.getScale())));
        touchPoint.setY(touchPoint.getY() + ((float) Math.ceil(calculateLinkHeight * renderMeasure.getScale())));
        this.shape.onUp(touchPoint, touchPoint);
        this.shape.updateShapeRect();
        this.shape.setText(JSONUtils.INSTANCE.toJSONString(this.shapeLinkBean));
        this.shape.setRevisionId("");
    }

    public final void setRender(boolean z) {
        this.render = z;
    }
}
