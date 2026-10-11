package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.pen.NeoPencilPen;
import com.onyx.android.sdk.pen.PenBrushResult;
import com.onyx.android.sdk.pen.PenResult;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J&\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J(\u0010\u0010\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0016J8\u0010\u0013\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\fH\u0016J(\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u0015\u001a\u00020\tH\u0016J\u0012\u0010\u0017\u001a\u00020\t2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000fH\u0002R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "", "render", "realPoint", "", "repaint", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/pen/PenResult;", "onTouchDown", "realPointList", "predictPoint", "onTouchMove", "onTouchDone", Constants.RESET, "penResult", "a", "", "e", "I", "getBrushPointCount", "()I", "setBrushPointCount", "(I)V", "brushPointCount", "Lcom/onyx/android/sdk/pen/NeoPencilPen;", "neoPen", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pen/NeoPencilPen;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPencilNeoPenRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilNeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n766#2:74\n857#2,2:75\n1855#2,2:77\n*S KotlinDebug\n*F\n+ 1 PencilNeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender\n*L\n31#1:74\n31#1:75,2\n32#1:77,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PencilNeoPenRender extends NeoPenRender {

    /* renamed from: e, reason: from kotlin metadata */
    public int brushPointCount;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PencilNeoPenRender(@NotNull NeoPencilPen neoPen) {
        super(neoPen);
        Intrinsics.checkNotNullParameter(neoPen, "neoPen");
    }

    /* renamed from: a */
    public final void m33650a(PenResult penResult) {
        PenBrushResult penBrushResult = penResult instanceof PenBrushResult ? (PenBrushResult) penResult : null;
        if (penBrushResult == null) {
            return;
        }
        this.brushPointCount += penBrushResult.getF44295j();
    }

    public final int getBrushPointCount() {
        return this.brushPointCount;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    @NotNull
    public Pair<PenResult, PenResult> onTouchDone(@NotNull TouchPoint realPoint, boolean repaint) {
        Intrinsics.checkNotNullParameter(realPoint, "realPoint");
        Pair<PenResult, PenResult> onTouchDone = super.onTouchDone(realPoint, repaint);
        m33650a(onTouchDone.getFirst());
        return onTouchDone;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    @NotNull
    public Pair<PenResult, PenResult> onTouchDown(@NotNull TouchPoint realPoint, boolean repaint) {
        Intrinsics.checkNotNullParameter(realPoint, "realPoint");
        this.brushPointCount = 0;
        return super.onTouchDown(realPoint, repaint);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    @NotNull
    public Pair<PenResult, PenResult> onTouchMove(@NotNull List<TouchPoint> realPointList, @Nullable TouchPoint predictPoint, boolean repaint) {
        Intrinsics.checkNotNullParameter(realPointList, "realPointList");
        Pair<PenResult, PenResult> onTouchMove = super.onTouchMove(realPointList, predictPoint, repaint);
        m33650a(onTouchMove.getFirst());
        return onTouchMove;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    public void render(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull List<TouchPoint> points) {
        Object firstOrNull;
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(points, "points");
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
        renderResult(getNeoPen().onPenDown(touchPoint, true).getFirst(), canvas, paint);
        List split = CollectionKt.split(safelySubList, 1000);
        ArrayList arrayList = new ArrayList();
        for (Object obj : split) {
            if (!((List) obj).isEmpty()) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            renderResult(getNeoPen().onPenMove((List) it2.next(), null, true).getFirst(), canvas, paint);
        }
        renderResult(getNeoPen().onPenUp(touchPoint2, true).getFirst(), canvas, paint);
        reset();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.NeoPenRender
    public void reset() {
        super.reset();
        this.brushPointCount = 0;
    }

    public final void setBrushPointCount(int i) {
        this.brushPointCount = i;
    }
}
