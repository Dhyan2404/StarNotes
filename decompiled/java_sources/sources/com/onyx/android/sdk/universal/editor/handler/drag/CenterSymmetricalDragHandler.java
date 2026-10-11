package com.onyx.android.sdk.universal.editor.handler.drag;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/drag/CenterSymmetricalDragHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;", "()V", "onDrag", "", "selectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", "stopPoint", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCenterSymmetricalDragHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CenterSymmetricalDragHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/drag/CenterSymmetricalDragHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n1855#2,2:23\n*S KotlinDebug\n*F\n+ 1 CenterSymmetricalDragHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/drag/CenterSymmetricalDragHandler\n*L\n20#1:23,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CenterSymmetricalDragHandler implements ShapeDragHandler {
    @Override // com.onyx.android.sdk.universal.editor.handler.drag.ShapeDragHandler
    public void onDrag(@NotNull List<TouchPoint> selectionPoints, @NotNull TouchPoint startPoint, @NotNull TouchPoint stopPoint) {
        Intrinsics.checkNotNullParameter(selectionPoints, "selectionPoints");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(stopPoint, "stopPoint");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint gravityCenter = geometryUtils.gravityCenter(selectionPoints);
        TouchPointPair touchPointPair = new TouchPointPair(gravityCenter, startPoint);
        TouchPointPair componentAlongLineDirection = new TouchPointPair(gravityCenter, stopPoint).componentAlongLineDirection(touchPointPair);
        float length = (componentAlongLineDirection.length() / touchPointPair.length()) * (GeometryUtils.isParallelTo$default(geometryUtils, componentAlongLineDirection, touchPointPair, null, false, 6, null) ? 1 : -1);
        Matrix matrix = new Matrix();
        matrix.postScale(length, length, gravityCenter.getX(), gravityCenter.getY());
        Iterator<T> it2 = selectionPoints.iterator();
        while (it2.hasNext()) {
            ((TouchPoint) it2.next()).applyMatrix(matrix);
        }
    }
}
