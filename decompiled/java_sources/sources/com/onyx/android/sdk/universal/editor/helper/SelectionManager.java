package com.onyx.android.sdk.universal.editor.helper;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.GuideLineKt;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.MirrorType;
import com.onyx.android.sdk.geometry.data.RotateType;
import com.onyx.android.sdk.geometry.data.ShapeGuideLineConsumeResult;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.RectCorner;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.handler.StandardGuideLineRender;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.selection.MirrorAction;
import com.onyx.android.sdk.universal.editor.action.selection.QuickCopyAction;
import com.onyx.android.sdk.universal.editor.action.selection.RotateAction;
import com.onyx.android.sdk.universal.editor.action.selection.ScaleAction;
import com.onyx.android.sdk.universal.editor.action.selection.TranslateAction;
import com.onyx.android.sdk.universal.util.SelectionRenderUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 M2\u00020\u0001:\u0001MB\u001f\u0012\u0006\u0010:\u001a\u000208\u0012\u0006\u0010=\u001a\u00020;\u0012\u0006\u0010@\u001a\u00020>¢\u0006\u0004\bK\u0010LJ\u001e\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0016\u0010\r\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000e\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000f\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u0010\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u0013\u001a\u00020\tH\u0002J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tH\u0002J\b\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u001c\u0010\u0019\u001a\u00020\u000b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\tJ\u0006\u0010\u001c\u001a\u00020\u000bJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010!\u001a\u00020 J\"\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\u001c\u0010%\u001a\u00020\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010$\u001a\u00020\tJ\u0006\u0010&\u001a\u00020\u0007J\"\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\u001c\u0010'\u001a\u00020\u000b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010)\u001a\u00020(J\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\"\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ*\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010-\u001a\u00020\tJ\"\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\"\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\"\u00100\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\u001c\u00103\u001a\u00020\u000b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u00102\u001a\u000201J\"\u00104\u001a\b\u0012\u0004\u0012\u00020\u00000\"2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\tJ\u0006\u00105\u001a\u00020\u0007J\u001c\u00107\u001a\u00020 2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u00106\u001a\u00020\tR\u0014\u0010:\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u00109R\u0014\u0010=\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010<R\u0014\u0010@\u001a\u00020>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010?R\u0016\u00107\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010AR\u0016\u0010C\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010BR\u0016\u0010-\u001a\u00020\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010DR\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\f\u0010DR\u0016\u0010G\u001a\u00020E8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010FR\u0014\u0010J\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010I¨\u0006N"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "selectionShapes", "Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;", "corner", "", "e", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "movedPoint", "", C6998g.f39679a, "j", "a", C6997f.f39671c, "d", "", "b", "c", "touchPointInPage", "i", C4921e.f26537n, C6999h.f39688c, "shapes", "onDown", "onUp", "onMove", Constants.RESET, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "getSelectionRect", "getEditRect", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "getTransformAction", "Lio/reactivex/rxjava3/core/Observable;", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_TRANSFORM_STRING, "downPoint", "touchDown", "isAccidentallyTranslate", "onRotate", "Lcom/onyx/android/sdk/geometry/data/RotateType;", "rotateType", "restoreTranslateIfMatch", "restoreTranslate", "onTranslate", "lastPoint", "onScaleX", "onScaleY", "onScaleXY", "Lcom/onyx/android/sdk/geometry/data/MirrorType;", "mirrorType", "onMirror", "onDrag", "isUndefinedTransformAction", "point", "transformAction", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;", "rectCorner", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "Landroid/graphics/PointF;", "Landroid/graphics/PointF;", "downPointInScreen", "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;", "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;", "guideLineRender", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.kt\ncom/onyx/android/sdk/universal/editor/helper/SelectionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,350:1\n1549#2:351\n1620#2,3:352\n1549#2:355\n1620#2,3:356\n*S KotlinDebug\n*F\n+ 1 SelectionManager.kt\ncom/onyx/android/sdk/universal/editor/helper/SelectionManager\n*L\n233#1:351\n233#1:352,3\n325#1:355\n325#1:356,3\n*E\n"})
/* loaded from: classes8.dex */
public final class SelectionManager {

