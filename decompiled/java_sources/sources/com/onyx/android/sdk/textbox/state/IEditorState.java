package com.onyx.android.sdk.textbox.state;

import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.geometry.data.TouchData;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/state/IEditorState;", "", "onExternalTouchEvent", "", "touchData", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "onInternalTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface IEditorState {
    boolean onExternalTouchEvent(@NotNull TouchData touchData);

    boolean onInternalTouchEvent(@NotNull MotionEvent event);
}
