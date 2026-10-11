.class public final Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Infos"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0016\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0006\u0010\u0002\u001a\u00020\u0000J\u0015\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u0019\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003H\u00c6\u0003J9\u0010\n\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00032\u0018\u0008\u0002\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003H\u00c6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\rH\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R#\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\'\u0010\t\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;",
        "",
        "clone",
        "Lkotlin/Pair;",
        "Landroid/graphics/Matrix;",
        "component1",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "component2",
        "matrixPair",
        "textStylePair",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Lkotlin/Pair;",
        "getMatrixPair",
        "()Lkotlin/Pair;",
        "b",
        "getTextStylePair",
        "<init>",
        "(Lkotlin/Pair;Lkotlin/Pair;)V",
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
.field public final a:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/Pair;Lkotlin/Pair;)V
    .locals 1
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Landroid/graphics/Matrix;",
            "+",
            "Landroid/graphics/Matrix;",
            ">;",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "matrixPair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStylePair"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;Lkotlin/Pair;Lkotlin/Pair;ILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->copy(Lkotlin/Pair;Lkotlin/Pair;)Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clone()Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;

    new-instance v1, Lkotlin/Pair;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v4

    :cond_1
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;-><init>(Lkotlin/Pair;Lkotlin/Pair;)V

    return-object v0
.end method

.method public final component1()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    return-object p0
.end method

.method public final component2()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    return-object p0
.end method

.method public final copy(Lkotlin/Pair;Lkotlin/Pair;)Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;
    .locals 0
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Landroid/graphics/Matrix;",
            "+",
            "Landroid/graphics/Matrix;",
            ">;",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "matrixPair"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "textStylePair"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;-><init>(Lkotlin/Pair;Lkotlin/Pair;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    iget-object v3, p1, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    iget-object p1, p1, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMatrixPair()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    return-object p0
.end method

.method public final getTextStylePair()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Infos(matrixPair="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->a:Lkotlin/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textStylePair="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;->b:Lkotlin/Pair;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
