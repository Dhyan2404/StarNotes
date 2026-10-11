.class public final Lcom/onyx/android/sdk/geometry/utils/RandomUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/utils/RandomUtils;",
        "",
        "()V",
        "randomPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "randomRectF",
        "Landroid/graphics/RectF;",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/utils/RandomUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/utils/RandomUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/utils/RandomUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/utils/RandomUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/RandomUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final randomPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v1

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x78

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final randomRectF()Landroid/graphics/RectF;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v0

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result p0

    add-float/2addr p0, v1

    invoke-direct {v2, v0, v1, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method
