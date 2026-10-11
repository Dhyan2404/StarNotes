package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.pen.NeoCharcoalPen;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/CharcoalNeoPenRender;", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "neoPen", "Lcom/onyx/android/sdk/pen/NeoCharcoalPen;", "(Lcom/onyx/android/sdk/pen/NeoCharcoalPen;)V", "render", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCharcoalNeoPenRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharcoalNeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/CharcoalNeoPenRender\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n766#2:32\n857#2,2:33\n1855#2,2:35\n*S KotlinDebug\n*F\n+ 1 CharcoalNeoPenRender.kt\ncom/onyx/android/sdk/note/common/data/render/CharcoalNeoPenRender\n*L\n26#1:32\n26#1:33,2\n27#1:35,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CharcoalNeoPenRender extends NeoPenRender {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CharcoalNeoPenRender(@NotNull NeoCharcoalPen neoPen) {
        super(neoPen);
        Intrinsics.checkNotNullParameter(neoPen, "neoPen");
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
        List split = CollectionKt.split(safelySubList, 1);
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
}
