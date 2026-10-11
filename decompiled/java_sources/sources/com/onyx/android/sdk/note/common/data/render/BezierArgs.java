package com.onyx.android.sdk.note.common.data.render;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016R\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\r\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;", "", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "", "onTouchData", "onTouchDown", "onTouchMove", "onTouchDone", Constants.RESET, "resetPredict", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "a", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getCurrentPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setCurrentPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "currentPoint", "b", "getLastPoint", "setLastPoint", "lastPoint", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class BezierArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public TouchPoint currentPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public TouchPoint lastPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    @NotNull
    public final TouchPoint getCurrentPoint() {
        return this.currentPoint;
    }

    @NotNull
    public final TouchPoint getLastPoint() {
        return this.lastPoint;
    }

    public void onTouchData(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        int action = touchData.getAction();
        if (action == 0) {
            onTouchDown(touchData);
            return;
        }
        if (action == 1) {
            onTouchDone(touchData);
            resetPredict();
        } else {
            if (action != 2) {
                return;
            }
            onTouchMove(touchData);
        }
    }

    public void onTouchDone(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.lastPoint.set(this.currentPoint);
        this.currentPoint.set(touchData.getTouchPoint());
    }

    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.currentPoint.set(touchData.getTouchPoint());
        this.lastPoint.set(touchData.getTouchPoint());
    }

    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        this.lastPoint.set(this.currentPoint);
        this.currentPoint.set(touchData.getTouchPoint());
    }

    public void reset() {
        resetPredict();
    }

    public void resetPredict() {
    }

    public final void setCurrentPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.currentPoint = touchPoint;
    }

    public final void setLastPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.lastPoint = touchPoint;
    }
}