    /* renamed from: j */
    public static final int f52446j = 100;

    /* renamed from: k */
    public static final int f52447k = 150;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public ShapeTransformAction transformAction;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RectCorner rectCorner;

    /* renamed from: f, reason: from kotlin metadata */
    public TouchPoint lastPoint;

    /* renamed from: g, reason: from kotlin metadata */
    public TouchPoint downPoint;

    /* renamed from: h, reason: from kotlin metadata */
    public PointF downPointInScreen;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final StandardGuideLineRender guideLineRender;

    /* renamed from: l */
    public static final boolean f52448l = Debug.INSTANCE.getDebug();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShapeTransformAction.values().length];
            try {
                iArr[ShapeTransformAction.Rotation.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShapeTransformAction.Translate.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShapeTransformAction.ScaleXY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShapeTransformAction.ScaleX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShapeTransformAction.ScaleY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShapeTransformAction.QuickCopy.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.SelectionManager$a */
    /* loaded from: classes8.dex */
    public static final class C10539a<T, R> implements Function {
        public C10539a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectionManager apply(@NotNull QuickCopyAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionManager.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.SelectionManager$b */
    /* loaded from: classes8.dex */
    public static final class C10540b<T, R> implements Function {
        public C10540b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectionManager apply(@NotNull RotateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionManager.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.SelectionManager$c */
    /* loaded from: classes8.dex */
    public static final class C10541c<T, R> implements Function {
        public C10541c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectionManager apply(@NotNull ScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionManager.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.SelectionManager$d */
    /* loaded from: classes8.dex */
    public static final class C10542d<T, R> implements Function {
        public C10542d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectionManager apply(@NotNull ScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionManager.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.SelectionManager$e */
    /* loaded from: classes8.dex */
    public static final class C10543e<T, R> implements Function {
        public C10543e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectionManager apply(@NotNull ScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionManager.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.helper.SelectionManager$f */
    /* loaded from: classes8.dex */
    public static final class C10544f<T, R> implements Function {
        public C10544f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SelectionManager apply(@NotNull TranslateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SelectionManager.this;
        }
    }

    public SelectionManager(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        this.editorBundle = editorBundle;
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.transformAction = ShapeTransformAction.Undefined;
        this.rectCorner = RectCorner.Undefined;
        this.guideLineRender = new StandardGuideLineRender();
    }

    /* renamed from: a */
    public final void m41244a(List<? extends Shape> selectionShapes) {
    }

    /* renamed from: b */
    public final float m41245b(TouchPoint movedPoint) {
        SelectionRect selectionRect = getSelectionRect();
        PointF rotateHandlerPoint = selectionRect.getRotateHandlerPoint();
        PointF matrixPoint = selectionRect.getMatrixPoint(selectionRect.getOriginRect().centerX(), selectionRect.getOriginRect().centerY());
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        return companion.getPointAngle(movedPoint, new TouchPoint(matrixPoint.x, matrixPoint.y)) - companion.getPointAngle(new TouchPoint(rotateHandlerPoint.x, rotateHandlerPoint.y), new TouchPoint(matrixPoint.x, matrixPoint.y));
    }

    /* renamed from: c */
    public final TouchPoint m41246c() {
        PointF centerPoint = getSelectionRect().getCenterPoint();
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        touchPoint.setX(centerPoint.x);
        touchPoint.setY(centerPoint.y);
        return touchPoint;
    }

    /* renamed from: d */
    public final void m41247d(List<? extends Shape> selectionShapes) {
        if (selectionShapes.isEmpty()) {
            return;
        }
        ShapeTypes.INSTANCE.isImageShape(selectionShapes.get(0));
    }

    /* renamed from: e */
    public final boolean m41248e(List<? extends Shape> selectionShapes, RectCorner corner) {
        return false;
    }

    /* renamed from: f */
    public final void m41249f(List<? extends Shape> selectionShapes) {
    }

    /* renamed from: g */
    public final void m41250g(TouchPoint movedPoint) {
        movedPoint.getX();
        TouchPoint touchPoint = this.lastPoint;
        TouchPoint touchPoint2 = null;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
            touchPoint = null;
        }
        touchPoint.getX();
        movedPoint.getY();
        TouchPoint touchPoint3 = this.lastPoint;
        if (touchPoint3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
        } else {
            touchPoint2 = touchPoint3;
        }
        touchPoint2.getY();
        this.lastPoint = new TouchPoint(movedPoint);
    }

    @NotNull
    public final SelectionRect getEditRect() {
        SelectionRect editRect = this.renderContext.getSelectionArgs().getEditRect();
        return editRect == null ? new SelectionRect() : editRect;
    }

    @NotNull
    public final SelectionRect getSelectionRect() {
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        return selectionRect == null ? new SelectionRect() : selectionRect;
    }

    @NotNull
    public final ShapeTransformAction getTransformAction() {
        return this.transformAction;
    }

    /* renamed from: h */
    public final boolean m41251h(TouchPoint movedPoint) {
        return getSelectionRect().isPointInLimitRect(movedPoint.getX(), movedPoint.getY());
    }

    /* renamed from: i */
    public final TouchPoint m41252i(TouchPoint touchPointInPage) {
        int collectionSizeOrDefault;
        SelectionRenderUtils selectionRenderUtils = SelectionRenderUtils.INSTANCE;
        TouchPoint convertFromPageToRender = selectionRenderUtils.convertFromPageToRender(touchPointInPage, this.virtualBoxInfo);
        TouchPoint touchPoint = this.lastPoint;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
            touchPoint = null;
        }
        TouchPoint convertFromPageToRender2 = selectionRenderUtils.convertFromPageToRender(touchPoint, this.virtualBoxInfo);
        List<Guideline> selectionGuideLines = selectionRenderUtils.getSelectionGuideLines(this.renderContext, this.virtualBoxInfo, AnyKt.hashCodeHexString(this));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectionGuideLines, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = selectionGuideLines.iterator();
        while (it2.hasNext()) {
            arrayList.add(GuideLineKt.boundRect((Guideline) it2.next()));
        }
        ShapeGuideLineConsumeResult consumeStickyDistance = this.guideLineRender.consumeStickyDistance(convertFromPageToRender, convertFromPageToRender2, RectFKt.boundingRectF(arrayList), ShapeTransformAction.Rotation);
        if (!consumeStickyDistance.getIsStickyState()) {
            return touchPointInPage;
        }
        TouchPoint copy = convertFromPageToRender2.copy();
        copy.translate(consumeStickyDistance.getDx(), consumeStickyDistance.getDy());
        return SelectionRenderUtils.INSTANCE.convertFromRenderToPage(copy, this.virtualBoxInfo);
    }

    public final boolean isAccidentallyTranslate() {
        if (this.transformAction != ShapeTransformAction.Translate) {
            return false;
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        TouchPoint touchPoint = this.lastPoint;
        TouchPoint touchPoint2 = null;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
            touchPoint = null;
        }
        TouchPoint touchPoint3 = this.downPoint;
        if (touchPoint3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downPoint");
            touchPoint3 = null;
        }
        double absolute = mathUtils.absolute(Double.valueOf(companion.distance(touchPoint, touchPoint3)));
        if (absolute <= 0.0d) {
            return false;
        }
        TouchPoint touchPoint4 = this.lastPoint;
        if (touchPoint4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
            touchPoint4 = null;
        }
        long timestamp = touchPoint4.getTimestamp();
        TouchPoint touchPoint5 = this.downPoint;
        if (touchPoint5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downPoint");
        } else {
            touchPoint2 = touchPoint5;
        }
        return timestamp - touchPoint2.getTimestamp() <= 150 && absolute <= 100.0d;
    }

    public final boolean isUndefinedTransformAction() {
        return this.transformAction.isUndefined();
    }

    /* renamed from: j */
    public final void m41253j(List<? extends Shape> selectionShapes) {
    }

    /* renamed from: k */
    public final void m41254k() {
        SelectionRenderUtils selectionRenderUtils = SelectionRenderUtils.INSTANCE;
        TouchPoint touchPoint = this.lastPoint;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
            touchPoint = null;
        }
        this.guideLineRender.update(selectionRenderUtils.convertFromPageToRender(touchPoint, this.virtualBoxInfo), selectionRenderUtils.getSelectionGuideLines(this.renderContext, this.virtualBoxInfo, AnyKt.hashCodeHexString(this)));
    }

    public final void onDown(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint touchPointInPage) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        this.lastPoint = new TouchPoint(touchPointInPage);
        this.downPoint = new TouchPoint(touchPointInPage);
        Matrix invertMatrix = MatrixKt.invertMatrix(getSelectionRect().getSelectionMatrix());
        TouchPoint touchPoint = this.downPoint;
        TouchPoint touchPoint2 = null;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downPoint");
            touchPoint = null;
        }
        this.downPointInScreen = MatrixKt.mapPoint(invertMatrix, TouchPointKt.toPointF(touchPoint));
        TouchPoint touchPoint3 = this.lastPoint;
        if (touchPoint3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
        } else {
            touchPoint2 = touchPoint3;
        }
        this.transformAction = transformAction(shapes, touchPoint2);
        this.guideLineRender.onPoint(SelectionRenderUtils.INSTANCE.convertFromPageToRender(touchPointInPage, this.virtualBoxInfo), 0);
    }

    @NotNull
    public final Observable<SelectionManager> onDrag(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint movedPoint) {
        int collectionSizeOrDefault;
        List distinct;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(movedPoint, "movedPoint");
        List<? extends Shape> list = shapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(ShapeTypes.INSTANCE.getTargetShape((Shape) it2.next()));
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        Observable map = new QuickCopyAction(this.editorBundle, this.renderContext, this.virtualBoxInfo, distinct).build().map(new C10539a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void onMirror(@NotNull List<? extends Shape> shapes, @NotNull MirrorType mirrorType) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(mirrorType, "mirrorType");
        RxBaseAction.execute$default(new MirrorAction(this.editorBundle, this.renderContext, this.virtualBoxInfo, shapes).setMirrorType(mirrorType), null, null, null, 7, null);
    }

    public final void onMove(@NotNull TouchPoint touchPointInPage) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        this.guideLineRender.onPoint(SelectionRenderUtils.INSTANCE.convertFromPageToRender(touchPointInPage, this.virtualBoxInfo), 2);
    }

    @NotNull
    public final Observable<SelectionManager> onRotate(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint movedPoint) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(movedPoint, "movedPoint");
        SelectionRect selectionRect = getSelectionRect();
        TouchPoint m41252i = m41252i(movedPoint);
        RotateAction movedPoint2 = new RotateAction(this.editorBundle, this.renderContext, this.virtualBoxInfo, shapes).setMovedPoint(m41252i);
        TouchPoint touchPoint = this.lastPoint;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
            touchPoint = null;
        }
        Observable map = movedPoint2.setLastPoint(touchPoint).setPivotPoint(selectionRect.getCenterPoint()).build().map(new C10540b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        this.lastPoint = m41252i;
        m41254k();
        return map;
    }

    @NotNull
    public final Observable<SelectionManager> onScaleX(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint movedPoint) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(movedPoint, "movedPoint");
        ScaleAction scaleAction = new ScaleAction(this.editorBundle, this.renderContext, this.virtualBoxInfo, shapes, this.transformAction);
        PointF pointF = this.downPointInScreen;
        if (pointF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downPointInScreen");
            pointF = null;
        }
        ScaleAction movedPoint2 = scaleAction.setDownPoint(pointF).setMovedPoint(movedPoint);
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        Observable map = movedPoint2.setSy(FLOAT_ONE.floatValue()).build().map(new C10541c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<SelectionManager> onScaleXY(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint movedPoint) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(movedPoint, "movedPoint");
        ScaleAction scaleAction = new ScaleAction(this.editorBundle, this.renderContext, this.virtualBoxInfo, shapes, this.transformAction);
        PointF pointF = this.downPointInScreen;
        if (pointF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downPointInScreen");
            pointF = null;
        }
        Observable map = scaleAction.setDownPoint(pointF).setMovedPoint(movedPoint).build().map(new C10542d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<SelectionManager> onScaleY(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint movedPoint) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(movedPoint, "movedPoint");
        ScaleAction scaleAction = new ScaleAction(this.editorBundle, this.renderContext, this.virtualBoxInfo, shapes, this.transformAction);
        PointF pointF = this.downPointInScreen;
        if (pointF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downPointInScreen");
            pointF = null;
        }
        ScaleAction movedPoint2 = scaleAction.setDownPoint(pointF).setMovedPoint(movedPoint);
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        Observable map = movedPoint2.setSx(FLOAT_ONE.floatValue()).build().map(new C10543e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<SelectionManager> onTranslate(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint movedPoint) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(movedPoint, "movedPoint");
        TouchPoint touchPoint = this.lastPoint;
        if (touchPoint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
            touchPoint = null;
        }
        this.lastPoint = new TouchPoint(movedPoint);
        return onTranslate(shapes, movedPoint, touchPoint);
    }

    public final void onUp(@NotNull TouchPoint touchPointInPage) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        this.guideLineRender.onPoint(SelectionRenderUtils.INSTANCE.convertFromPageToRender(touchPointInPage, this.virtualBoxInfo), 1);
    }

    public final void reset() {
        this.transformAction = ShapeTransformAction.Undefined;
        this.rectCorner = RectCorner.Undefined;
    }

    @NotNull
    public final Observable<SelectionManager> restoreTranslate(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        TouchPoint touchPoint = null;
        if (f52448l) {
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("restoreTranslate distance:");
            TouchPoint.Companion companion = TouchPoint.INSTANCE;
            TouchPoint touchPoint2 = this.lastPoint;
            if (touchPoint2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
                touchPoint2 = null;
            }
            TouchPoint touchPoint3 = this.downPoint;
            if (touchPoint3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("downPoint");
                touchPoint3 = null;
            }
            sb.append(companion.distance(touchPoint2, touchPoint3));
            sb.append(",time:");
            TouchPoint touchPoint4 = this.lastPoint;
            if (touchPoint4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
                touchPoint4 = null;
            }
            long timestamp = touchPoint4.getTimestamp();
            TouchPoint touchPoint5 = this.downPoint;
            if (touchPoint5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("downPoint");
                touchPoint5 = null;
            }
            sb.append(timestamp - touchPoint5.getTimestamp());
            debug.m32052i(SelectionManager.class, sb.toString(), new Object[0]);
        }
        TouchPoint touchPoint6 = this.downPoint;
        if (touchPoint6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downPoint");
            touchPoint6 = null;
        }
        TouchPoint touchPoint7 = this.lastPoint;
        if (touchPoint7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastPoint");
        } else {
            touchPoint = touchPoint7;
        }
        return onTranslate(shapes, touchPoint6, touchPoint);
    }

    @NotNull
    public final Observable<SelectionManager> restoreTranslateIfMatch(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        if (isAccidentallyTranslate()) {
            return restoreTranslate(shapes);
        }
        Observable<SelectionManager> just = Observable.just(this);
        Intrinsics.checkNotNull(just);
        return just;
    }

    public final void touchDown(@NotNull List<? extends Shape> selectionShapes, @NotNull TouchPoint downPoint) {
        Intrinsics.checkNotNullParameter(selectionShapes, "selectionShapes");
        Intrinsics.checkNotNullParameter(downPoint, "downPoint");
        if (!getEditRect().isEmpty()) {
            RectCorner rectCorner = getSelectionRect().touchCornerPointHitTest(downPoint);
            this.rectCorner = rectCorner;
            if (m41248e(selectionShapes, rectCorner)) {
                return;
            }
            this.rectCorner = getEditRect().touchCornerPointHitTest(downPoint);
            return;
        }
        ShapeUtils shapeUtils = ShapeUtils.INSTANCE;
        if (shapeUtils.hasAttachShapes(selectionShapes)) {
            RectCorner rectCorner2 = getSelectionRect().touchCornerPointHitTest(downPoint);
            this.rectCorner = rectCorner2;
            if (rectCorner2 != RectCorner.LeftTop) {
                RectCorner rectCorner3 = RectCorner.LeftBottom;
                return;
            }
            return;
        }
        if (shapeUtils.hasImageShape(selectionShapes) && CollectionKt.getSize(selectionShapes) == 1) {
            RectCorner rectCorner4 = getSelectionRect().touchCornerPointHitTest(downPoint);
            this.rectCorner = rectCorner4;
            if (rectCorner4 == RectCorner.OutSideRightTop) {
                m41247d(selectionShapes);
            } else if (rectCorner4 == RectCorner.OutSideLeftTop) {
                m41249f(selectionShapes);
            }
        }
    }

    @NotNull
    public final Observable<SelectionManager> transform(@NotNull List<? extends Shape> selectionShapes, @NotNull TouchPoint movedPoint) {
        Intrinsics.checkNotNullParameter(selectionShapes, "selectionShapes");
        Intrinsics.checkNotNullParameter(movedPoint, "movedPoint");
        switch (WhenMappings.$EnumSwitchMapping$0[this.transformAction.ordinal()]) {
            case 1:
                return onRotate(selectionShapes, new TouchPoint(movedPoint));
            case 2:
                return onTranslate(selectionShapes, movedPoint);
            case 3:
                return onScaleXY(selectionShapes, movedPoint);
            case 4:
                return onScaleX(selectionShapes, movedPoint);
            case 5:
                return onScaleY(selectionShapes, movedPoint);
            case 6:
                return onDrag(selectionShapes, movedPoint);
            default:
                Observable<SelectionManager> just = Observable.just(this);
                Intrinsics.checkNotNull(just);
                return just;
        }
    }

    @NotNull
    public final ShapeTransformAction transformAction(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(point, "point");
        return getSelectionRect().V3TouchPointHitTest(shapes, point);
    }

    @NotNull
    public final Observable<SelectionManager> onTranslate(@NotNull List<? extends Shape> shapes, @NotNull TouchPoint movedPoint, @NotNull TouchPoint lastPoint) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(movedPoint, "movedPoint");
        Intrinsics.checkNotNullParameter(lastPoint, "lastPoint");
        Observable map = new TranslateAction(this.editorBundle, this.renderContext, this.virtualBoxInfo, shapes).setDistance(movedPoint.getX() - lastPoint.getX(), movedPoint.getY() - lastPoint.getY()).build().map(new C10544f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void onRotate(@NotNull List<? extends Shape> shapes, @NotNull RotateType rotateType) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(rotateType, "rotateType");
        RxBaseAction.execute$default(new RotateAction(this.editorBundle, this.renderContext, this.virtualBoxInfo, shapes).setRotateType(rotateType).setPivotPoint(getSelectionRect().getCenterPoint()), null, null, null, 7, null);
    }
}
