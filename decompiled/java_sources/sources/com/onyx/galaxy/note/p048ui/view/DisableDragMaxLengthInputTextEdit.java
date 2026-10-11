package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.DragEvent;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/DisableDragMaxLengthInputTextEdit;", "Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "onDragEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/DragEvent;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class DisableDragMaxLengthInputTextEdit extends MaxLengthInputTextEdit {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DisableDragMaxLengthInputTextEdit(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public boolean onDragEvent(@Nullable DragEvent event) {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisableDragMaxLengthInputTextEdit(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
