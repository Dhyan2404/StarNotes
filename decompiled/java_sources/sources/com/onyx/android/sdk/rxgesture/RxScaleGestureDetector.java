package com.onyx.android.sdk.rxgesture;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ScaleGestureDetectorCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxScaleGestureDetector;", "Landroid/view/ScaleGestureDetector;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "a", "Landroid/content/Context;", "context", "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxScaleGestureDetector extends ScaleGestureDetector {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RxScaleGestureDetector(@NotNull Context context, @NotNull ScaleGestureDetector.OnScaleGestureListener listener) {
        super(context, listener);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        ScaleGestureDetectorCompat.setQuickScaleEnabled((ScaleGestureDetector) this, false);
    }

    /* renamed from: a */
    public final boolean m36013a(MotionEvent event) {
        return false;
    }

    @Override // android.view.ScaleGestureDetector
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getActionMasked() == 2 && m36013a(event)) {
            return false;
        }
        return super.onTouchEvent(event);
    }
}
