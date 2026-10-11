package com.onyx.android.sdk.universal.editor.handler.drag;

import com.onyx.android.sdk.base.data.TouchPoint;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/drag/OvalDragHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;", "()V", "onDrag", "", "selectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", "stopPoint", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class OvalDragHandler implements ShapeDragHandler {
    @Override // com.onyx.android.sdk.universal.editor.handler.drag.ShapeDragHandler
    public void onDrag(@NotNull List<TouchPoint> selectionPoints, @NotNull TouchPoint startPoint, @NotNull TouchPoint stopPoint) {
        Intrinsics.checkNotNullParameter(selectionPoints, "selectionPoints");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(stopPoint, "stopPoint");
        int indexOf = selectionPoints.indexOf(startPoint);
        float x = stopPoint.getX() - startPoint.getX();
        float y = stopPoint.getY() - startPoint.getY();
        if (indexOf == 0) {
            selectionPoints.get(0).offset(0.0f, y);
            selectionPoints.get(2).offset(0.0f, -y);
            return;
        }
        if (indexOf == 1) {
            selectionPoints.get(1).offset(x, 0.0f);
            selectionPoints.get(3).offset(-x, 0.0f);
        } else if (indexOf == 2) {
            selectionPoints.get(2).offset(0.0f, y);
            selectionPoints.get(0).offset(0.0f, -y);
        } else {
            if (indexOf != 3) {
                return;
            }
            selectionPoints.get(3).offset(x, 0.0f);
            selectionPoints.get(1).offset(-x, 0.0f);
        }
    }
}
