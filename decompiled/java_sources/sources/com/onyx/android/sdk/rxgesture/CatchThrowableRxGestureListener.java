package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0001¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u001a\u001a\u00020\u0006H\u0016J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u001e\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/CatchThrowableRxGestureListener;", "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "Landroid/view/MotionEvent;", "motionEvent", "", "onTouchDown", "onTouchUp", "onTouchCancel", "onMoving", "onExitSingleMove", "onTwoFingerMoving", "onFling", "Landroid/view/ScaleGestureDetector;", "detector", "onScaleBegin", "onScaling", "onScaleEnd", "onSingleTap", "onDoubleTap", "onSingleTapConfirmed", "onLongPress", "onThreeFingerClicked", "onTwoFingerClicked", "onPalm", "onExitLongPress", "onNoGestures", "a", "Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CatchThrowableRxGestureListener implements RxGestureListener {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RxGestureListener listener;

    public CatchThrowableRxGestureListener(@NotNull RxGestureListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onDoubleTap(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onDoubleTap(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onExitLongPress() {
        try {
            this.listener.onExitLongPress();
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onExitSingleMove(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onExitSingleMove(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onFling(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onFling(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onLongPress(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onLongPress(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onMoving(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onMoving(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onNoGestures(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onNoGestures(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onPalm(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onPalm(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onScaleBegin(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        try {
            this.listener.onScaleBegin(detector);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onScaleEnd(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        try {
            this.listener.onScaleEnd(detector);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onScaling(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        try {
            this.listener.onScaling(detector);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onSingleTap(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onSingleTap(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onSingleTapConfirmed(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onSingleTapConfirmed(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onThreeFingerClicked(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onThreeFingerClicked(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onTouchCancel(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onTouchCancel(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onTouchDown(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onTouchDown(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onTouchUp(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onTouchUp(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onTwoFingerClicked(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onTwoFingerClicked(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
    public void onTwoFingerMoving(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        try {
            this.listener.onTwoFingerMoving(gestureContext, motionEvent);
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }
}
