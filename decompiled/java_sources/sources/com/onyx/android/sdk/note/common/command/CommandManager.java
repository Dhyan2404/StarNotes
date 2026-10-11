package com.onyx.android.sdk.note.common.command;

import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.event.AddCommandEvent;
import com.onyx.android.sdk.note.common.event.RedoCommandEvent;
import com.onyx.android.sdk.note.common.event.UndoCommandEvent;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00112\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020\n0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00020\n0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\"¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/CommandManager;", "", "", "canUndo", "canRedo", "", "undoCount", "redoCount", "", Constants.RESET, "Lcom/onyx/android/sdk/note/common/command/Command;", "command", "addCommand", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "args", "undo", "redo", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "undoRedoCommand", "addUndoRedoCommand", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "addShapesUndoRedoCommand", "Lorg/greenrobot/eventbus/EventBus;", "a", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "eventBus", "", "b", "Ljava/util/List;", "redoStack", "c", "undoStack", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CommandManager {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public EventBus eventBus;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<Command> redoStack = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<Command> undoStack = new ArrayList();

    public final void addCommand(@NotNull Command command) {
        Intrinsics.checkNotNullParameter(command, "command");
        this.undoStack.add(command);
        this.redoStack.clear();
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.post(new AddCommandEvent(undoCount(), redoCount()));
        }
    }

    @Nullable
    public final UndoRedoCommand addShapesUndoRedoCommand(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        if (shapes.isEmpty()) {
            return null;
        }
        UndoRedoCommand addShapes = new UndoRedoCommand().addShapes(shapes);
        addUndoRedoCommand(addShapes);
        return addShapes;
    }

    public final void addUndoRedoCommand(@NotNull UndoRedoCommand undoRedoCommand) {
        Intrinsics.checkNotNullParameter(undoRedoCommand, "undoRedoCommand");
        addCommand(undoRedoCommand);
    }

    public final boolean canRedo() {
        return this.redoStack.size() > 0;
    }

    public final boolean canUndo() {
        return this.undoStack.size() > 0;
    }

    @Nullable
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    public final boolean redo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!canRedo()) {
            return false;
        }
        List<Command> list = this.redoStack;
        Command remove = list.remove(list.size() - 1);
        remove.redo(args);
        this.undoStack.add(remove);
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.post(new RedoCommandEvent(undoCount(), redoCount()));
        }
        return true;
    }

    public final int redoCount() {
        return this.redoStack.size();
    }

    public final void reset() {
        this.undoStack.clear();
        this.redoStack.clear();
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.post(new UndoCommandEvent(undoCount(), redoCount()));
        }
    }

    public final void setEventBus(@Nullable EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public final boolean undo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!canUndo()) {
            return false;
        }
        List<Command> list = this.undoStack;
        Command remove = list.remove(list.size() - 1);
        remove.undo(args);
        this.redoStack.add(remove);
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.post(new UndoCommandEvent(undoCount(), redoCount()));
        }
        return true;
    }

    public final int undoCount() {
        return this.undoStack.size();
    }
}
