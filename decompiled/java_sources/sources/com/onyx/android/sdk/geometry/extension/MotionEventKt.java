package com.onyx.android.sdk.geometry.extension;

import android.view.MotionEvent;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a,\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b\u001a\n\u0010\t\u001a\u00020\u0004*\u00020\u0002¨\u0006\n"}, m61528d2 = {"toTouchData", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "Landroid/view/MotionEvent;", "predictPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "boxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "action", "", "toTouchPoint", "sdk-geometry_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MotionEventKt {
    @NotNull
    public static final TouchData toTouchData(@NotNull MotionEvent motionEvent, @Nullable TouchPoint touchPoint, @Nullable BoxInfo boxInfo, int i) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return new TouchData(i, com.onyx.android.sdk.base.extension.MotionEventKt.getToolType(motionEvent), new TouchPoint(motionEvent), touchPoint, boxInfo, 0L, 32, null);
    }

    public static /* synthetic */ TouchData toTouchData$default(MotionEvent motionEvent, TouchPoint touchPoint, BoxInfo boxInfo, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            touchPoint = null;
        }
        if ((i2 & 2) != 0) {
            boxInfo = null;
        }
        if ((i2 & 4) != 0) {
            i = motionEvent.getAction();
        }
        return toTouchData(motionEvent, touchPoint, boxInfo, i);
    }

    @NotNull
    public static final TouchPoint toTouchPoint(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return new TouchPoint(motionEvent);
    }
}
