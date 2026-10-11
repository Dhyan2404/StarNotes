package com.onyx.android.sdk.note.common.command;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00010\u0017¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\t\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0000J\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010\f\u001a\u0004\u0018\u00010\u0001J\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00102\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010\rJ\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\rJ\u0010\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0014H\u0016R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00010\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "Lcom/onyx/android/sdk/note/common/command/Command;", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "args", "", "undo", "redo", "cmd", "addCommand", "addCompositeCommand", "", "hasCommand", "revokeLastCommand", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "addShapesUndoRedoCommand", "getCommands", "getUndoRedoCommands", "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "cloneArgs", "clone", "", "a", "Ljava/util/List;", "commands", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCompositeCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositeCommand.kt\ncom/onyx/android/sdk/note/common/command/CompositeCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1855#2,2:70\n1855#2,2:72\n1603#2,9:74\n1855#2:83\n1856#2:85\n1612#2:86\n1855#2,2:87\n1#3:84\n*S KotlinDebug\n*F\n+ 1 CompositeCommand.kt\ncom/onyx/android/sdk/note/common/command/CompositeCommand\n*L\n16#1:70,2\n22#1:72,2\n59#1:74,9\n59#1:83\n59#1:85\n59#1:86\n64#1:87,2\n59#1:84\n*E\n"})
/* loaded from: classes8.dex */
public final class CompositeCommand extends Command {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<Command> commands;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeCommand() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void addCommand(@Nullable Command cmd) {
        CollectionKt.safeAdd(this.commands, cmd);
    }

    public final void addCompositeCommand(@Nullable CompositeCommand cmd) {
        boolean z = false;
        if (cmd != null && cmd.hasCommand()) {
            z = true;
        }
        if (z) {
            CollectionKt.safeAdd(this.commands, cmd);
        }
    }

    @Nullable
    public final UndoRedoCommand addShapesUndoRedoCommand(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        if (shapes.isEmpty()) {
            return null;
        }
        UndoRedoCommand addShapes = new UndoRedoCommand().addShapes(shapes);
        addCommand(addShapes);
        return addShapes;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.android.sdk.note.common.command.Command
    @NotNull
    public Command clone(@NotNull CommandCloneArgs cloneArgs) {
        Intrinsics.checkNotNullParameter(cloneArgs, "cloneArgs");
        CompositeCommand compositeCommand = new CompositeCommand(null, 1, 0 == true ? 1 : 0);
        Iterator<T> it2 = this.commands.iterator();
        while (it2.hasNext()) {
            compositeCommand.addCommand(((Command) it2.next()).clone(cloneArgs));
        }
        return compositeCommand;
    }

    @NotNull
    public final List<Command> getCommands() {
        return this.commands;
    }

    @NotNull
    public final List<UndoRedoCommand> getUndoRedoCommands() {
        List<Command> list = this.commands;
        ArrayList arrayList = new ArrayList();
        for (Command command : list) {
            UndoRedoCommand undoRedoCommand = command instanceof UndoRedoCommand ? (UndoRedoCommand) command : null;
            if (undoRedoCommand != null) {
                arrayList.add(undoRedoCommand);
            }
        }
        return arrayList;
    }

    public final boolean hasCommand() {
        return !this.commands.isEmpty();
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void redo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Iterator<T> it2 = this.commands.iterator();
        while (it2.hasNext()) {
            ((Command) it2.next()).redo(args);
        }
    }

    @Nullable
    public final Command revokeLastCommand() {
        Object removeLastOrNull;
        removeLastOrNull = CollectionsKt__MutableCollectionsKt.removeLastOrNull(this.commands);
        return (Command) removeLastOrNull;
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void undo(@NotNull UndoRedoArgs args) {
        List reversed;
        Intrinsics.checkNotNullParameter(args, "args");
        reversed = CollectionsKt___CollectionsKt.reversed(this.commands);
        Iterator it2 = reversed.iterator();
        while (it2.hasNext()) {
            ((Command) it2.next()).undo(args);
        }
    }

    public CompositeCommand(@NotNull List<Command> commands) {
        Intrinsics.checkNotNullParameter(commands, "commands");
        this.commands = commands;
    }

    public /* synthetic */ CompositeCommand(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : list);
    }
}
