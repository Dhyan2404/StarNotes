package com.onyx.android.sdk.universal.editor.handler.drag;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J&\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0012\u0010\n\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u001e\u0010\u000e\u001a\u00020\u000b*\b\u0012\u0004\u0012\u00020\u00030\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/drag/RightTrapezoidDragHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "selectionPoints", "startPoint", "stopPoint", "", "onDrag", "a", "b", "", "c", "(Ljava/util/List;)Z", "isHypotOnSameSide", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RightTrapezoidDragHandler implements ShapeDragHandler {
    /* renamed from: a */
    public final void m40987a(List<TouchPoint> list) {
        if (m40989c(list)) {
            return;
        }
        list.get(1).setX((2 * list.get(0).getX()) - list.get(1).getX());
    }

    /* renamed from: b */
    public final void m40988b(List<TouchPoint> list) {
        if (m40989c(list)) {
            return;
        }
        list.get(2).setX((2 * list.get(3).getX()) - list.get(2).getX());
    }

    /* renamed from: c */
    public final boolean m40989c(List<TouchPoint> list) {
        TouchPointPair touchPointPair = new TouchPointPair(list.get(0), list.get(3));
        return MathUtils.INSTANCE.sameSignWith(Float.valueOf(touchPointPair.signedDistance(list.get(1))), Float.valueOf(touchPointPair.signedDistance(list.get(2))));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.drag.ShapeDragHandler
    public void onDrag(@NotNull List<TouchPoint> selectionPoints, @NotNull TouchPoint startPoint, @NotNull TouchPoint stopPoint) {
        Intrinsics.checkNotNullParameter(selectionPoints, "selectionPoints");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(stopPoint, "stopPoint");
        int indexOf = selectionPoints.indexOf(startPoint);
        float x = stopPoint.getX() - startPoint.getX();
        float y = stopPoint.getY() - startPoint.getY();
        switch (indexOf) {
            case 0:
                selectionPoints.get(0).offset(x, y);
                selectionPoints.get(3).offset(x, 0.0f);
                selectionPoints.get(1).offset(0.0f, y);
                m40988b(selectionPoints);
                return;
            case 1:
                selectionPoints.get(1).offset(x, y);
                selectionPoints.get(0).offset(0.0f, y);
                m40988b(selectionPoints);
                return;
            case 2:
                selectionPoints.get(2).offset(x, y);
                selectionPoints.get(3).offset(0.0f, y);
                m40987a(selectionPoints);
                return;
            case 3:
                selectionPoints.get(3).offset(x, y);
                selectionPoints.get(0).offset(x, 0.0f);
                selectionPoints.get(2).offset(0.0f, y);
                m40987a(selectionPoints);
                return;
            case 4:
                selectionPoints.get(0).offset(0.0f, y);
                selectionPoints.get(1).offset(0.0f, y);
                return;
            case 5:
                selectionPoints.get(1).offset(x, 0.0f);
                selectionPoints.get(2).offset(x, 0.0f);
                if (m40989c(selectionPoints)) {
                    return;
                }
                float f = -x;
                selectionPoints.get(1).offset(f, 0.0f);
                selectionPoints.get(2).offset(f, 0.0f);
                return;
            case 6:
                selectionPoints.get(2).offset(0.0f, y);
                selectionPoints.get(3).offset(0.0f, y);
                return;
            case 7:
                selectionPoints.get(0).offset(x, 0.0f);
                selectionPoints.get(3).offset(x, 0.0f);
                if (m40989c(selectionPoints)) {
                    return;
                }
                float f2 = -x;
                selectionPoints.get(0).offset(f2, 0.0f);
                selectionPoints.get(3).offset(f2, 0.0f);
                return;
            default:
                return;
        }
    }
}
