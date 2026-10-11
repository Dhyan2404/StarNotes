package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import androidx.core.app.NotificationCompat;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\n\u001a\u00020\u0004R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001a\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0011\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", "", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onDown", "onMove", "onUp", "", "getRealtimeVelocity", "onRelease", "Landroid/view/VelocityTracker;", "a", "Landroid/view/VelocityTracker;", "velocityTracker", "", "b", "F", "getVelocityX", "()F", "setVelocityX", "(F)V", "velocityX", "c", "getVelocityY", "setVelocityY", "velocityY", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class VelocityTrackerWrapper {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public VelocityTracker velocityTracker;

    /* renamed from: b, reason: from kotlin metadata */
    public float velocityX;

    /* renamed from: c, reason: from kotlin metadata */
    public float velocityY;

    @NotNull
    public final float[] getRealtimeVelocity() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return new float[]{0.0f, 0.0f};
        }
        velocityTracker.computeCurrentVelocity(1000);
        return new float[]{velocityTracker.getXVelocity(), velocityTracker.getYVelocity()};
    }

    public final float getVelocityX() {
        return this.velocityX;
    }

    public final float getVelocityY() {
        return this.velocityY;
    }

    public final void onDown(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        } else if (velocityTracker != null) {
            velocityTracker.clear();
        }
        this.velocityX = 0.0f;
        this.velocityY = 0.0f;
        VelocityTracker velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(event);
        }
    }

    public final void onMove(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return;
        }
        velocityTracker.addMovement(event);
    }

    public final void onRelease() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.velocityTracker = null;
    }

    public final void onUp(@NotNull MotionEvent event) {
        float first;
        float last;
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.velocityTracker == null) {
            return;
        }
        float[] realtimeVelocity = getRealtimeVelocity();
        first = ArraysKt___ArraysKt.first(realtimeVelocity);
        this.velocityX = first;
        last = ArraysKt___ArraysKt.last(realtimeVelocity);
        this.velocityY = last;
        RxGestureLog rxGestureLog = RxGestureLog.INSTANCE;
        rxGestureLog.m35974v(VelocityTrackerWrapper.class, "X velocity: " + this.velocityX);
        rxGestureLog.m35974v(VelocityTrackerWrapper.class, "Y velocity: " + this.velocityY);
    }

    public final void setVelocityX(float f) {
        this.velocityX = f;
    }

    public final void setVelocityY(float f) {
        this.velocityY = f;
    }
}
