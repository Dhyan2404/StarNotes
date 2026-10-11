package com.onyx.android.sdk.p039ui.wheelview;

import android.os.Handler;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/InertiaTimerTask;", "Ljava/util/TimerTask;", "", "run", "", "e", "F", "mCurrentVelocityY", C6997f.f39671c, "mFirstVelocityY", "Lcom/onyx/android/sdk/ui/wheelview/WheelView;", C6998g.f39679a, "Lcom/onyx/android/sdk/ui/wheelview/WheelView;", "mWheelView", "wheelView", "velocityY", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/ui/wheelview/WheelView;F)V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InertiaTimerTask extends TimerTask {

    /* renamed from: e, reason: from kotlin metadata */
    public float mCurrentVelocityY;

    /* renamed from: f, reason: from kotlin metadata */
    public final float mFirstVelocityY;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final WheelView mWheelView;

    public InertiaTimerTask(@NotNull WheelView wheelView, float f) {
        Intrinsics.checkNotNullParameter(wheelView, "wheelView");
        this.mFirstVelocityY = f;
        this.mWheelView = wheelView;
        this.mCurrentVelocityY = 2.14748365E9f;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (((int) this.mCurrentVelocityY) == Integer.MAX_VALUE) {
            this.mCurrentVelocityY = Math.abs((double) this.mFirstVelocityY) > 2000.0d ? this.mFirstVelocityY > 0.0f ? 2000.0f : -2000.0f : this.mFirstVelocityY;
        }
        double abs = Math.abs(this.mCurrentVelocityY);
        boolean z = false;
        if (0.0d <= abs && abs <= 20.0d) {
            z = true;
        }
        if (z) {
            this.mWheelView.cancelFuture();
            Handler handler = this.mWheelView.getHandler();
            Intrinsics.checkNotNull(handler);
            handler.sendEmptyMessage(2000);
            return;
        }
        int i = (int) (this.mCurrentVelocityY / 100.0f);
        WheelView wheelView = this.mWheelView;
        float f = i;
        wheelView.setTotalScrollY(wheelView.getTotalScrollY() - f);
        if (!this.mWheelView.getIsLoop()) {
            float itemHeight = this.mWheelView.getItemHeight();
            float f2 = (-this.mWheelView.getInitPosition()) * itemHeight;
            float itemsCount = ((this.mWheelView.getItemsCount() - 1) - this.mWheelView.getInitPosition()) * itemHeight;
            double d = itemHeight * 0.25d;
            if (this.mWheelView.getTotalScrollY() - d < f2) {
                f2 = this.mWheelView.getTotalScrollY() + f;
            } else if (this.mWheelView.getTotalScrollY() + d > itemsCount) {
                itemsCount = this.mWheelView.getTotalScrollY() + f;
            }
            if (this.mWheelView.getTotalScrollY() <= f2) {
                this.mCurrentVelocityY = 40.0f;
                this.mWheelView.setTotalScrollY((int) f2);
            } else if (this.mWheelView.getTotalScrollY() >= itemsCount) {
                this.mWheelView.setTotalScrollY((int) itemsCount);
                this.mCurrentVelocityY = -40.0f;
            }
        }
        float f3 = this.mCurrentVelocityY;
        this.mCurrentVelocityY = f3 < 0.0f ? f3 + 20.0f : f3 - 20.0f;
        Handler handler2 = this.mWheelView.getHandler();
        if (handler2 != null) {
            handler2.sendEmptyMessage(1000);
        }
    }
}
