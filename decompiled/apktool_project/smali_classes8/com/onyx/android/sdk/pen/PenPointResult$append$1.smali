.class public final Lcom/onyx/android/sdk/pen/PenPointResult$append$1;
.super Lcom/onyx/android/sdk/pen/PenPointResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pen/PenPointResult;->append(Lcom/onyx/android/sdk/pen/PenResult;)Lcom/onyx/android/sdk/pen/PenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/android/sdk/pen/PenPointResult$append$1",
        "Lcom/onyx/android/sdk/pen/PenPointResult;",
        "getPointsCount",
        "",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/graphics/RectF;ILcom/onyx/android/sdk/pen/PenPointResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/pen/PenPointInk;",
            ">;",
            "Landroid/graphics/RectF;",
            "I",
            "Lcom/onyx/android/sdk/pen/PenPointResult;",
            ")V"
        }
    .end annotation

    iput p3, p0, Lcom/onyx/android/sdk/pen/PenPointResult$append$1;->f:I

    invoke-direct {p0, p1, p2, p4}, Lcom/onyx/android/sdk/pen/PenPointResult;-><init>(Ljava/util/List;Landroid/graphics/RectF;Lcom/onyx/android/sdk/pen/PenPointResult;)V

    return-void
.end method


# virtual methods
.method public getPointsCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/PenPointResult$append$1;->f:I

    return p0
.end method
