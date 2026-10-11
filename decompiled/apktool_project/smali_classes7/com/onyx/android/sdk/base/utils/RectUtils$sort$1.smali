.class public final Lcom/onyx/android/sdk/base/utils/RectUtils$sort$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/utils/RectUtils;->l(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/android/sdk/base/utils/RectUtils$sort$1",
        "Ljava/util/Comparator;",
        "Landroid/graphics/RectF;",
        "Lkotlin/Comparator;",
        "compare",
        "",
        "o1",
        "o2",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/RectF;Landroid/graphics/RectF;)I
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "o1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "o2"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    if-lez v1, :cond_0

    return v3

    :cond_0
    sub-float/2addr p0, v0

    cmpg-float p0, p0, v2

    const/4 v0, -0x1

    if-gez p0, :cond_1

    return v0

    .line 3
    :cond_1
    iget p0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float v4, p0, v1

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    return v3

    :cond_2
    sub-float/2addr p0, v1

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    return v0

    .line 4
    :cond_3
    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float v4, p0, v1

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    return v3

    :cond_4
    sub-float/2addr p0, v1

    cmpg-float p0, p0, v2

    if-gez p0, :cond_5

    return v0

    .line 5
    :cond_5
    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float p2, p0, p1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_6

    return v3

    :cond_6
    sub-float/2addr p0, p1

    cmpg-float p0, p0, v2

    if-gez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/RectF;

    check-cast p2, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/RectUtils$sort$1;->compare(Landroid/graphics/RectF;Landroid/graphics/RectF;)I

    move-result p0

    return p0
.end method
