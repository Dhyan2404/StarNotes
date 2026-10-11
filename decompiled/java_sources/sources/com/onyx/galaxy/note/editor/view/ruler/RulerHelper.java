package com.onyx.galaxy.note.editor.view.ruler;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.extension.PhysiceExtKt;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0017\u0018\u0000 =2\u00020\u0001:\u0001=B\u0007¢\u0006\u0004\b;\u0010<J\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\nJ \u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\"\u0010\u000f\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J\"\u0010\u0010\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J*\u0010\u0014\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J*\u0010\u0015\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J(\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J \u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J\u0018\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0010\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002J\u001e\u0010(\u001a\b\u0012\u0004\u0012\u00020\"0'2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u001bH\u0002R\u0016\u0010*\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010,\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010+R\u0016\u0010.\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010-R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010/R\u0016\u00101\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u00100R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u00102R\u0016\u00103\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010+R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u00104R\u0018\u00106\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u00105R\u0016\u00107\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010-R\u0016\u00108\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010)R\u001c\u0010:\u001a\b\u0012\u0004\u0012\u00020\"0'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u00109¨\u0006>"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/graphics/RectF;", "rulerRectF", "Landroid/graphics/Matrix;", "rulerMatrix", "", "handleDownAction", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "hitTestPoint", "e", C6998g.f39679a, C6999h.f39688c, "Landroid/graphics/PointF;", "downPoint", "point", "j", C4921e.f26537n, "l", "", C6997f.f39671c, "c", "rectF", "", "b", "firstPoint", "secondPoint", "i", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "drawingArgs", "", "d", "", gon.f71290o0, "steps", "", "a", "I", "downDirection", Constants.HASIDCALL_INDEX_SIG, "enableAdsorb", "F", "lineWidth", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Landroid/graphics/RectF;", "rulerRect", "Landroid/graphics/Matrix;", "isRectangle", "Landroid/graphics/PointF;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "lastValidTouchPoint", "adsorbThreshold", "adsorbCount", "Ljava/util/List;", "exponentialDecayValues", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRulerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RulerHelper.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerHelper\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n332#2:253\n332#2:257\n1747#3,3:254\n*S KotlinDebug\n*F\n+ 1 RulerHelper.kt\ncom/onyx/galaxy/note/editor/view/ruler/RulerHelper\n*L\n114#1:253\n213#1:257\n204#1:254,3\n*E\n"})
/* loaded from: classes9.dex */
public final class RulerHelper {
    public static final double ADSORB_DECAY_FACTOR = 4.0d;
    public static final int BOTTOM = 2;
    public static final int RADIX_CM = 10;
    public static final int RADIX_IN = 16;
    public static final int TOP = 1;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean enableAdsorb;

    /* renamed from: c, reason: from kotlin metadata */
    public float lineWidth;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isRectangle;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public PointF downPoint;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public TouchPoint lastValidTouchPoint;

    /* renamed from: j, reason: from kotlin metadata */
    public float adsorbThreshold;

    /* renamed from: k, reason: from kotlin metadata */
    public int adsorbCount;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public List<Float> exponentialDecayValues;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: m */
    @NotNull
    public static final IntRange f60690m = new IntRange(5, 10);

