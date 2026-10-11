.class public final Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveNotePageLayerRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n1855#2:95\n350#2,7:96\n1856#2:103\n766#2:104\n857#2,2:105\n1855#2:107\n766#2:108\n857#2,2:109\n766#2:111\n857#2,2:112\n1856#2:114\n*S KotlinDebug\n*F\n+ 1 RemoveNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest\n*L\n44#1:95\n45#1:96,7\n44#1:103\n68#1:104\n68#1:105,2\n69#1:107\n73#1:108\n73#1:109,2\n81#1:111\n81#1:112,2\n69#1:114\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;",
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
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "g",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "getChangedShapeBean",
        "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "changedShapeBean",
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
        "SMAP\nRemoveNotePageLayerRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n1855#2:95\n350#2,7:96\n1856#2:103\n766#2:104\n857#2,2:105\n1855#2:107\n766#2:108\n857#2,2:109\n766#2:111\n857#2,2:112\n1856#2:114\n*S KotlinDebug\n*F\n+ 1 RemoveNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest\n*L\n44#1:95\n45#1:96,7\n44#1:103\n68#1:104\n68#1:105,2\n69#1:107\n73#1:108\n73#1:109,2\n81#1:111\n81#1:112,2\n69#1:114\n*E\n"
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

.field public final g:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
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

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->f:Ljava/util/List;

    new-instance p1, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->g:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->f:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v9

    if-ne v4, v9, :cond_0

    move v9, v5

    goto :goto_2

    :cond_0
    move v9, v6

    :goto_2
    if-eqz v9, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    :goto_3
    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    invoke-virtual {v4, v1, v8}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v4

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest$execute$1$layerCommand$1;

    invoke-direct {v5, v1, p1}, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest$execute$1$layerCommand$1;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-virtual {v5, v8}, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->setLayerIndex(I)Lcom/onyx/android/sdk/note/common/command/LayerCommand;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/note/common/command/LayerCommand;->setRemoveLayer(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Lcom/onyx/android/sdk/note/common/command/LayerCommand;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->f:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->removeLayers(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNotePageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->updatePageInfoLayers(Ljava/util/List;I)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->loadValidShapeNotePageIds(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->ensureNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v4

    iget-object v7, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->f:Ljava/util/List;

    invoke-virtual {v4, v7}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->removeLayers(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getLayerIndex()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v10, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->f:Ljava/util/List;

    invoke-interface {v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->g:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v3, v7, v6, v8, v9}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->removeShapeList$default(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;ZILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->merge(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    sget-object v4, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->savePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z

    new-instance v3, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v3}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    invoke-virtual {v3, v7}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->removeShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v9, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v9, v8}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isQuoteShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v9, v8}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isExcerptShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_8

    :cond_b
    move v8, v6

    goto :goto_9

    :cond_c
    :goto_8
    move v8, v5

    :goto_9
    if-eqz v8, :cond_a

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_6

    new-instance v4, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v7

    invoke-direct {v4, v7, v3}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->removeExcerptCollectionModels()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_e
    new-instance v0, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-direct {v0, v2}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getCommandManager()Lcom/onyx/android/sdk/note/common/command/CommandManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->g:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/NoteBundle;->postShapeChangedEvent(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/note/common/event/CommandEvent;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/note/common/event/CommandEvent;-><init>(Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/NoteBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/PageLayerRemovedEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->f:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/PageLayerRemovedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/NoteBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/layer/RemoveNotePageLayerRequest;->g:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-object p0
.end method
