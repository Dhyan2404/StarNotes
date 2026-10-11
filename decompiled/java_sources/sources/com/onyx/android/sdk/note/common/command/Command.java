package com.onyx.android.sdk.note.common.command;

import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/Command;", "", "()V", "clone", "cloneArgs", "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "redo", "", "args", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "undo", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class Command {
    @NotNull
    public abstract Command clone(@NotNull CommandCloneArgs cloneArgs);

    public abstract void redo(@NotNull UndoRedoArgs args);

    public abstract void undo(@NotNull UndoRedoArgs args);
}
