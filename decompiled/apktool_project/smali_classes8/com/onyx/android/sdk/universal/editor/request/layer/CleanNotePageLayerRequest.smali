.class public final Lcom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCleanNotePageLayerRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n766#2:63\n857#2,2:64\n1855#2:66\n766#2:67\n857#2,2:68\n766#2:70\n857#2,2:71\n1856#2:73\n1#3:74\n*S KotlinDebug\n*F\n+ 1 CleanNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest\n*L\n35#1:63\n35#1:64,2\n36#1:66\n38#1:67\n38#1:68,2\n46#1:70\n46#1:71,2\n36#1:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "",
        "",
        "f",
        "Ljava/util/List;",
        "layerIds",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;)V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nCleanNotePageLayerRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n766#2:63\n857#2,2:64\n1855#2:66\n766#2:67\n857#2,2:68\n766#2:70\n857#2,2:71\n1856#2:73\n1#3:74\n*S KotlinDebug\n*F\n+ 1 CleanNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest\n*L\n35#1:63\n35#1:64,2\n36#1:66\n38#1:67\n38#1:68,2\n46#1:70\n46#1:71,2\n36#1:73\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
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
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->loadValidShapeNotePageIds(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v10, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/CleanNotePageLayerRequest;->f:Ljava/util/List;

    invoke-interface {v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-static {v5, v7, v6, v3, v4}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->removeShapeList$default(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;ZILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->merge(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    sget-object v3, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->savePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z

    new-instance v3, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v3}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    invoke-virtual {v3, v7}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->removeShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v9, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v9, v8}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isQuoteShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9, v8}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isExcerptShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    move v7, v6

    :cond_8
    :goto_4
    if-eqz v7, :cond_6

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v7

    if-eqz v4, :cond_2

    new-instance v4, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->removeExcerptCollectionModels()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/NoteBundle;->postShapeChangedEvent(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    move-object v0, v4

    :goto_5
    if-eqz v0, :cond_c

    new-instance p0, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getCommandManager()Lcom/onyx/android/sdk/note/common/command/CommandManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/note/common/event/CommandEvent;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/event/CommandEvent;-><init>(Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/NoteBundle;->postEvent(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method
