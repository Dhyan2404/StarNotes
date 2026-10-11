package com.onyx.galaxy.note.editor.event;

import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/RenameColorSetModelEvent;", "", "colorSetModel", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class RenameColorSetModelEvent {
    public RenameColorSetModelEvent(@NotNull ColorSetModel colorSetModel) {
        Intrinsics.checkNotNullParameter(colorSetModel, "colorSetModel");
    }
}
