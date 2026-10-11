.class public final Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
.super Lcom/onyx/android/sdk/note/common/command/Command;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUndoRedoCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UndoRedoCommand.kt\ncom/onyx/android/sdk/note/common/command/UndoRedoCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n1855#2,2:130\n1855#2,2:132\n1855#2,2:134\n1855#2,2:136\n1855#2,2:138\n1549#2:140\n1620#2,3:141\n1549#2:144\n1620#2,3:145\n*S KotlinDebug\n*F\n+ 1 UndoRedoCommand.kt\ncom/onyx/android/sdk/note/common/command/UndoRedoCommand\n*L\n80#1:128,2\n85#1:130,2\n91#1:132,2\n102#1:134,2\n108#1:136,2\n113#1:138,2\n123#1:140\n123#1:141,3\n124#1:144\n124#1:145,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u0016\u0010\u0005\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006J\u0016\u0010\u0008\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0010\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0002R\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001eR\u001a\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001eR(\u0010%\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u00060!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R$\u0010)\u001a\u00020\n2\u0006\u0010&\u001a\u00020\n8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "Lcom/onyx/android/sdk/note/common/command/Command;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "addShapes",
        "",
        "getAddedShapes",
        "removeShapes",
        "getRemovedShapes",
        "",
        "applyAllLayer",
        "setApplyAllLayer",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "removeShapeBean",
        "changedShapeBean",
        "addChangedShapeBean",
        "isEmpty",
        "toChangedShapeBean",
        "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;",
        "args",
        "",
        "undo",
        "redo",
        "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;",
        "cloneArgs",
        "clone",
        "b",
        "a",
        "",
        "Ljava/util/List;",
        "addedShapes",
        "removedShapes",
        "",
        "",
        "c",
        "Ljava/util/Map;",
        "removeShapeTagMap",
        "<set-?>",
        "d",
        "Z",
        "isApplyAllLayer",
        "()Z",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUndoRedoCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UndoRedoCommand.kt\ncom/onyx/android/sdk/note/common/command/UndoRedoCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n1855#2,2:130\n1855#2,2:132\n1855#2,2:134\n1855#2,2:136\n1855#2,2:138\n1549#2:140\n1620#2,3:141\n1549#2:144\n1620#2,3:145\n*S KotlinDebug\n*F\n+ 1 UndoRedoCommand.kt\ncom/onyx/android/sdk/note/common/command/UndoRedoCommand\n*L\n80#1:128,2\n85#1:130,2\n91#1:132,2\n102#1:134,2\n108#1:136,2\n113#1:138,2\n123#1:140\n123#1:141,3\n124#1:144\n124#1:145,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
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

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/command/Command;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getRemoveShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getAddShapeList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionReferenceShapePageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeTime()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionReferenceShapePageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getRemoveTagList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setRemoveShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    return-void
.end method

.method public final addChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "changedShapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getAddShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getRemoveShapeList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->removeShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-object p0
.end method

.method public final addShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getRemoveShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getAddShapeList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionReferenceShapePageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionReferenceShapePageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeTime()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v3, v4}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getEnableTagList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setRemoveShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    return-void
.end method

.method public clone(Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;)Lcom/onyx/android/sdk/note/common/command/Command;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloneArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->d:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->setApplyAllLayer(Z)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v4}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->getOrCopyShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->getOrCopyShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->removeShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-object v0
.end method

.method public final getAddedShapes()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getRemovedShapes()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b:Ljava/util/List;

    return-object p0
.end method

.method public final isApplyAllLayer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->d:Z

    return p0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->d:Z

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setApplyAllLayer(Z)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->a(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    return-void
.end method

.method public final removeShapes(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "removeShapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getRemoveShapeList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getShapeTagMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final removeShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p0
.end method

.method public final setApplyAllLayer(Z)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->d:Z

    return-object p0
.end method

.method public final toChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->a:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->setRemoveShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p0

    return-object p0
.end method

.method public undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->d:Z

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setApplyAllLayer(Z)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->b(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    return-void
.end method
