package com.onyx.android.sdk.rxgesture;

import android.app.Activity;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.C1126e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.rxgesture.RxGesture;
import com.onyx.android.sdk.rxgesture.RxGestureListener;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;", "Landroid/app/Activity;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "b", "a", "Lcom/onyx/android/sdk/rxgesture/RxGesture;", "e", "Lcom/onyx/android/sdk/rxgesture/RxGesture;", "gesture", "Landroid/widget/TextView;", C6997f.f39671c, "Landroid/widget/TextView;", "textView", "Landroid/view/View;", C6998g.f39679a, "Landroid/view/View;", "touchView", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class GestureTestActivity extends Activity {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final RxGesture gesture = new RxGesture();

    /* renamed from: f, reason: from kotlin metadata */
    public TextView textView;

    /* renamed from: g, reason: from kotlin metadata */
    public View touchView;

    /* renamed from: a */
    public final void m35893a() {
        RxGestureLog.INSTANCE.setDebugLog(true);
        RxGesture rxGesture = this.gesture;
        RxGestureConfig rxGestureConfig = new RxGestureConfig();
        rxGestureConfig.setEnableCommonGesture(true);
        rxGestureConfig.setEnableMoveGesture(true);
        rxGestureConfig.setEnableDoubleGesture(true);
        rxGestureConfig.setEnableFlingGesture(true);
        rxGestureConfig.setEnableLongPressGesture(true);
        rxGestureConfig.setEnabledPalmReject(true);
        rxGestureConfig.setEnabledPenTouch(false);
        rxGestureConfig.setEnableScaleGesture(true);
        rxGesture.subscribe(rxGestureConfig, new RxGestureListener() { // from class: com.onyx.android.sdk.rxgesture.GestureTestActivity$initGesture$2
            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onDoubleTap(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                TextView textView;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                textView = GestureTestActivity.this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                    textView = null;
                }
                textView.setText("双击事件 :" + motionEvent.getEventTime());
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onExitLongPress() {
                RxGestureListener.DefaultImpls.onExitLongPress(this);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onExitSingleMove(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                TextView textView;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                textView = GestureTestActivity.this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                    textView = null;
                }
                textView.setText("取消单指滑动 : " + motionEvent.getX());
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onFling(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                TextView textView;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                VelocityTrackerWrapper velocityTrackerWrapper = gestureContext.getVelocityTrackerWrapper();
                textView = GestureTestActivity.this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                    textView = null;
                }
                textView.setText("翻页事件 :" + motionEvent.getEventTime() + ", VelocityX = " + velocityTrackerWrapper.getVelocityX() + ", VelocityY = " + velocityTrackerWrapper.getVelocityY());
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onLongPress(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                TextView textView;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                textView = GestureTestActivity.this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                    textView = null;
                }
                textView.setText("长按事件 :" + motionEvent.getEventTime());
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onMoving(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                TextView textView;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                textView = GestureTestActivity.this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                    textView = null;
                }
                textView.setText("滑动事件 : " + motionEvent.getX());
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onNoGestures(@NotNull RxGestureContext rxGestureContext, @NotNull MotionEvent motionEvent) {
                RxGestureListener.DefaultImpls.onNoGestures(this, rxGestureContext, motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onPalm(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                TextView textView;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                String str = "手掌事件 : size = " + motionEvent.getSize();
                textView = GestureTestActivity.this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                    textView = null;
                }
                textView.setText(str);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onScaleBegin(@NotNull ScaleGestureDetector scaleGestureDetector) {
                RxGestureListener.DefaultImpls.onScaleBegin(this, scaleGestureDetector);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onScaleEnd(@NotNull ScaleGestureDetector scaleGestureDetector) {
                RxGestureListener.DefaultImpls.onScaleEnd(this, scaleGestureDetector);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onScaling(@NotNull ScaleGestureDetector detector) {
                TextView textView;
                Intrinsics.checkNotNullParameter(detector, "detector");
                textView = GestureTestActivity.this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                    textView = null;
                }
                textView.setText("缩放事件 :" + detector.getScaleFactor());
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onSingleTap(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                TextView textView;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                textView = GestureTestActivity.this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                    textView = null;
                }
                textView.setText("单击事件 :" + motionEvent.getEventTime());
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onSingleTapConfirmed(@NotNull RxGestureContext rxGestureContext, @NotNull MotionEvent motionEvent) {
                RxGestureListener.DefaultImpls.onSingleTapConfirmed(this, rxGestureContext, motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onThreeFingerClicked(@NotNull RxGestureContext rxGestureContext, @NotNull MotionEvent motionEvent) {
                RxGestureListener.DefaultImpls.onThreeFingerClicked(this, rxGestureContext, motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTouchCancel(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                TextView textView;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                textView = GestureTestActivity.this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                    textView = null;
                }
                textView.setText("取消事件 :" + motionEvent.getEventTime());
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTouchDown(@NotNull RxGestureContext rxGestureContext, @NotNull MotionEvent motionEvent) {
                RxGestureListener.DefaultImpls.onTouchDown(this, rxGestureContext, motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTouchUp(@NotNull RxGestureContext rxGestureContext, @NotNull MotionEvent motionEvent) {
                RxGestureListener.DefaultImpls.onTouchUp(this, rxGestureContext, motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTwoFingerClicked(@NotNull RxGestureContext rxGestureContext, @NotNull MotionEvent motionEvent) {
                RxGestureListener.DefaultImpls.onTwoFingerClicked(this, rxGestureContext, motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTwoFingerMoving(@NotNull RxGestureContext rxGestureContext, @NotNull MotionEvent motionEvent) {
                RxGestureListener.DefaultImpls.onTwoFingerMoving(this, rxGestureContext, motionEvent);
            }
        });
        View view = this.touchView;
        View view2 = null;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchView");
            view = null;
        }
        final RxGesture rxGesture2 = this.gesture;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.h2h
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view3, MotionEvent motionEvent) {
                return RxGesture.this.onTouchEvent(view3, motionEvent);
            }
        });
        View view3 = this.touchView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchView");
        } else {
            view2 = view3;
        }
        final RxGesture rxGesture3 = this.gesture;
        view2.setOnHoverListener(new View.OnHoverListener() { // from class: com.sunia.HTREnginev2.i2h
            @Override // android.view.View.OnHoverListener
            public final boolean onHover(View view4, MotionEvent motionEvent) {
                return RxGesture.this.onHover(view4, motionEvent);
            }
        });
    }

    /* renamed from: b */
    public final void m35894b() {
        View findViewById = findViewById(C7945R.id.text);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.textView = (TextView) findViewById;
        View findViewById2 = findViewById(C7945R.id.touch_view);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.touchView = findViewById2;
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063341, this, savedInstanceState);
    }
}