    /* renamed from: a, reason: from kotlin metadata */
    public int downDirection = 1;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RectF rulerRect = new RectF();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Matrix rulerMatrix = new Matrix();

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper$Companion;", "", "()V", "ADSORB_DECAY_COUNT_RANGE", "Lkotlin/ranges/IntRange;", "getADSORB_DECAY_COUNT_RANGE", "()Lkotlin/ranges/IntRange;", "ADSORB_DECAY_FACTOR", "", "BOTTOM", "", "RADIX_CM", "RADIX_IN", "TOP", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final IntRange getADSORB_DECAY_COUNT_RANGE() {
            return RulerHelper.f60690m;
        }

        public Companion() {
        }
    }

    public RulerHelper() {
        List<Float> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.exponentialDecayValues = emptyList;
    }

    /* renamed from: a */
    public final List<Float> m49804a(double start, int steps) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < steps; i++) {
            arrayList.add(Float.valueOf((float) ((Number) MathUtils.INSTANCE.atLeast(Double.valueOf(Math.exp((i / (steps - 1)) * (-4.0d)) * start), Double.valueOf(0.0d))).doubleValue()));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final int m49805b(PointF point, RectF rectF) {
        return point.y <= rectF.centerY() ? 1 : 2;
    }

    /* renamed from: c */
    public final boolean m49806c(RectF rulerRectF, Matrix rulerMatrix, PointF point) {
        PointF mapPoint = MatrixKt.mapPoint(MatrixKt.invertMatrix(rulerMatrix), point.x, point.y);
        return rulerRectF.contains(mapPoint.x, mapPoint.y) || m49805b(mapPoint, rulerRectF) != this.downDirection;
    }

    /* renamed from: d */
    public final float m49807d(NoteDrawingArgs drawingArgs) {
        float screenStrokeWidth;
        float currentMinScale;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle == null) {
            return drawingArgs.getStrokeWidth();
        }
        if (DocOptionsActionsKt.isEnabledAdaptiveStrokeWidth(editorBundle)) {
            currentMinScale = editorBundle.getDisplayBundle().getVirtualDocViewInfo().getViewport().getActualScale();
            screenStrokeWidth = PhysiceExtKt.toScreenStrokeWidth(drawingArgs.getStrokeWidth());
        } else {
            screenStrokeWidth = PhysiceExtKt.toScreenStrokeWidth(drawingArgs.getStrokeWidth());
            currentMinScale = EditorBundleKt.currentMinScale(editorBundle);
        }
        return screenStrokeWidth * currentMinScale;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x005e, code lost:
    
        if ((r1 != null && r1.getSubShapeType() == 1) != false) goto L16;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m49808e(android.view.MotionEvent r5, android.graphics.RectF r6, android.graphics.Matrix r7) {
        /*
            r4 = this;
            android.graphics.Matrix r0 = com.onyx.android.sdk.base.extension.MatrixKt.invertMatrix(r7)
            float r1 = r5.getX()
            float r2 = r5.getY()
            android.graphics.PointF r0 = com.onyx.android.sdk.base.extension.MatrixKt.mapPoint(r0, r1, r2)
            android.graphics.PointF r1 = new android.graphics.PointF
            float r2 = r5.getX()
            float r3 = r5.getY()
            r1.<init>(r2, r3)
            r4.downPoint = r1
            r1 = 0
            r4.lastValidTouchPoint = r1
            int r0 = r4.m49805b(r0, r6)
            r4.downDirection = r0
            r0 = 0
            r4.enableAdsorb = r0
            com.onyx.android.sdk.universal.editor.EditorBundle r1 = r4.editorBundle
            if (r1 != 0) goto L30
            return
        L30:
            com.onyx.android.sdk.note.common.data.NoteDrawingArgs r1 = com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.uiDrawingArgs(r1)
            float r2 = r4.m49807d(r1)
            r3 = 2
            float r3 = (float) r3
            float r3 = r2 / r3
            r4.lineWidth = r3
            r3 = 1109393408(0x42200000, float:40.0)
            float r2 = java.lang.Math.max(r2, r3)
            r4.adsorbThreshold = r2
            int r2 = r1.getCurrentShapeType()
            r3 = 39
            if (r2 != r3) goto L61
            com.onyx.android.sdk.replicator.note.data.pen.PenArgs r1 = r1.getPenArgs()
            r2 = 1
            if (r1 == 0) goto L5d
            int r1 = r1.getSubShapeType()
            if (r1 != r2) goto L5d
            r1 = r2
            goto L5e
        L5d:
            r1 = r0
        L5e:
            if (r1 == 0) goto L61
            goto L62
        L61:
            r2 = r0
        L62:
            r4.isRectangle = r2
            r4.adsorbCount = r0
            com.onyx.android.sdk.base.data.TouchPoint r5 = r4.m49810g(r6, r7, r5)
            if (r5 != 0) goto L82
            float r5 = r4.adsorbThreshold
            float r6 = r4.lineWidth
            float r7 = r5 - r6
            float r5 = r5 / r6
            int r5 = (int) r5
            kotlin.ranges.IntRange r6 = com.onyx.galaxy.note.editor.view.ruler.RulerHelper.f60690m
            int r5 = kotlin.ranges.RangesKt.coerceIn(r5, r6)
            double r6 = (double) r7
            java.util.List r5 = r4.m49804a(r6, r5)
            r4.exponentialDecayValues = r5
            goto L88
        L82:
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()
            r4.exponentialDecayValues = r5
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.ruler.RulerHelper.m49808e(android.view.MotionEvent, android.graphics.RectF, android.graphics.Matrix):void");
    }

    /* renamed from: f */
    public final boolean m49809f(RectF rulerRectF, Matrix rulerMatrix, PointF downPoint, PointF point) {
        List listOf;
        RectF m49812i = m49812i(downPoint, point);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new PointF[]{new PointF(m49812i.left, m49812i.top), new PointF(m49812i.right, m49812i.top), new PointF(m49812i.left, m49812i.bottom), new PointF(m49812i.right, m49812i.bottom)});
        List list = listOf;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            if (m49806c(rulerRectF, rulerMatrix, (PointF) it2.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public final TouchPoint m49810g(RectF rulerRectF, Matrix rulerMatrix, MotionEvent event) {
        Object orNull;
        PointF mapPoint = MatrixKt.mapPoint(MatrixKt.invertMatrix(rulerMatrix), event.getX(), event.getY());
        int m49805b = m49805b(mapPoint, rulerRectF);
        float f = this.downDirection == 1 ? this.rulerRect.top : this.rulerRect.bottom;
        if (!this.enableAdsorb && !this.rulerRect.contains(mapPoint.x, mapPoint.y) && m49805b == this.downDirection && Math.abs(mapPoint.y - f) > this.adsorbThreshold) {
            return null;
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.exponentialDecayValues, this.adsorbCount);
        Float f2 = (Float) orNull;
        float floatValue = f2 != null ? f2.floatValue() : 0.0f;
        if (this.downDirection == 1) {
            mapPoint.y = ((f - 1) - this.lineWidth) - floatValue;
        } else {
            mapPoint.y = f + 1 + this.lineWidth + floatValue;
        }
        this.adsorbCount++;
        this.enableAdsorb = true;
        PointF mapPoint2 = MatrixKt.mapPoint(rulerMatrix, mapPoint);
        return new TouchPoint(mapPoint2.x, mapPoint2.y);
    }

    /* renamed from: h */
    public final TouchPoint m49811h(RectF rulerRectF, Matrix rulerMatrix, MotionEvent event) {
        PointF pointF = new PointF(event.getX(), event.getY());
        PointF pointF2 = this.downPoint;
        if (pointF2 == null) {
            return null;
        }
        if (!m49809f(RectFKt.copy(rulerRectF), rulerMatrix, pointF2, pointF)) {
            return m49815l(pointF);
        }
        TouchPoint m49813j = m49813j(rulerRectF, rulerMatrix, pointF2, pointF);
        return m49813j == null ? m49814k(rulerRectF, rulerMatrix, pointF2, pointF) : m49813j;
    }

    public final void handleDownAction(@NotNull EditorBundle editorBundle, @NotNull RectF rulerRectF, @NotNull Matrix rulerMatrix) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(rulerRectF, "rulerRectF");
        Intrinsics.checkNotNullParameter(rulerMatrix, "rulerMatrix");
        this.editorBundle = editorBundle;
        this.rulerMatrix = rulerMatrix;
        this.rulerRect = rulerRectF;
    }

    @Nullable
    public final TouchPoint hitTestPoint(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.rulerRect.isEmpty()) {
            return null;
        }
        if (MotionEventKt.isDownAction(event)) {
            m49808e(event, this.rulerRect, this.rulerMatrix);
        }
        return this.isRectangle ? m49811h(this.rulerRect, this.rulerMatrix, event) : m49810g(this.rulerRect, this.rulerMatrix, event);
    }

    /* renamed from: i */
    public final RectF m49812i(PointF firstPoint, PointF secondPoint) {
        return new RectF(Math.min(firstPoint.x, secondPoint.x), Math.min(firstPoint.y, secondPoint.y), Math.max(firstPoint.x, secondPoint.x), Math.max(firstPoint.y, secondPoint.y));
    }

    /* renamed from: j */
    public final TouchPoint m49813j(RectF rulerRectF, Matrix rulerMatrix, PointF downPoint, PointF point) {
        PointF mapPoint = MatrixKt.mapPoint(MatrixKt.invertMatrix(rulerMatrix), point.x, point.y);
        if (this.downDirection == 1) {
            mapPoint.y = rulerRectF.top - 1;
        } else {
            mapPoint.y = rulerRectF.bottom + 1;
        }
        PointF mapPoint2 = MatrixKt.mapPoint(rulerMatrix, mapPoint);
        if (m49809f(RectFKt.copy(rulerRectF), rulerMatrix, downPoint, mapPoint2)) {
            return null;
        }
        return m49815l(mapPoint2);
    }

    /* renamed from: k */
    public final TouchPoint m49814k(RectF rulerRectF, Matrix rulerMatrix, PointF downPoint, PointF point) {
        TouchPoint touchPoint = this.lastValidTouchPoint;
        if (touchPoint == null) {
            return null;
        }
        PointF pointF = new PointF(point.x, touchPoint.getY());
        if (!m49809f(rulerRectF, rulerMatrix, downPoint, pointF)) {
            return m49815l(pointF);
        }
        PointF pointF2 = new PointF(touchPoint.getX(), point.y);
        return !m49809f(rulerRectF, rulerMatrix, downPoint, pointF2) ? m49815l(pointF2) : this.lastValidTouchPoint;
    }

    /* renamed from: l */
    public final TouchPoint m49815l(PointF point) {
        TouchPoint touchPoint = new TouchPoint(point.x, point.y);
        this.lastValidTouchPoint = touchPoint;
        return touchPoint;
    }
}
