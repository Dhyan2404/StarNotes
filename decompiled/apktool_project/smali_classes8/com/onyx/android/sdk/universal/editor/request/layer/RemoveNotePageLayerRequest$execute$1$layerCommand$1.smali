.class public final Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest$execute$1$layerCommand$1;
.super Lcom/onyx/android/sdk/note/common/command/LayerCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest$execute$1$layerCommand$1",
        "Lcom/onyx/android/sdk/note/common/command/LayerCommand;",
        "redo",
        "",
        "args",
        "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;",
        "undo",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/WorkBundle;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 0

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest$execute$1$layerCommand$1;->e:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/command/LayerCommand;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    return-void
.end method


# virtual methods
.method public redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest$execute$1$layerCommand$1;->e:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    new-instance p1, Lcom/onyx/android/sdk/note/common/event/LayerCommandAppliedEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/event/LayerCommandAppliedEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest$execute$1$layerCommand$1;->e:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    new-instance p1, Lcom/onyx/android/sdk/note/common/event/LayerCommandAppliedEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/event/LayerCommandAppliedEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/Object;)V

    return-void
.end method
