package com.onyx.android.sdk.extension;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.widget.EditText;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"hiddenInputIfNeeded", "", "Landroid/widget/EditText;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class EditTextKt {
    public static final void hiddenInputIfNeeded(@NotNull EditText editText, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        if (editText.hasFocus()) {
            int[] locationInWindow = com.onyx.android.sdk.base.extension.ViewKt.getLocationInWindow(editText);
            int i = locationInWindow[0];
            int i2 = locationInWindow[1];
            if (new Rect(i, i2, editText.getWidth() + i, editText.getHeight() + i2).contains((int) event.getX(), (int) event.getY())) {
                return;
            }
            editText.clearFocus();
            com.onyx.android.sdk.base.extension.ViewKt.hideInputKeyboard(editText);
        }
    }
}
