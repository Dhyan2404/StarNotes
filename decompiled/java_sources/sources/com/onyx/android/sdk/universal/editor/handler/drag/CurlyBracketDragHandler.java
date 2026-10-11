package com.onyx.android.sdk.universal.editor.handler.drag;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ&\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J \u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/drag/CurlyBracketDragHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "selectionPoints", "startPoint", "stopPoint", "", "onDrag", OneDriverConstants.TOP, "bottom", "center", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CurlyBracketDragHandler implements ShapeDragHandler {
    /* renamed from: a */
    public final boolean m40982a(TouchPoint top, TouchPoint bottom, TouchPoint center) {
        return MathUtils.areApproximatelyEqual$default(MathUtils.INSTANCE, (top.getY() + bottom.getY()) / 2, center.getY(), 0.0f, 4, null);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.drag.ShapeDragHandler
    public void onDrag(@NotNull List<TouchPoint> selectionPoints, @NotNull TouchPoint startPoint, @NotNull TouchPoint stopPoint) {
        Intrinsics.checkNotNullParameter(selectionPoints, "selectionPoints");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(stopPoint, "stopPoint");
        if (selectionPoints.size() < 3) {
            return;
        }
        int indexOf = selectionPoints.indexOf(startPoint);
        float x = stopPoint.getX() - startPoint.getX();
        float y = stopPoint.getY() - startPoint.getY();
        TouchPoint touchPoint = selectionPoints.get(1);
        TouchPoint touchPoint2 = selectionPoints.get(2);
        TouchPoint touchPoint3 = selectionPoints.get(0);
        boolean m40982a = m40982a(touchPoint, touchPoint2, touchPoint3);
        if (indexOf == 0) {
            float y2 = touchPoint.getY() - touchPoint3.getY();
            float y3 = touchPoint2.getY() - touchPoint3.getY();
            float floatValue = 10 + ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(20.0f), Float.valueOf(Math.abs(touchPoint2.getY() - touchPoint.getY()) * GeometryConfigurations.INSTANCE.getCurlyBracketMaxHeightPercent()))).floatValue();
            selectionPoints.get(0).offset(x, com.onyx.android.sdk.base.lite.utils.MathUtils.INSTANCE.limitIn(y, y2, y3, floatValue, floatValue));
            return;
        }
        if (indexOf == 1) {
            float floatValue2 = ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(y), Float.valueOf((touchPoint3.getY() - 20.0f) - startPoint.getY()))).floatValue();
            selectionPoints.get(1).offset(x, floatValue2);
            selectionPoints.get(2).offset(x, m40982a ? -floatValue2 : 0.0f);
        } else {
            if (indexOf != 2) {
                return;
            }
            float floatValue3 = ((Number) MathUtils.INSTANCE.atLeast(Float.valueOf(y), Float.valueOf((touchPoint3.getY() + 20.0f) - stopPoint.getY()))).floatValue();
            selectionPoints.get(2).offset(x, floatValue3);
            selectionPoints.get(1).offset(x, m40982a ? -floatValue3 : 0.0f);
        }
    }
}
