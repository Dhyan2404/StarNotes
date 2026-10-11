.class public final Lcom/onyx/android/sdk/note/common/command/CommandManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008&\u0010\'J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00112\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\n0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\n0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/command/CommandManager;",
        "",
        "",
        "canUndo",
        "canRedo",
        "",
        "undoCount",
        "redoCount",
        "",
        "reset",
        "Lcom/onyx/android/sdk/note/common/command/Command;",
        "command",
        "addCommand",
        "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;",
        "args",
        "undo",
        "redo",
        "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "undoRedoCommand",
        "addUndoRedoCommand",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "addShapesUndoRedoCommand",
        "Lorg/greenrobot/eventbus/EventBus;",
        "a",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "setEventBus",
        "(Lorg/greenrobot/eventbus/EventBus;)V",
        "eventBus",
        "",
        "b",
        "Ljava/util/List;",
        "redoStack",
        "c",
        "undoStack",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/command/Command;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/command/Command;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/command/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->a:Lorg/greenrobot/eventbus/EventBus;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/note/common/event/AddCommandEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->undoCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->redoCount()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/event/AddCommandEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addShapesUndoRedoCommand(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addUndoRedoCommand(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V

    return-object p1
.end method

.method public final addUndoRedoCommand(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "undoRedoCommand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    return-void
.end method

.method public final canRedo()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final canUndo()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->a:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->canRedo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/command/Command;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/command/Command;->redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->a:Lorg/greenrobot/eventbus/EventBus;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/note/common/event/RedoCommandEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->undoCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->redoCount()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/event/RedoCommandEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method public final redoCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final reset()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->a:Lorg/greenrobot/eventbus/EventBus;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/note/common/event/UndoCommandEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->undoCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->redoCount()I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcom/onyx/android/sdk/note/common/event/UndoCommandEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setEventBus(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->a:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public final undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/command/Command;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/command/Command;->undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->a:Lorg/greenrobot/eventbus/EventBus;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/note/common/event/UndoCommandEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->undoCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->redoCount()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/event/UndoCommandEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method public final undoCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/CommandManager;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
