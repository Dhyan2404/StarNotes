package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.pen.NeoPen;
import com.onyx.android.sdk.pen.PenResult;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u0000 >2\u00020\u0001:\u0001>B\u000f\u0012\u0006\u0010(\u001a\u00020#¢\u0006\u0004\b<\u0010=J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J&\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\u0014\u0010\u000b\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\"\u0010\u000e\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0004J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fJ*\u0010\u0016\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\f0\u00152\u0006\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0016J<\u0010\u0019\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\f0\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0016J*\u0010\u001a\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\f0\u00152\u0006\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0014\u001a\u00020\u0013H\u0016J \u0010\u001c\u001a\u00020\u00062\u0016\u0010\u001b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0015H\u0014J\b\u0010\u001d\u001a\u00020\u0006H\u0004J\u0006\u0010\u001e\u001a\u00020\u0013J\u0006\u0010\u001f\u001a\u00020\u0013J\u0006\u0010 \u001a\u00020\u0006J\b\u0010!\u001a\u00020\u0006H\u0016J\b\u0010\"\u001a\u00020\u0006H\u0016R\u0017\u0010(\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00104\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010+\u001a\u0004\b2\u0010-\"\u0004\b3\u0010/RG\u0010;\u001a2\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\f0\u001505j\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0015`68\u0006¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:¨\u0006?"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "", "render", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "onTouchPointList", "Lcom/onyx/android/sdk/pen/PenResult;", "penResult", "renderResult", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onTouchData", "realPoint", "", "repaint", "Lkotlin/Pair;", "onTouchDown", "realPointList", "predictPoint", "onTouchMove", "onTouchDone", "pair", "addPenResult", "clearPenResults", "isPointCountOverThreshold", "isUnlimitedPointCountThreshold", "destroyPen", Constants.RESET, "resetPredict", "Lcom/onyx/android/sdk/pen/NeoPen;", "a", "Lcom/onyx/android/sdk/pen/NeoPen;", "getNeoPen", "()Lcom/onyx/android/sdk/pen/NeoPen;", "neoPen", "", "b", "I", "getPointCount", "()I", "setPointCount", "(I)V", "pointCount", "c", "getPointCountThreshold", "setPointCountThreshold", "pointCountThreshold", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "d", "Ljava/util/ArrayList;", "getPenResults", "()Ljava/util/ArrayList;", "penResults", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pen/NeoPen;)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNeoPenRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/NeoPenRender\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n766#2:139\n857#2,2:140\n1855#2,2:142\n*S KotlinDebug\n*F\n+ 1 NeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/NeoPenRender\n*L\n50#1:139\n50#1:140,2\n51#1:142,2\n*E\n"})
/* loaded from: classes8.dex */
public class NeoPenRender {
    public static final int DEFAULT_POINT_COUNT_THRESHOLD = 100;
    public static final int POINT_LIST_BATCH_LIMIT = 1000;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NeoPen neoPen;

    /* renamed from: b, reason: from kotlin metadata */
    public int pointCount;

    /* renamed from: c, reason: from kotlin metadata */
    public int pointCountThreshold;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<Pair<PenResult, PenResult>> penResults;

    public NeoPenRender(@NotNull NeoPen neoPen) {
        Intrinsics.checkNotNullParameter(neoPen, "neoPen");
        this.neoPen = neoPen;
        this.pointCountThreshold = 100;
        this.penResults = new ArrayList<>();
    }

    public static /* synthetic */ Pair onTouchDone$default(NeoPenRender neoPenRender, TouchPoint touchPoint, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onTouchDone");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return neoPenRender.onTouchDone(touchPoint, z);
    }

    public static /* synthetic */ Pair onTouchDown$default(NeoPenRender neoPenRender, TouchPoint touchPoint, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onTouchDown");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return neoPenRender.onTouchDown(touchPoint, z);
    }

    public static /* synthetic */ Pair onTouchMove$default(NeoPenRender neoPenRender, List list, TouchPoint touchPoint, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onTouchMove");
        }
        if ((i & 2) != 0) {
            touchPoint = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return neoPenRender.onTouchMove(list, touchPoint, z);
    }

    public void addPenResult(@NotNull Pair<? extends PenResult, ? extends PenResult> pair) {
        Intrinsics.checkNotNullParameter(pair, "pair");
        this.penResults.add(pair);
    }

    public final void clearPenResults() {
        this.penResults.clear();
    }

    public final void destroyPen() {
        this.neoPen.destroy();
    }

    @NotNull
    public final NeoPen getNeoPen() {
        return this.neoPen;
    }

    @NotNull
    public final ArrayList<Pair<PenResult, PenResult>> getPenResults() {
        return this.penResults;
    }

    public final int getPointCount() {
        return this.pointCount;
    }

    public final int getPointCountThreshold() {
        return this.pointCountThreshold;
    }

    public final boolean isPointCountOverThreshold() {
        return this.pointCount >= this.pointCountThreshold;
    }

    public final boolean isUnlimitedPointCountThreshold() {
        return this.pointCountThreshold >= Integer.MAX_VALUE;
    }

    public final void onTouchData(@NotNull TouchData touchData) {
        List listOf;
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        int action = touchData.getAction();
        if (action == 0) {
            onTouchDown$default(this, touchData.getTouchPoint(), false, 2, null);
            return;
        }
        if (action != 1) {
            if (action == 2) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(touchData.getTouchPoint());
                onTouchMove$default(this, listOf, touchData.getPredictPoint(), false, 4, null);
                return;
            } else if (action != 3) {
                return;
            }
        }
        onTouchDone$default(this, touchData.getTouchPoint(), false, 2, null);
        resetPredict();
    }

    @NotNull
    public Pair<PenResult, PenResult> onTouchDone(@NotNull TouchPoint realPoint, boolean repaint) {
        Intrinsics.checkNotNullParameter(realPoint, "realPoint");
        this.pointCount = this.pointCountThreshold;
        Pair<PenResult, PenResult> onPenUp = this.neoPen.onPenUp(realPoint, repaint);
        addPenResult(onPenUp);
        return onPenUp;
    }

    @NotNull
    public Pair<PenResult, PenResult> onTouchDown(@NotNull TouchPoint realPoint, boolean repaint) {
        Intrinsics.checkNotNullParameter(realPoint, "realPoint");
        this.pointCount = 0;
        Pair<PenResult, PenResult> onPenDown = this.neoPen.onPenDown(realPoint, repaint);
        addPenResult(onPenDown);
        return onPenDown;
    }

    @NotNull
    public Pair<PenResult, PenResult> onTouchMove(@NotNull List<TouchPoint> realPointList, @Nullable TouchPoint predictPoint, boolean repaint) {
        Intrinsics.checkNotNullParameter(realPointList, "realPointList");
        this.pointCount += realPointList.size();
        Pair<PenResult, PenResult> onPenMove = this.neoPen.onPenMove(realPointList, predictPoint, repaint);
        addPenResult(onPenMove);
        return onPenMove;
    }

    public final void onTouchPointList(@NotNull List<TouchPoint> points) {
        Object firstOrNull;
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(points, "points");
        clearPenResults();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) points);
        TouchPoint touchPoint2 = (TouchPoint) lastOrNull;
        if (touchPoint2 == null) {
            return;
        }
        List safelySubList = CollectionKt.safelySubList(points, 1, points.size() - 1);
        onTouchDown(touchPoint, true);
        List split = CollectionKt.split(safelySubList, 1000);
        ArrayList arrayList = new ArrayList();
        for (Object obj : split) {
            if (!((List) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            onTouchMove$default(this, (List) it2.next(), null, true, 2, null);
        }
        onTouchDone(touchPoint2, true);
    }

    public void render(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        PenResult.INSTANCE.render(this.penResults, canvas, paint);
    }

    public final void renderResult(@Nullable PenResult penResult, @NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (penResult == null) {
            return;
        }
        penResult.draw(canvas, paint);
    }

    public void reset() {
        this.pointCount = 0;
        clearPenResults();
    }

    public void resetPredict() {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) this.penResults);
        Pair pair = (Pair) lastOrNull;
        if (pair == null) {
            return;
        }
        this.penResults.remove(pair);
        this.penResults.add(new Pair<>(pair.getFirst(), null));
    }

    public final void setPointCount(int i) {
        this.pointCount = i;
    }

    public final void setPointCountThreshold(int i) {
        this.pointCountThreshold = i;
    }

    public void render(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(points, "points");
        onTouchPointList(points);
        render(canvas, paint);
        reset();
    }
}
