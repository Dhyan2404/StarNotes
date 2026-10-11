package com.onyx.android.sdk.note.request;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.CommandManager;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0014R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R$\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", NotificationCompat.CATEGORY_MESSAGE, "getMsg", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6998g.f39679a, "Ljava/util/List;", "getShapes", "()Ljava/util/List;", "shapes", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "addToCmdStack", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "i", "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "getCommand", "()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;", "setCommand", "(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V", "command", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;Z)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteShapesRequest.kt\ncom/onyx/android/sdk/note/request/DeleteShapesRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,44:1\n215#2,2:45\n*S KotlinDebug\n*F\n+ 1 DeleteShapesRequest.kt\ncom/onyx/android/sdk/note/request/DeleteShapesRequest\n*L\n28#1:45,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DeleteShapesRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean addToCmdStack;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public UndoRedoCommand command;

    public /* synthetic */ DeleteShapesRequest(NoteBundle noteBundle, List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(noteBundle, list, (i & 4) != 0 ? false : z);
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        for (Map.Entry<String, List<Shape>> entry : ShapeTypes.INSTANCE.toPageShapeMap(this.shapes).entrySet()) {
            NotePage orNullNotePage = NoteDocNotePage.INSTANCE.getOrNullNotePage(noteBundle.getNoteDoc(), entry.getKey());
            if (orNullNotePage != null) {
                changedShapeBean.merge(NotePage.removeShapeList$default(orNullNotePage, entry.getValue(), false, 2, null));
            }
        }
        if (getPostShapeChangedEvent()) {
            noteBundle.postRemoveShapeEvent(changedShapeBean.getRemoveShapeList());
        }
        if (this.addToCmdStack) {
            this.command = new UndoRedoCommand().removeShapes(this.shapes);
            CommandManager commandManager = noteBundle.getCommandManager();
            UndoRedoCommand undoRedoCommand = this.command;
            Intrinsics.checkNotNull(undoRedoCommand);
            commandManager.addCommand(undoRedoCommand);
        }
    }

    @Nullable
    public final UndoRedoCommand getCommand() {
        return this.command;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest
    @NotNull
    public String getMsg(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return super.getMsg(msg) + " delete shapes = " + CollectionKt.getSize(this.shapes);
    }

    @NotNull
    public final List<Shape> getShapes() {
        return this.shapes;
    }

    public final void setCommand(@Nullable UndoRedoCommand undoRedoCommand) {
        this.command = undoRedoCommand;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DeleteShapesRequest(@NotNull NoteBundle noteBundle, @NotNull List<? extends Shape> shapes, boolean z) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
        this.addToCmdStack = z;
    }
}
