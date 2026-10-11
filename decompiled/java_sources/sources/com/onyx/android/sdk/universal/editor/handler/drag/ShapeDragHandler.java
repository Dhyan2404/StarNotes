package com.onyx.android.sdk.universal.editor.handler.drag;

import com.onyx.android.sdk.base.data.TouchPoint;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;", "", "onDrag", "", "selectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", "stopPoint", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapeDragHandler {
    void onDrag(@NotNull List<TouchPoint> selectionPoints, @NotNull TouchPoint startPoint, @NotNull TouchPoint stopPoint);
}
