package com.onyx.android.sdk.universal.editor.action.selection;

import android.graphics.PointF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.RotateType;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.selection.RotateAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\f\u0010$\u001a\b\u0012\u0004\u0012\u00020!0 ¢\u0006\u0004\b-\u0010.J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\bJ\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\rH\u0014J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00000\rH\u0002J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u0010\u0017\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020!0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010(R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010*¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/RotateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Landroid/graphics/PointF;", "pivotPoint", "setPivotPoint", "Lcom/onyx/android/sdk/geometry/data/RotateType;", "rotateType", "setRotateType", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "movedPoint", "setMovedPoint", "lastPoint", "setLastPoint", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "selectionRect", "", "angle", "", "q", "p", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Ljava/util/List;", "shapes", C4921e.f26537n, "Landroid/graphics/PointF;", "l", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "m", "Lcom/onyx/android/sdk/geometry/data/RotateType;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RotateAction extends RxBaseAppAction<RotateAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: k, reason: from kotlin metadata */
    public PointF pivotPoint;

    /* renamed from: l, reason: from kotlin metadata */
    public TouchPoint movedPoint;

    /* renamed from: m, reason: from kotlin metadata */
    public TouchPoint lastPoint;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public RotateType rotateType;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.RotateAction$a */
    /* loaded from: classes8.dex */
    public static final class C9941a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SelectionRect f50645f;

        /* renamed from: g */
        public final /* synthetic */ float f50646g;

        public C9941a(SelectionRect selectionRect, float f) {
            this.f50645f = selectionRect;
            this.f50646g = f;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull RotateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(RotateAction.this.m39974q(this.f50645f, this.f50646g));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.RotateAction$b */
    /* loaded from: classes8.dex */
    public static final class C9942b<T, R> implements Function {
        public C9942b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends RotateAction> m39976a(boolean z) {
            return RotateAction.this.m39973p();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m39976a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.RotateAction$c */
    /* loaded from: classes8.dex */
    public static final class C9943c<T, R> implements Function {
        public C9943c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RotateAction apply(@NotNull DrawSelectionRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RotateAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RotateAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapes = shapes;
        this.rotateType = RotateType.FREEDOM;
    }

    /* renamed from: m */
    public static final void m39970m(RotateAction this$0, float f, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        List<Shape> list = this$0.shapes;
        PointF pointF = this$0.pivotPoint;
        if (pointF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pivotPoint");
            pointF = null;
        }
        shapeMatrixUtils.rotate(list, f, pointF);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RotateAction> create() {
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect == null) {
            Observable<RotateAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final float m39972o = m39972o(selectionRect);
        Observable observeOn = Observable.just(this).observeOn(getMainUIScheduler()).map(new C9941a(selectionRect, m39972o)).observeOn(EditorBundleKt.noteScheduler(getEditorBundle()));
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable flatMap = RxjavaKt.doOnNextIfTrue(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.zrl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RotateAction.m39970m(RotateAction.this, m39972o, ((Boolean) obj).booleanValue());
            }
        }).observeOn(getMainUIScheduler()).flatMap(new C9942b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final float m39971n(TouchPoint movedPoint, SelectionRect selectionRect) {
        PointF matrixPoint = selectionRect.getMatrixPoint(selectionRect.getOriginRect().centerX(), selectionRect.getOriginRect().centerY());
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        float pointAngle = companion.getPointAngle(movedPoint, new TouchPoint(matrixPoint.x, matrixPoint.y));
        TouchPoint touchPoint = this.lastPoint;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
            touchPoint = null;
        }
        return pointAngle - companion.getPointAngle(touchPoint, new TouchPoint(matrixPoint.x, matrixPoint.y));
    }

    /* renamed from: o */
    public final float m39972o(SelectionRect selectionRect) {
        RotateType rotateType = this.rotateType;
        if (rotateType != RotateType.FREEDOM) {
            return rotateType.getAngle();
        }
        TouchPoint touchPoint = this.movedPoint;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movedPoint");
            touchPoint = null;
        }
        return m39971n(touchPoint, selectionRect);
    }

    /* renamed from: p */
    public final Observable<RotateAction> m39973p() {
        Observable map = new DrawSelectionRectAction(getEditorBundle(), this.renderContext, this.virtualBoxInfo, CollectionKt.ensureList(this.shapes), false, 16, null).configureSelectionRender(false, ShapeTransformAction.Rotation).build().map(new C9943c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final boolean m39974q(SelectionRect selectionRect, float angle) {
        boolean onRotate = selectionRect.onRotate(angle);
        this.renderContext.setSelectionRect(selectionRect);
        return onRotate;
    }

    @NotNull
    public final RotateAction setLastPoint(@NotNull TouchPoint lastPoint) {
        Intrinsics.checkNotNullParameter(lastPoint, "lastPoint");
        this.lastPoint = lastPoint;
        return this;
    }

    @NotNull
    public final RotateAction setMovedPoint(@NotNull TouchPoint movedPoint) {
        Intrinsics.checkNotNullParameter(movedPoint, "movedPoint");
        this.movedPoint = movedPoint;
        return this;
    }

    @NotNull
    public final RotateAction setPivotPoint(@NotNull PointF pivotPoint) {
        Intrinsics.checkNotNullParameter(pivotPoint, "pivotPoint");
        this.pivotPoint = pivotPoint;
        return this;
    }

    @NotNull
    public final RotateAction setRotateType(@NotNull RotateType rotateType) {
        Intrinsics.checkNotNullParameter(rotateType, "rotateType");
        this.rotateType = rotateType;
        return this;
    }
}
