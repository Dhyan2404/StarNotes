package com.onyx.galaxy.note.editor.view.window;

import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\b\u0010\f\u001a\u00020\u0003H\u0016J\b\u0010\r\u001a\u00020\u0003H\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;", "", "afterDrag", "", "beforeDrag", "onConfigurationChanged", "onInterceptTouchEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "onOrientationChanged", "onWindowDismiss", "onWindowLocationChanged", "onWindowShow", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface IMovingDelegate {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class DefaultImpls {
        public static void afterDrag(@NotNull IMovingDelegate iMovingDelegate) {
        }

        public static void beforeDrag(@NotNull IMovingDelegate iMovingDelegate) {
        }

        public static void onConfigurationChanged(@NotNull IMovingDelegate iMovingDelegate) {
        }

        public static boolean onInterceptTouchEvent(@NotNull IMovingDelegate iMovingDelegate, @NotNull MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            return false;
        }

        public static void onOrientationChanged(@NotNull IMovingDelegate iMovingDelegate) {
        }

        public static void onWindowDismiss(@NotNull IMovingDelegate iMovingDelegate) {
        }

        public static void onWindowLocationChanged(@NotNull IMovingDelegate iMovingDelegate) {
        }

        public static void onWindowShow(@NotNull IMovingDelegate iMovingDelegate) {
        }
    }

    void afterDrag();

    void beforeDrag();

    void onConfigurationChanged();

    boolean onInterceptTouchEvent(@NotNull MotionEvent event);

    void onOrientationChanged();

    void onWindowDismiss();

    void onWindowLocationChanged();

    void onWindowShow();
}
