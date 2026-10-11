.class public final Lcom/onyx/android/sdk/pen/NeoBrushSignPen;
.super Lcom/onyx/android/sdk/pen/NeoNativePen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pen/NeoBrushSignPen$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0011\u0008\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J(\u0010\u0008\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J)\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0010\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoBrushSignPen;",
        "Lcom/onyx/android/sdk/pen/NeoNativePen;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "",
        "repaint",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "onPenDown",
        "Lcom/onyx/android/sdk/pennative/PenInkResult;",
        "result",
        "buildPenResult$sdk_pen_release",
        "(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;",
        "buildPenResult",
        "Lcom/onyx/android/sdk/pen/PenPointResult;",
        "b",
        "Lcom/onyx/android/sdk/pen/PenPointResult;",
        "lastResult",
        "",
        "handle",
        "<init>",
        "(J)V",
        "Companion",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/pen/NeoBrushSignPen$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:Lcom/onyx/android/sdk/pen/PenPointResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/NeoBrushSignPen$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pen/NeoBrushSignPen$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pen/NeoBrushSignPen;->Companion:Lcom/onyx/android/sdk/pen/NeoBrushSignPen$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoNativePen;-><init>(J)V

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoBrushSignPen;-><init>(J)V

    return-void
.end method


# virtual methods
.method public buildPenResult$sdk_pen_release(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/pennative/PenInkResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pennative/PenInkResult;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/pen/PenPathResult;->Companion:Lcom/onyx/android/sdk/pen/PenPathResult$Companion;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getRealInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/pen/PenPathResult$Companion;->buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenPathResult;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getPredictionInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pen/PenPathResult$Companion;->buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenPathResult;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/pen/NeoBrushSignPen;->b:Lcom/onyx/android/sdk/pen/PenPointResult;

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoNativePen;->onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
