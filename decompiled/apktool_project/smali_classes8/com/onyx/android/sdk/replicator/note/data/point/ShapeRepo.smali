.class public final Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u0019\u001a\u00020\u00002\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;",
        "",
        "()V",
        "attrA",
        "",
        "attrB",
        "length",
        "",
        "offset",
        "shapeUniqueId",
        "",
        "tinyPointList",
        "",
        "Lcom/onyx/android/sdk/base/data/TinyPoint;",
        "getAttrA",
        "getAttrB",
        "getLength",
        "getOffset",
        "getShapeUniqueId",
        "getTinyPointList",
        "setAttrA",
        "setAttrB",
        "setLength",
        "setOffset",
        "setShapeUniqueId",
        "setTinyPointList",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private attrA:S

.field private attrB:S

.field private length:I

.field private offset:I

.field private shapeUniqueId:Ljava/lang/String;

.field private tinyPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TinyPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAttrA()S
    .locals 0

    iget-short p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->attrA:S

    return p0
.end method

.method public final getAttrB()S
    .locals 0

    iget-short p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->attrB:S

    return p0
.end method

.method public final getLength()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->length:I

    return p0
.end method

.method public final getOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->offset:I

    return p0
.end method

.method public final getShapeUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->shapeUniqueId:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "shapeUniqueId"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getTinyPointList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TinyPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->tinyPointList:Ljava/util/List;

    return-object p0
.end method

.method public final setAttrA(S)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-short p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->attrA:S

    return-object p0
.end method

.method public final setAttrB(S)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-short p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->attrB:S

    return-object p0
.end method

.method public final setLength(I)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->length:I

    return-object p0
.end method

.method public final setOffset(I)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->offset:I

    return-object p0
.end method

.method public final setShapeUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeUniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->shapeUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final setTinyPointList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TinyPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->tinyPointList:Ljava/util/List;

    return-object p0
.end method
