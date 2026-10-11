package com.onyx.android.sdk.rxgesture.pen;

import com.onyx.android.sdk.geometry.data.TouchData;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0011¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\f\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/PenReader;", "", "", "onActivate", "onDeactivate", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "data", "onTouchEvent", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "penStatusBean", "", "isUp", "isHolding", "isLongPressure", "onDown", "onMove", "onUp", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "e", "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "getPenGesture", "()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;", "penGesture", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class PenReader {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final RxPenGesture penGesture;

    public PenReader(@NotNull RxPenGesture penGesture) {
        Intrinsics.checkNotNullParameter(penGesture, "penGesture");
        this.penGesture = penGesture;
    }

    @NotNull
    public final RxPenGesture getPenGesture() {
        return this.penGesture;
    }

    public final boolean isHolding() {
        return penStatusBean().isHolding();
    }

    public final boolean isLongPressure() {
        return penStatusBean().isLongPress();
    }

    public final boolean isUp() {
        return penStatusBean().isUp();
    }

    public void onActivate() {
    }

    public void onDeactivate() {
    }

    public void onDown(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    public void onMove(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    public final void onTouchEvent(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        int action = data.getAction();
        if (action == 0) {
            onDown(data);
            return;
        }
        if (action != 1) {
            if (action == 2) {
                onMove(data);
                return;
            } else if (action != 3) {
                return;
            }
        }
        onUp(data);
    }

    public void onUp(@NotNull TouchData data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    @NotNull
    public final PenStatusBean penStatusBean() {
        return this.penGesture.getPenStatusBean();
    }
}
