.class public final Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;",
        "",
        "()V",
        "createNonStickyResult",
        "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;",
        "touchPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "lastPoint",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "touchPoint"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lastPoint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0, p2, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getOffsetTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)[F

    move-result-object p1

    const/4 p2, 0x0

    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDx(F)V

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDy(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setStickyState(Z)V

    return-object p0
.end method
