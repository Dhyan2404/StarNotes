.class public final Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;
.super Lcom/onyx/android/sdk/note/common/command/Command;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExcerptCollectionCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptCollectionCommand.kt\ncom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1549#2:74\n1620#2,3:75\n*S KotlinDebug\n*F\n+ 1 ExcerptCollectionCommand.kt\ncom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand\n*L\n47#1:74\n47#1:75,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0015\u001a\u00020\u0011\u0012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00160\r\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0018\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0002J\u0018\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0002R\u0017\u0010\u0015\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00160\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;",
        "Lcom/onyx/android/sdk/note/common/command/Command;",
        "",
        "removeExcerptCollectionModels",
        "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;",
        "args",
        "undo",
        "redo",
        "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;",
        "cloneArgs",
        "clone",
        "",
        "status",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "c",
        "a",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "getNoteBundle",
        "()Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "b",
        "Ljava/util/List;",
        "getShapes",
        "()Ljava/util/List;",
        "shapes",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V",
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
        "SMAP\nExcerptCollectionCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptCollectionCommand.kt\ncom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1549#2:74\n1620#2,3:75\n*S KotlinDebug\n*F\n+ 1 ExcerptCollectionCommand.kt\ncom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand\n*L\n47#1:74\n47#1:75,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/note/NoteBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/command/Command;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->c(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterExcerptShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->toShapeIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/note/extension/NoteBundleKt;->getExcerptCollectionProvider(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->loadExcerptCollectionByExcerptIds(Ljava/lang/String;Ljava/util/Collection;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterQuoteShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->toShapeIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/note/extension/NoteBundleKt;->getExcerptCollectionProvider(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->loadExcerptCollectionByQuoteIds(Ljava/lang/String;Ljava/util/Collection;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->getOrCopyShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V

    return-object p0
.end method

.method public final getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a:Lcom/onyx/android/sdk/note/NoteBundle;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->b:Ljava/util/List;

    return-object p0
.end method

.method public redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->d(Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-static {p0, v0, v1, v2}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->b(Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/extension/NoteBundleKt;->getExcerptCollectionProvider(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->removeExcerptCollectionModels(Ljava/util/List;)V

    return-void
.end method

.method public final removeExcerptCollectionModels()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    return-void
.end method

.method public undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->c(I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/ExcerptCollectionCommand;->a:Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/extension/NoteBundleKt;->getExcerptCollectionProvider(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->enableExcerptCollectionModels(Ljava/util/List;)V

    return-void
.end method
