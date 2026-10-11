.class public final Lcom/onyx/android/sdk/note/common/utils/PathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathUtils.kt\ncom/onyx/android/sdk/note/common/utils/PathUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1855#2,2:72\n*S KotlinDebug\n*F\n+ 1 PathUtils.kt\ncom/onyx/android/sdk/note/common/utils/PathUtils\n*L\n40#1:72,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004R\u001a\u0010\u0010\u001a\u00020\u000b8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/PathUtils;",
        "",
        "Landroid/graphics/Path;",
        "path",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "",
        "drawRect",
        "rectPointList",
        "rectToPathPointList",
        "expandPathByTouchList",
        "",
        "a",
        "I",
        "getRECT_TO_PAHT_POINT_STEP",
        "()I",
        "RECT_TO_PAHT_POINT_STEP",
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
        "SMAP\nPathUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathUtils.kt\ncom/onyx/android/sdk/note/common/utils/PathUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1855#2,2:72\n*S KotlinDebug\n*F\n+ 1 PathUtils.kt\ncom/onyx/android/sdk/note/common/utils/PathUtils\n*L\n40#1:72,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PathUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/PathUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/PathUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/PathUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PathUtils;

    const/16 v0, 0xa

    sput v0, Lcom/onyx/android/sdk/note/common/utils/PathUtils;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final drawRect(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PointUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->toRectTouchPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final expandPathByTouchList(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPointList;)V
    .locals 8
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x2

    new-array v0, p2, [F

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    aget v4, v0, v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    int-to-float v5, p2

    div-float/2addr v4, v5

    aget v6, v0, v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    invoke-virtual {p1, v4, v6, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    aput v4, v0, v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    aput v1, v0, v2

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final getRECT_TO_PAHT_POINT_STEP()I
    .locals 0

    sget p0, Lcom/onyx/android/sdk/note/common/utils/PathUtils;->a:I

    return p0
.end method

.method public final rectToPathPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "rectPointList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    sget v1, Lcom/onyx/android/sdk/note/common/utils/PathUtils;->a:I

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->parseTouchPointsFromPath(Landroid/graphics/Path;I)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Ljava/util/List;)V

    return-object p1
.end method
