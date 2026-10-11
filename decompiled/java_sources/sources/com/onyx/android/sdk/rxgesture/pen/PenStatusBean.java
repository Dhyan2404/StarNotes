package com.onyx.android.sdk.rxgesture.pen;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0000R\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;", "", "", "holdCountIncrease", "", "isUpAfterHold", "isUp", "isHolding", "isMoving", "isLongPress", "copy", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;", "a", "Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;", "getPenStatus", "()Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;", "setPenStatus", "(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V", "penStatus", "", "b", "I", "getHoldCount", "()I", "setHoldCount", "(I)V", "holdCount", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenStatusBean {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public PenStatus penStatus = PenStatus.f46570UP;

    /* renamed from: b, reason: from kotlin metadata */
    public int holdCount;

    @NotNull
    public final PenStatusBean copy() {
        PenStatusBean penStatusBean = new PenStatusBean();
        penStatusBean.penStatus = this.penStatus;
        penStatusBean.holdCount = this.holdCount;
        return penStatusBean;
    }

    public final int getHoldCount() {
        return this.holdCount;
    }

    @NotNull
    public final PenStatus getPenStatus() {
        return this.penStatus;
    }

    public final void holdCountIncrease() {
        this.holdCount++;
    }

    public final boolean isHolding() {
        return this.penStatus == PenStatus.HOLDING;
    }

    public final boolean isLongPress() {
        return this.penStatus == PenStatus.LONG_PRESS;
    }

    public final boolean isMoving() {
        return this.penStatus == PenStatus.MOVING;
    }

    public final boolean isUp() {
        return this.penStatus == PenStatus.f46570UP;
    }

    public final boolean isUpAfterHold() {
        return this.penStatus == PenStatus.f46570UP && this.holdCount > 0;
    }

    public final void setHoldCount(int i) {
        this.holdCount = i;
    }

    public final void setPenStatus(@NotNull PenStatus penStatus) {
        Intrinsics.checkNotNullParameter(penStatus, "<set-?>");
        this.penStatus = penStatus;
    }
}
