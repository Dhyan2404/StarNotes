.class public final Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;
.super Lcom/onyx/android/sdk/note/common/command/Command;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformDirectlyCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformDirectlyCommand.kt\ncom/onyx/android/sdk/note/common/command/TransformDirectlyCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,69:1\n1855#2,2:70\n215#3,2:72\n*S KotlinDebug\n*F\n+ 1 TransformDirectlyCommand.kt\ncom/onyx/android/sdk/note/common/command/TransformDirectlyCommand\n*L\n54#1:70,2\n62#1:72,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\u0015B\u001b\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;",
        "Lcom/onyx/android/sdk/note/common/command/Command;",
        "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;",
        "args",
        "",
        "undo",
        "redo",
        "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;",
        "cloneArgs",
        "clone",
        "",
        "isUndo",
        "a",
        "b",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;",
        "Ljava/util/Map;",
        "shapeInfosMap",
        "<init>",
        "(Ljava/util/Map;)V",
        "Infos",
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
        "SMAP\nTransformDirectlyCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformDirectlyCommand.kt\ncom/onyx/android/sdk/note/common/command/TransformDirectlyCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,69:1\n1855#2,2:70\n215#3,2:72\n*S KotlinDebug\n*F\n+ 1 TransformDirectlyCommand.kt\ncom/onyx/android/sdk/note/common/command/TransformDirectlyCommand\n*L\n54#1:70,2\n62#1:72,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shapeInfosMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/command/Command;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(ZLcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 6

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getAddShapeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;

    invoke-virtual {p2, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionPageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->getMatrixPair()Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->getTextStylePair()Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v4

    :cond_0
    invoke-interface {v3, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->getMatrixPair()Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->getTextStylePair()Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v4

    :cond_2
    invoke-interface {v3, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    :goto_1
    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-virtual {p2, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionPageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v3}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;->b(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setTransformShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getAddShapeList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->getUpdateLinkList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeLink;->getLinkIdList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone(Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;)Lcom/onyx/android/sdk/note/common/command/Command;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloneArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->getOrCopyShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->clone()Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;->a(ZLcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

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

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;->a(ZLcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V

    return-void
.end method
