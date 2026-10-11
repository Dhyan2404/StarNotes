package com.onyx.android.sdk.textbox.listener;

import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "setEvent", "", "t", "", "onNext", "Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;", "e", "Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;", "gestureListener", C6997f.f39671c, "Landroid/view/MotionEvent;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FinishEventObserver extends RxTimerUtil.TimerObserver {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RichEditorGestureListener gestureListener;

    /* renamed from: f, reason: from kotlin metadata */
    public MotionEvent event;

    public FinishEventObserver(@NotNull RichEditorGestureListener gestureListener) {
        Intrinsics.checkNotNullParameter(gestureListener, "gestureListener");
        this.gestureListener = gestureListener;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public /* bridge */ /* synthetic */ void onNext(Long l) {
        onNext(l.longValue());
    }

    @NotNull
    public final FinishEventObserver setEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.event = event;
        return this;
    }

    public void onNext(long t) {
        RichEditorGestureListener richEditorGestureListener = this.gestureListener;
        MotionEvent motionEvent = this.event;
        if (motionEvent == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_EVENT);
            motionEvent = null;
        }
        richEditorGestureListener.onFinish(motionEvent);
    }
}
