.class public final Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddShapesBackgroundRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesBackgroundRequest.kt\ncom/onyx/android/sdk/note/request/AddShapesBackgroundRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1549#2:102\n1620#2,3:103\n1855#2,2:106\n*S KotlinDebug\n*F\n+ 1 AddShapesBackgroundRequest.kt\ncom/onyx/android/sdk/note/request/AddShapesBackgroundRequest\n*L\n89#1:102\n89#1:103,3\n92#1:106,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000eR\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001f\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010#\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u0014\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010\u001eR$\u0010+\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "",
        "i",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "h",
        "g",
        "f",
        "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;",
        "Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;",
        "addShapesArgs",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Ljava/util/List;",
        "shapes",
        "Z",
        "addToCmdStack",
        "",
        "j",
        "Ljava/lang/String;",
        "pageUniqueId",
        "k",
        "getHasBottomUnderContentShape",
        "()Z",
        "setHasBottomUnderContentShape",
        "(Z)V",
        "hasBottomUnderContentShape",
        "l",
        "getForceRenderNoteDirtyRectToDisplay",
        "setForceRenderNoteDirtyRectToDisplay",
        "forceRenderNoteDirtyRectToDisplay",
        "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "m",
        "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "getUndoRedoCommand",
        "()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "setUndoRedoCommand",
        "(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V",
        "undoRedoCommand",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;)V",
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
        "SMAP\nAddShapesBackgroundRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesBackgroundRequest.kt\ncom/onyx/android/sdk/note/request/AddShapesBackgroundRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1549#2:102\n1620#2,3:103\n1855#2,2:106\n*S KotlinDebug\n*F\n+ 1 AddShapesBackgroundRequest.kt\ncom/onyx/android/sdk/note/request/AddShapesBackgroundRequest\n*L\n89#1:102\n89#1:103,3\n92#1:106,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
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

.field public final i:Z

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public m:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addShapesArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->getShapes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->getAddToCmdStack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->i:Z

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->getPageUniqueId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getPageByUniqueId(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->getSetZOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1, v4}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->setShapeZOrder(Ljava/util/Collection;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->updateShapesTimes(Ljava/util/Collection;)V

    sget-object v3, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->addShapeList$default(Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/Collection;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getPostShapeChangedEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getCommandManager()Lcom/onyx/android/sdk/note/common/command/CommandManager;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addShapesUndoRedoCommand(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->m:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    :cond_3
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 5

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v4, v0, :cond_2

    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->l:Z

    :cond_3
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest$checkBottomLayerUnderContentShape$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest$checkBottomLayerUnderContentShape$1;-><init>(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->k:Z

    return-void
.end method

.method public final getForceRenderNoteDirtyRectToDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->l:Z

    return p0
.end method

.method public final getHasBottomUnderContentShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->k:Z

    return p0
.end method

.method public final getUndoRedoCommand()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->m:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    sget-object v1, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest$intersectsTapeShape$allTapeShape$1;->INSTANCE:Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest$intersectsTapeShape$allTapeShape$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containsAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->getTapeShapes(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->l:Z

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->i:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->h:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    sget-object v0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest$shouldAddToRedoList$1;->INSTANCE:Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest$shouldAddToRedoList$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containsAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setForceRenderNoteDirtyRectToDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->l:Z

    return-void
.end method

.method public final setHasBottomUnderContentShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->k:Z

    return-void
.end method

.method public final setUndoRedoCommand(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/AddShapesBackgroundRequest;->m:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-void
.end method
