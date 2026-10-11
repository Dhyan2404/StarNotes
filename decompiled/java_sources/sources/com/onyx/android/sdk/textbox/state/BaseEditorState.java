package com.onyx.android.sdk.textbox.state;

import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.geometry.data.TouchData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/state/BaseEditorState;", "Lcom/onyx/android/sdk/textbox/state/IEditorState;", "()V", "onExternalTouchEvent", "", "touchData", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "onInternalTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class BaseEditorState implements IEditorState {
    @Override // com.onyx.android.sdk.textbox.state.IEditorState
    public boolean onExternalTouchEvent(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        return false;
    }

    @Override // com.onyx.android.sdk.textbox.state.IEditorState
    public boolean onInternalTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return false;
    }
}
