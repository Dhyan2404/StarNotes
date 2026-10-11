package com.onyx.android.sdk.universal.editor.action.selection;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.PointFKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00000\u0001:\u00019B5\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u0010\"\u001a\u00020\u001f\u0012\u0006\u0010&\u001a\u00020#\u0012\f\u0010+\u001a\b\u0012\u0004\u0012\u00020(0'\u0012\u0006\u0010/\u001a\u00020,¢\u0006\u0004\b7\u00108J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\fH\u0014J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00000\fH\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u001e\u001a\u00020\u0014H\u0002R\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020(0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u00100R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u00100R\u0016\u00102\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u00101R\u0016\u00104\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u00103¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Landroid/graphics/PointF;", "point", "setDownPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "setMovedPoint", "", "sx", "setSx", "sy", "setSy", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "selectionRect", "", "q", "r", "p", "", "t", "v", "u", "Landroid/graphics/RectF;", UniversalShapeTypeConst.RECTANGLE, "s", "m", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "l", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Ljava/util/List;", "shapes", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "transformAction", "F", "Landroid/graphics/PointF;", "downPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "movedPoint", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScaleAction extends RxBaseAppAction<ScaleAction> {
    public static final float DEFAULT_SCALE = 0.0f;

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
    @NotNull
    public ShapeTransformAction transformAction;

    /* renamed from: l, reason: from kotlin metadata */
    public float sx;

    /* renamed from: m, reason: from kotlin metadata */
    public float sy;

    /* renamed from: n, reason: from kotlin metadata */
    public PointF downPoint;

    /* renamed from: o, reason: from kotlin metadata */
    public TouchPoint movedPoint;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.ScaleAction$a */
    /* loaded from: classes8.dex */
    public static final class C9944a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SelectionRect f50658f;

        public C9944a(SelectionRect selectionRect) {
            this.f50658f = selectionRect;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(ScaleAction.this.m39983q(this.f50658f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.ScaleAction$b */
    /* loaded from: classes8.dex */
    public static final class C9945b<T, R> implements Function {
        public C9945b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ScaleAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleAction.this.m39982p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.ScaleAction$c */
    /* loaded from: classes8.dex */
    public static final class C9946c<T, R> implements Function {
        public C9946c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScaleAction apply(@NotNull DrawSelectionRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.ScaleAction$d */
    /* loaded from: classes8.dex */
    public static final class C9947d<T> implements Consumer {
        public C9947d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SelectionRect it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScaleAction.this.m39985s(it2, it2.getOriginRect());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.ScaleAction$e */
    /* loaded from: classes8.dex */
    public static final class C9948e<T, R> implements Function {
        public C9948e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScaleAction apply(@NotNull SelectionRect it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ScaleAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapes, @NotNull ShapeTransformAction transformAction) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(transformAction, "transformAction");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapes = shapes;
        this.transformAction = transformAction;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ScaleAction> create() {
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect == null) {
            Observable<ScaleAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C9944a(selectionRect));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable flatMap = RxjavaKt.flatMapIfTrue(map, m39984r(selectionRect.copy())).flatMap(new C9945b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final void m39978l() {
        if (Math.abs(this.sx) >= 1.2f || Math.abs(this.sy) >= 1.2f) {
            LogFileUtils.INSTANCE.m32102e(ScaleAction.class, "Scale may be abnormal, sx:" + this.sx + ",sy:" + this.sy + ' ' + this.transformAction);
        }
    }

    /* renamed from: m */
    public final float m39979m(SelectionRect selectionRect) {
        TouchPoint m39981o = m39981o(selectionRect);
        RectF originRect = selectionRect.getOriginRect();
        PointF pointF = this.downPoint;
        if (pointF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downPoint");
            pointF = null;
        }
        return pointF.x > originRect.centerX() ? Math.abs((m39981o.getX() - originRect.left) / originRect.width()) : -Math.abs((m39981o.getX() - originRect.right) / originRect.width());
    }

    /* renamed from: n */
    public final float m39980n(SelectionRect selectionRect) {
        TouchPoint m39981o = m39981o(selectionRect);
        RectF originRect = selectionRect.getOriginRect();
        PointF pointF = this.downPoint;
        if (pointF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downPoint");
            pointF = null;
        }
        return pointF.y > originRect.centerY() ? Math.abs((m39981o.getY() - originRect.top) / originRect.height()) : -Math.abs((m39981o.getY() - originRect.bottom) / originRect.height());
    }

    /* renamed from: o */
    public final TouchPoint m39981o(SelectionRect selectionRect) {
        Matrix matrix = new Matrix();
        selectionRect.getSelectionMatrix().invert(matrix);
        float[] fArr = new float[2];
        TouchPoint touchPoint = this.movedPoint;
        TouchPoint touchPoint2 = null;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movedPoint");
            touchPoint = null;
        }
        fArr[0] = touchPoint.getX();
        TouchPoint touchPoint3 = this.movedPoint;
        if (touchPoint3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movedPoint");
            touchPoint3 = null;
        }
        fArr[1] = touchPoint3.getY();
        matrix.mapPoints(fArr);
        TouchPoint touchPoint4 = this.movedPoint;
        if (touchPoint4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("movedPoint");
        } else {
            touchPoint2 = touchPoint4;
        }
        TouchPoint touchPoint5 = new TouchPoint(touchPoint2);
        touchPoint5.setX(fArr[0]);
        touchPoint5.setY(fArr[1]);
        return touchPoint5;
    }

    /* renamed from: p */
    public final Observable<ScaleAction> m39982p() {
        Observable map = new DrawSelectionRectAction(getEditorBundle(), this.renderContext, this.virtualBoxInfo, CollectionKt.ensureList(this.shapes), false, 16, null).build().map(new C9946c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final boolean m39983q(SelectionRect selectionRect) throws Exception {
        if (Float.compare(this.sx, 0.0f) == 0) {
            float f = this.sy;
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            if (Float.compare(f, FLOAT_ONE.floatValue()) == 0) {
                m39986t(selectionRect);
                m39978l();
                boolean onScale = selectionRect.onScale(this.sx, this.sy);
                this.renderContext.setSelectionRect(selectionRect);
                return onScale;
            }
        }
        if (Float.compare(this.sy, 0.0f) == 0) {
            float f2 = this.sx;
            Float FLOAT_ONE2 = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE2, "FLOAT_ONE");
            if (Float.compare(f2, FLOAT_ONE2.floatValue()) == 0) {
                m39988v(selectionRect);
                m39978l();
                boolean onScale2 = selectionRect.onScale(this.sx, this.sy);
                this.renderContext.setSelectionRect(selectionRect);
                return onScale2;
            }
        }
        m39987u(selectionRect);
        m39978l();
        boolean onScale22 = selectionRect.onScale(this.sx, this.sy);
        this.renderContext.setSelectionRect(selectionRect);
        return onScale22;
    }

    /* renamed from: r */
    public final Observable<ScaleAction> m39984r(SelectionRect selectionRect) {
        Observable<ScaleAction> map = Observable.just(selectionRect).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9947d()).observeOn(getMainUIScheduler()).map(new C9948e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final void m39985s(SelectionRect selectionRect, RectF rectangle) {
        for (Shape shape : this.shapes) {
            if (selectionRect.getIsSingleSelection()) {
                ShapeMatrixUtils.INSTANCE.scale(shape, rectangle, this.sx, this.sy);
            } else {
                shape.onScale(this.sx, this.sy, rectangle);
            }
        }
    }

    @NotNull
    public final ScaleAction setDownPoint(@NotNull PointF point) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.downPoint = PointFKt.copy(point);
        return this;
    }

    @NotNull
    public final ScaleAction setMovedPoint(@NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.movedPoint = new TouchPoint(point);
        return this;
    }

    @NotNull
    public final ScaleAction setSx(float sx) {
        this.sx = sx;
        return this;
    }

    @NotNull
    public final ScaleAction setSy(float sy) {
        this.sy = sy;
        return this;
    }

    /* renamed from: t */
    public final void m39986t(SelectionRect selectionRect) {
        this.sx = m39979m(selectionRect);
    }

    /* renamed from: u */
    public final void m39987u(SelectionRect selectionRect) {
        m39986t(selectionRect);
        m39988v(selectionRect);
        float min = Math.min(Math.abs(this.sx), Math.abs(this.sy));
        this.sx = Math.signum(this.sx) * min;
        this.sy = min * Math.signum(this.sy);
    }

    /* renamed from: v */
    public final void m39988v(SelectionRect selectionRect) {
        this.sy = m39980n(selectionRect);
    }
}
