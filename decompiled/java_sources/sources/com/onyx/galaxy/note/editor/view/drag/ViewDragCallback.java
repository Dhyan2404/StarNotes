package com.onyx.galaxy.note.editor.view.drag;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.customview.widget.ViewDragHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0004H&J\b\u0010\t\u001a\u00020\u0004H&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0016¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;", "Landroidx/customview/widget/ViewDragHelper$Callback;", "()V", "canDrag", "", "canDragByFinger", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "canDragByPen", "canQuickDrag", "onInterceptTouchEvent", "", "onTouchEvent", "onViewDownTouch", "onViewMaxReleased", "releasedChild", "Landroid/view/View;", "onViewMovingTouch", "onViewUpTouch", "tryCaptureView", "child", "pointerId", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public abstract class ViewDragCallback extends ViewDragHelper.Callback {
    public abstract boolean canDrag();

    public abstract boolean canDragByFinger(@NotNull MotionEvent event);

    public abstract boolean canDragByPen();

    public abstract boolean canQuickDrag();

    public void onInterceptTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    public void onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    public void onViewDownTouch(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    public void onViewMaxReleased(@NotNull View releasedChild) {
        Intrinsics.checkNotNullParameter(releasedChild, "releasedChild");
    }

    public void onViewMovingTouch(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    public void onViewUpTouch(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
    }

    @Override // androidx.customview.widget.ViewDragHelper.Callback
    public boolean tryCaptureView(@NotNull View child, int pointerId) {
        Intrinsics.checkNotNullParameter(child, "child");
        return true;
    }
}
