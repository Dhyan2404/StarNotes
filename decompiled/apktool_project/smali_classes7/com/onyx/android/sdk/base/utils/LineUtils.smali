.class public final Lcom/onyx/android/sdk/base/utils/LineUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J(\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0007J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0007J\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J\u0016\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/LineUtils;",
        "",
        "",
        "startX",
        "startY",
        "endX",
        "endY",
        "getHorizontalAngle",
        "dx",
        "dy",
        "",
        "isHorizontalLine",
        "isVerticalLine",
        "",
        "a",
        "I",
        "UNDERLINE_HORIZONTAL_ANGLE",
        "b",
        "UNDERLINE_VERTICAL_ANGLE",
        "c",
        "RIGHT_ANGLE",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/LineUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:I = 0x1e

.field public static final b:I = 0x1e

.field public static final c:I = 0x5a


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/utils/LineUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/LineUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/LineUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LineUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHorizontalAngle(FF)F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 90.0
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const/16 p2, 0xb4

    int-to-double v0, p2

    mul-double/2addr v0, p0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public final getHorizontalAngle(FFFF)F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 90.0
    .end annotation

    sub-float/2addr p3, p1

    sub-float/2addr p2, p4

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/onyx/android/sdk/base/utils/LineUtils;->getHorizontalAngle(FF)F

    move-result p0

    return p0
.end method

.method public final isHorizontalLine(FF)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/LineUtils;->getHorizontalAngle(FF)F

    move-result p0

    const/high16 p1, 0x41f00000    # 30.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVerticalLine(FF)Z
    .locals 1

    const/16 v0, 0x5a

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/LineUtils;->getHorizontalAngle(FF)F

    move-result p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x41f00000    # 30.0f

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
