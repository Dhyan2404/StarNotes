package com.onyx.android.sdk.universal.editor.gesture;

import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;", "", "processMotionEvent", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "processPenArgs", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "args", "touchData", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "processTouchData", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface TouchEventTransformer {
    @NotNull
    MotionEvent processMotionEvent(@NotNull MotionEvent event);

    @NotNull
    NoteDrawingArgs processPenArgs(@NotNull NoteDrawingArgs args, @NotNull TouchData touchData);

    @NotNull
    TouchData processTouchData(@NotNull MotionEvent event, @NotNull TouchData touchData);
}
