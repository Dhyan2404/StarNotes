package com.onyx.android.sdk.p039ui.wheelview;

import android.os.Handler;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\r\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0016\u0010\u000f\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\n¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/SmoothScrollTimerTask;", "Ljava/util/TimerTask;", "", "run", "Lcom/onyx/android/sdk/ui/wheelview/WheelView;", "e", "Lcom/onyx/android/sdk/ui/wheelview/WheelView;", "wheelView", "", C6997f.f39671c, "I", TypedValues.CycleType.S_WAVE_OFFSET, C6998g.f39679a, "realTotalOffset", C6999h.f39688c, "realOffset", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/ui/wheelview/WheelView;I)V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SmoothScrollTimerTask extends TimerTask {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WheelView wheelView;

    /* renamed from: f, reason: from kotlin metadata */
    public final int offset;

    /* renamed from: g, reason: from kotlin metadata */
    public int realTotalOffset;

    /* renamed from: h, reason: from kotlin metadata */
    public int realOffset;

    public SmoothScrollTimerTask(@NotNull WheelView wheelView, int i) {
        Intrinsics.checkNotNullParameter(wheelView, "wheelView");
        this.wheelView = wheelView;
        this.offset = i;
        this.realTotalOffset = Integer.MAX_VALUE;
        this.realOffset = 0;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (this.realTotalOffset == Integer.MAX_VALUE) {
            this.realTotalOffset = this.offset;
        }
        int i = this.realTotalOffset;
        int i2 = (int) (i * 0.1f);
        this.realOffset = i2;
        if (i2 == 0) {
            this.realOffset = i < 0 ? -1 : 1;
        }
        if (Math.abs(i) <= 1.0d) {
            this.wheelView.cancelFuture();
            Handler handler = this.wheelView.getHandler();
            Intrinsics.checkNotNull(handler);
            handler.sendEmptyMessage(3000);
            return;
        }
        WheelView wheelView = this.wheelView;
        wheelView.setTotalScrollY(wheelView.getTotalScrollY() + this.realOffset);
        if (!this.wheelView.getIsLoop()) {
            float itemHeight = this.wheelView.getItemHeight();
            float itemsCount = ((this.wheelView.getItemsCount() - 1) - this.wheelView.getInitPosition()) * itemHeight;
            if (this.wheelView.getTotalScrollY() <= (-this.wheelView.getInitPosition()) * itemHeight || this.wheelView.getTotalScrollY() >= itemsCount) {
                WheelView wheelView2 = this.wheelView;
                wheelView2.setTotalScrollY(wheelView2.getTotalScrollY() - this.realOffset);
                this.wheelView.cancelFuture();
                Handler handler2 = this.wheelView.getHandler();
                if (handler2 != null) {
                    handler2.sendEmptyMessage(3000);
                    return;
                }
                return;
            }
        }
        Handler handler3 = this.wheelView.getHandler();
        Intrinsics.checkNotNull(handler3);
        handler3.sendEmptyMessage(1000);
        this.realTotalOffset -= this.realOffset;
    }
}
