package com.onyx.android.sdk.hwr.data.event;

import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithContext;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/event/HWRGestureEvent;", "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", "e", "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", "getGesture", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;", "setGesture", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithContext;)V", "gesture", Constants.CONSTRUCTOR_NAME, "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRGestureEvent extends HWRBaseEvent<HWRGestureEvent> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public HWRGestureWithContext gesture;

    public HWRGestureEvent(@NotNull HWRGestureWithContext gesture) {
        Intrinsics.checkNotNullParameter(gesture, "gesture");
        this.gesture = gesture;
    }

    @NotNull
    public final HWRGestureWithContext getGesture() {
        return this.gesture;
    }

    public final void setGesture(@NotNull HWRGestureWithContext hWRGestureWithContext) {
        Intrinsics.checkNotNullParameter(hWRGestureWithContext, "<set-?>");
        this.gesture = hWRGestureWithContext;
    }
}
