.class public final Lcom/onyx/android/sdk/genericshape/BidirectionalCurvyArrow;
.super Lcom/onyx/android/sdk/genericshape/Curve;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/BidirectionalCurvyArrow;",
        "Lcom/onyx/android/sdk/genericshape/Curve;",
        "points",
        "Lcom/onyx/android/sdk/genericshape/MultiPoint;",
        "(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V",
        "sdk-genericshape_overseasRelease"
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
.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/MultiPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/onyx/android/sdk/genericshape/Curve;-><init>(Lcom/onyx/android/sdk/genericshape/MultiPoint;ZZ)V

    return-void
.end method
