.class public final Lcom/onyx/android/sdk/geometry/utils/LineSegmentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JF\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006JH\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/utils/LineSegmentUtils;",
        "",
        "()V",
        "intersect",
        "",
        "x1",
        "",
        "y1",
        "x2",
        "y2",
        "x3",
        "y3",
        "x4",
        "y4",
        "intersectPoint",
        "Landroid/graphics/PointF;",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/utils/LineSegmentUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/utils/LineSegmentUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/utils/LineSegmentUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/utils/LineSegmentUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/LineSegmentUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intersect(FFFFFFFF)Z
    .locals 4

    cmpg-float p0, p1, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_2

    cmpg-float p0, p2, p4

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez p0, :cond_5

    :cond_2
    cmpg-float p0, p5, p7

    if-nez p0, :cond_3

    move p0, v0

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    if-eqz p0, :cond_6

    cmpg-float p0, p6, p8

    if-nez p0, :cond_4

    move p0, v0

    goto :goto_3

    :cond_4
    move p0, v1

    :goto_3
    if-eqz p0, :cond_6

    :cond_5
    return v1

    :cond_6
    sub-float/2addr p8, p6

    sub-float/2addr p3, p1

    mul-float p0, p8, p3

    sub-float/2addr p7, p5

    sub-float/2addr p4, p2

    mul-float v2, p7, p4

    sub-float/2addr p0, v2

    const/4 v2, 0x0

    cmpg-float v3, p0, v2

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    if-eqz v3, :cond_8

    return v1

    :cond_8
    sub-float/2addr p2, p6

    mul-float/2addr p7, p2

    sub-float/2addr p1, p5

    mul-float/2addr p8, p1

    sub-float/2addr p7, p8

    div-float/2addr p7, p0

    mul-float/2addr p3, p2

    mul-float/2addr p4, p1

    sub-float/2addr p3, p4

    div-float/2addr p3, p0

    cmpg-float p0, p7, v2

    if-ltz p0, :cond_a

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p1, p7, p0

    if-gtz p1, :cond_a

    cmpg-float p1, p3, v2

    if-ltz p1, :cond_a

    cmpl-float p0, p3, p0

    if-lez p0, :cond_9

    goto :goto_5

    :cond_9
    return v0

    :cond_a
    :goto_5
    return v1
.end method

.method public final intersectPoint(FFFFFFFF)Landroid/graphics/PointF;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    cmpg-float p0, p1, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    cmpg-float p0, p2, p4

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez p0, :cond_5

    :cond_2
    cmpg-float p0, p5, p7

    if-nez p0, :cond_3

    move p0, v0

    goto :goto_2

    :cond_3
    move p0, v1

    :goto_2
    if-eqz p0, :cond_6

    cmpg-float p0, p6, p8

    if-nez p0, :cond_4

    move p0, v0

    goto :goto_3

    :cond_4
    move p0, v1

    :goto_3
    if-eqz p0, :cond_6

    :cond_5
    return-object v2

    :cond_6
    sub-float/2addr p8, p6

    sub-float/2addr p3, p1

    mul-float p0, p8, p3

    sub-float/2addr p7, p5

    sub-float/2addr p4, p2

    mul-float v3, p7, p4

    sub-float/2addr p0, v3

    const/4 v3, 0x0

    cmpg-float v4, p0, v3

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    if-eqz v0, :cond_8

    return-object v2

    :cond_8
    sub-float p6, p2, p6

    mul-float/2addr p7, p6

    sub-float p5, p1, p5

    mul-float/2addr p8, p5

    sub-float/2addr p7, p8

    div-float/2addr p7, p0

    mul-float/2addr p6, p3

    mul-float/2addr p5, p4

    sub-float/2addr p6, p5

    div-float/2addr p6, p0

    cmpg-float p0, p7, v3

    if-ltz p0, :cond_a

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p5, p7, p0

    if-gtz p5, :cond_a

    cmpg-float p5, p6, v3

    if-ltz p5, :cond_a

    cmpl-float p0, p6, p0

    if-lez p0, :cond_9

    goto :goto_5

    :cond_9
    mul-float/2addr p3, p7

    add-float/2addr p1, p3

    mul-float/2addr p7, p4

    add-float/2addr p2, p7

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_a
    :goto_5
    return-object v2
.end method
