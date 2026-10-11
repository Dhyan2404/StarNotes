.class public final Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteShapesRequest.kt\ncom/onyx/android/sdk/note/request/DeleteShapesRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,44:1\n215#2,2:45\n*S KotlinDebug\n*F\n+ 1 DeleteShapesRequest.kt\ncom/onyx/android/sdk/note/request/DeleteShapesRequest\n*L\n28#1:45,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0014R\u001d\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R$\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "",
        "msg",
        "getMsg",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "g",
        "Ljava/util/List;",
        "getShapes",
        "()Ljava/util/List;",
        "shapes",
        "",
        "h",
        "Z",
        "addToCmdStack",
        "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "i",
        "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "getCommand",
        "()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "setCommand",
        "(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V",
        "command",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;Z)V",
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
        "SMAP\nDeleteShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteShapesRequest.kt\ncom/onyx/android/sdk/note/request/DeleteShapesRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,44:1\n215#2,2:45\n*S KotlinDebug\n*F\n+ 1 DeleteShapesRequest.kt\ncom/onyx/android/sdk/note/request/DeleteShapesRequest\n*L\n28#1:45,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Z

.field public i:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->g:Ljava/util/List;

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->g:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->toPageShapeMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getOrNullNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v2, v6, v4, v5}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->removeShapeList$default(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;ZILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->merge(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getPostShapeChangedEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getRemoveShapeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/NoteBundle;->postRemoveShapeEvent(Ljava/util/List;)V

    :cond_2
    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->h:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->g:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->removeShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->i:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getCommandManager()Lcom/onyx/android/sdk/note/common/command/CommandManager;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->i:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    :cond_3
    return-void
.end method

.method public final getCommand()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->i:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-object p0
.end method

.method public getMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->getMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " delete shapes = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->g:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->g:Ljava/util/List;

    return-object p0
.end method

.method public final setCommand(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;->i:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-void
.end method
