.class public Lcom/onyx/android/sdk/note/common/command/LayerCommand;
.super Lcom/onyx/android/sdk/note/common/command/Command;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayerCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerCommand.kt\ncom/onyx/android/sdk/note/common/command/LayerCommand\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0017R\u0016\u0010\u0008\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/command/LayerCommand;",
        "Lcom/onyx/android/sdk/note/common/command/Command;",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "addLayer",
        "setAddLayer",
        "removeLayer",
        "setRemoveLayer",
        "",
        "layerIndex",
        "setLayerIndex",
        "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;",
        "args",
        "",
        "undo",
        "redo",
        "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;",
        "cloneArgs",
        "clone",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "pageInfo",
        "b",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "c",
        "d",
        "I",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLayerCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerCommand.kt\ncom/onyx/android/sdk/note/common/command/LayerCommand\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/command/Command;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->a:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-void
.end method


# virtual methods
.method public clone(Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;)Lcom/onyx/android/sdk/note/common/command/Command;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloneArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/command/LayerCommand$clone$layerCommand$1;

    invoke-direct {v1, v0, p1}, Lcom/onyx/android/sdk/note/common/command/LayerCommand$clone$layerCommand$1;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;)V

    iget p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->d:I

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->setLayerIndex(I)Lcom/onyx/android/sdk/note/common/command/LayerCommand;

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->b:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->clone()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->setAddLayer(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Lcom/onyx/android/sdk/note/common/command/LayerCommand;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->c:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->clone()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->setRemoveLayer(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Lcom/onyx/android/sdk/note/common/command/LayerCommand;

    return-object v1
.end method

.method public redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->b:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->a:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    iget v2, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->d:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->insertLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;ILcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->c:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->a:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->removeLayerById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)V

    :cond_1
    return-void
.end method

.method public final setAddLayer(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Lcom/onyx/android/sdk/note/common/command/LayerCommand;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->b:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    return-object p0
.end method

.method public final setLayerIndex(I)Lcom/onyx/android/sdk/note/common/command/LayerCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->d:I

    return-object p0
.end method

.method public final setRemoveLayer(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Lcom/onyx/android/sdk/note/common/command/LayerCommand;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->c:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    return-object p0
.end method

.method public undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->b:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->a:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->removeLayerById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->c:Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->a:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    iget p0, p0, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->d:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->insertLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;ILcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    :cond_1
    return-void
.end method
