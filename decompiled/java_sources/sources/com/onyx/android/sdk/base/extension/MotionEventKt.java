package com.onyx.android.sdk.base.extension;

import android.view.MotionEvent;
import com.onyx.android.sdk.base.utils.Debug;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0003*\u00020\u0005\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\b\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u000b\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\f\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\r\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u000e\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u000f\u001a\u00020\u0001*\u00020\u0005\u001a\u0012\u0010\u0010\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0003\u001a\n\u0010\u0012\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u0013\u001a\u00020\u0014*\u00020\u0005\u001a\n\u0010\u0015\u001a\u00020\u0016*\u00020\u0005¨\u0006\u0017"}, m61528d2 = {"isToolTypeFinger", "", "toolType", "", "copyAsCancelEvent", "Landroid/view/MotionEvent;", "getToolType", "isCancelAction", "isDoneAction", "isDownAction", "isEraserTouchType", "isFingerTouch", "isMultiTouch", "isPenTouchType", "isStylusButtonTouchType", "isStylusTouchType", "isTouchType", "touchType", "isUpAction", "name", "", "reportMotionEvent", "", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MotionEventKt {
    @NotNull
    public static final MotionEvent copyAsCancelEvent(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        obtainNoHistory.setAction(3);
        Intrinsics.checkNotNull(obtainNoHistory);
        return obtainNoHistory;
    }

    public static final int getToolType(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return motionEvent.getToolType(motionEvent.getActionIndex());
    }

    public static final boolean isCancelAction(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return motionEvent.getAction() == 3;
    }

    public static final boolean isDoneAction(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return isUpAction(motionEvent) || isCancelAction(motionEvent);
    }

    public static final boolean isDownAction(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return motionEvent.getAction() == 0;
    }

    public static final boolean isEraserTouchType(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return isTouchType(motionEvent, 4);
    }

    public static final boolean isFingerTouch(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return isToolTypeFinger(motionEvent.getToolType(motionEvent.getActionIndex()));
    }

    public static final boolean isMultiTouch(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return motionEvent.getPointerCount() > 1;
    }

    public static final boolean isPenTouchType(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return isTouchType(motionEvent, 2) || isTouchType(motionEvent, 4) || isStylusButtonTouchType(motionEvent);
    }

    public static final boolean isStylusButtonTouchType(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return motionEvent.getButtonState() == 32;
    }

    public static final boolean isStylusTouchType(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return isTouchType(motionEvent, 2);
    }

    public static final boolean isToolTypeFinger(int i) {
        return i == 1 || i == 0 || i == 3;
    }

    public static final boolean isTouchType(@NotNull MotionEvent motionEvent, int i) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return motionEvent.getToolType(motionEvent.getActionIndex()) == i;
    }

    public static final boolean isUpAction(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        return motionEvent.getAction() == 1;
    }

    @NotNull
    public static final String name(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        int action = motionEvent.getAction();
        if (action == 0) {
            return "MotionEvent.Down";
        }
        if (action == 1) {
            return "MotionEvent.Up";
        }
        if (action == 2) {
            return "MotionEvent.Move";
        }
        if (action == 3) {
            return "MotionEvent.Cancel";
        }
        if (action == 4) {
            return "MotionEvent.Outside";
        }
        return "MotionEvent(" + motionEvent.getAction() + ')';
    }

    public static final void reportMotionEvent(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "<this>");
        if (Debug.INSTANCE.getDebug()) {
            StringBuilder sb = new StringBuilder();
            int pointerCount = motionEvent.getPointerCount();
            for (int i = 0; i < pointerCount; i++) {
                sb.append("\n, index = " + i + ", size = " + motionEvent.getSize(i) + ", Major = " + motionEvent.getTouchMajor(i) + ", minor = " + motionEvent.getTouchMinor(i) + ", pressure = " + motionEvent.getPressure(i));
                int historySize = motionEvent.getHistorySize();
                for (int i2 = 0; i2 < historySize; i2++) {
                    sb.append("\n, historyPos = " + i2 + ", size = " + motionEvent.getHistoricalSize(i, i2) + ", Major = " + motionEvent.getHistoricalTouchMajor(i, i2) + ", minor = " + motionEvent.getHistoricalTouchMinor(i, i2) + ", pressure = " + motionEvent.getHistoricalPressure(i, i2));
                }
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0 && actionMasked != 1 && actionMasked != 3) {
                Debug.INSTANCE.m32056v(motionEvent.getClass(), "onTouch, " + motionEvent + ' ' + ((Object) sb), new Object[0]);
                return;
            }
            Debug.INSTANCE.m32056v(motionEvent.getClass(), "onTouch, " + motionEvent + ' ' + ((Object) sb) + ", " + motionEvent.getDevice(), new Object[0]);
        }
    }
}
