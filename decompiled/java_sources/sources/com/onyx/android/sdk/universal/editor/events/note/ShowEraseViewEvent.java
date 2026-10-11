package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ShowEraseViewEvent;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "a", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "", "b", "F", "getEraseRadius", "()F", "eraseRadius", "", "c", "I", "getEraseType", "()I", ApiBroadCastReceiver.ARGS_ERASE_TYPE, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/base/data/TouchPoint;FI)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShowEraseViewEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: b, reason: from kotlin metadata */
    public final float eraseRadius;

    /* renamed from: c, reason: from kotlin metadata */
    public final int eraseType;

    public ShowEraseViewEvent(@NotNull TouchPoint touchPoint, float f, int i) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.touchPoint = touchPoint;
        this.eraseRadius = f;
        this.eraseType = i;
    }

    public final float getEraseRadius() {
        return this.eraseRadius;
    }

    public final int getEraseType() {
        return this.eraseType;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }
}
