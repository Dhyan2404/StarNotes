.class public final Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;
.super Lcom/onyx/android/sdk/note/common/command/Command;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeLayerCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeLayerCommand.kt\ncom/onyx/android/sdk/note/common/command/ShapeLayerCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n1855#2,2:45\n1855#2,2:47\n1549#2:49\n1620#2,3:50\n*S KotlinDebug\n*F\n+ 1 ShapeLayerCommand.kt\ncom/onyx/android/sdk/note/common/command/ShapeLayerCommand\n*L\n20#1:45,2\n31#1:47,2\n42#1:49\n42#1:50,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B%\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0007H\u0016R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;",
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
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "a",
        "Ljava/util/List;",
        "shapes",
        "",
        "b",
        "I",
        "srcLayer",
        "c",
        "dstLayer",
        "<init>",
        "(Ljava/util/List;II)V",
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
        "SMAP\nShapeLayerCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeLayerCommand.kt\ncom/onyx/android/sdk/note/common/command/ShapeLayerCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n1855#2,2:45\n1855#2,2:47\n1549#2:49\n1620#2,3:50\n*S KotlinDebug\n*F\n+ 1 ShapeLayerCommand.kt\ncom/onyx/android/sdk/note/common/command/ShapeLayerCommand\n*L\n20#1:45,2\n31#1:47,2\n42#1:49\n42#1:50,3\n*E\n"
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

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
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
            ">;II)V"
        }
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/command/Command;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->a:Ljava/util/List;

    iput p2, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->b:I

    iput p3, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->c:I

    return-void
.end method


# virtual methods
.method public clone(Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;)Lcom/onyx/android/sdk/note/common/command/Command;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloneArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;->getOrCopyShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->b:I

    iget p0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->c:I

    new-instance v0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;

    invoke-direct {v0, v1, p1, p0}, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public redo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget v2, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->c:I

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setLayerId(I)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionPageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->b:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addLayerId(I)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    iget v0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->c:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addLayerId(I)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->a:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    return-void
.end method

.method public undo(Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget v2, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->b:I

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setLayerId(I)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->unionPageChangeRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addChangedShape(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->b:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addLayerId(I)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    iget v0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->c:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->addLayerId(I)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;->a:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;

    return-void
.end method
