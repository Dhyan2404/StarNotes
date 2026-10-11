.class public final Lcom/onyx/android/sdk/geometry/extension/TouchPointListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/extension/TouchPointListKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "mirrorAllPoints",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "type",
        "Lcom/onyx/android/sdk/geometry/data/MirrorType;",
        "translateDistance",
        "",
        "sdk-geometry_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final mirrorAllPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/geometry/data/MirrorType;F)V
    .locals 6
    .param p0    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MirrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/geometry/extension/TouchPointListKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-array p2, v4, [F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, p2, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    aput v1, p2, v5

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, p2, v2

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    aget p2, p2, v5

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    goto :goto_1

    :cond_2
    return-void
.end method
