.class public final Lcom/onyx/android/sdk/base/lite/extension/RectFKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRectF.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectF.kt\ncom/onyx/android/sdk/base/lite/extension/RectFKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0002\u001a&\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\n\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\u000b\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\u000c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a8\u0006\r"
    }
    d2 = {
        "centerPoint",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/RectF;",
        "copy",
        "rotate",
        "",
        "degrees",
        "",
        "px",
        "py",
        "rotateSize",
        "rotated",
        "rotatedSize",
        "sdk-baselite_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRectF.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectF.kt\ncom/onyx/android/sdk/base/lite/extension/RectFKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"
    }
.end annotation


# direct methods
.method public static final centerPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static final copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public static final rotate(Landroid/graphics/RectF;FFF)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/MatrixKt;->rotationMatrix(FFF)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public static synthetic rotate$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotate(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public static final rotateSize(Landroid/graphics/RectF;FFF)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotate(Landroid/graphics/RectF;FFF)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static synthetic rotateSize$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotateSize(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public static final rotated(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotate(Landroid/graphics/RectF;FFF)V

    return-object p0
.end method

.method public static synthetic rotated$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotated(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static final rotatedSize(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotateSize(Landroid/graphics/RectF;FFF)V

    return-object p0
.end method

.method public static synthetic rotatedSize$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotatedSize(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
