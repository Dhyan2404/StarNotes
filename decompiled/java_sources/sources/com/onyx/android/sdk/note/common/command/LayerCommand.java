package com.onyx.android.sdk.note.common.command;

import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.event.LayerCommandAppliedEvent;
import com.onyx.android.sdk.note.common.utils.NotePageInfoUtils;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/LayerCommand;", "Lcom/onyx/android/sdk/note/common/command/Command;", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "addLayer", "setAddLayer", "removeLayer", "setRemoveLayer", "", "layerIndex", "setLayerIndex", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "args", "", "undo", "redo", "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "cloneArgs", "clone", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "a", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "pageInfo", "b", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "c", "d", "I", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLayerCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerCommand.kt\ncom/onyx/android/sdk/note/common/command/LayerCommand\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"})
/* loaded from: classes8.dex */
public class LayerCommand extends Command {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final PageInfo pageInfo;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public LayerInfo addLayer;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public LayerInfo removeLayer;

    /* renamed from: d, reason: from kotlin metadata */
    public int layerIndex;

    public LayerCommand(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        this.pageInfo = pageInfo;
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    @NotNull
    public Command clone(@NotNull final CommandCloneArgs cloneArgs) {
        Intrinsics.checkNotNullParameter(cloneArgs, "cloneArgs");
        final PageInfo pageInfo = cloneArgs.getNoteBundle().getNoteDoc().ensureGlobalNotePage().getPageInfo();
        LayerCommand layerCommand = new LayerCommand(pageInfo) { // from class: com.onyx.android.sdk.note.common.command.LayerCommand$clone$layerCommand$1
            @Override // com.onyx.android.sdk.note.common.command.LayerCommand, com.onyx.android.sdk.note.common.command.Command
            public void redo(@NotNull UndoRedoArgs args) {
                Intrinsics.checkNotNullParameter(args, "args");
                super.redo(args);
                cloneArgs.getNoteBundle().postEvent(new LayerCommandAppliedEvent());
            }

            @Override // com.onyx.android.sdk.note.common.command.LayerCommand, com.onyx.android.sdk.note.common.command.Command
            public void undo(@NotNull UndoRedoArgs args) {
                Intrinsics.checkNotNullParameter(args, "args");
                super.undo(args);
                cloneArgs.getNoteBundle().postEvent(new LayerCommandAppliedEvent());
            }
        };
        layerCommand.setLayerIndex(this.layerIndex);
        LayerInfo layerInfo = this.addLayer;
        layerCommand.setAddLayer(layerInfo != null ? layerInfo.m72356clone() : null);
        LayerInfo layerInfo2 = this.removeLayer;
        layerCommand.setRemoveLayer(layerInfo2 != null ? layerInfo2.m72356clone() : null);
        return layerCommand;
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void redo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        LayerInfo layerInfo = this.addLayer;
        if (layerInfo != null) {
            NotePageInfoUtils.INSTANCE.insertLayer(this.pageInfo, this.layerIndex, layerInfo);
        }
        LayerInfo layerInfo2 = this.removeLayer;
        if (layerInfo2 != null) {
            NotePageInfoUtils.INSTANCE.removeLayerById(this.pageInfo, layerInfo2.getId());
        }
    }

    @NotNull
    public final LayerCommand setAddLayer(@Nullable LayerInfo addLayer) {
        this.addLayer = addLayer;
        return this;
    }

    @NotNull
    public final LayerCommand setLayerIndex(int layerIndex) {
        this.layerIndex = layerIndex;
        return this;
    }

    @NotNull
    public final LayerCommand setRemoveLayer(@Nullable LayerInfo removeLayer) {
        this.removeLayer = removeLayer;
        return this;
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void undo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        LayerInfo layerInfo = this.addLayer;
        if (layerInfo != null) {
            NotePageInfoUtils.INSTANCE.removeLayerById(this.pageInfo, layerInfo.getId());
        }
        LayerInfo layerInfo2 = this.removeLayer;
        if (layerInfo2 != null) {
            NotePageInfoUtils.INSTANCE.insertLayer(this.pageInfo, this.layerIndex, layerInfo2);
        }
    }
}
