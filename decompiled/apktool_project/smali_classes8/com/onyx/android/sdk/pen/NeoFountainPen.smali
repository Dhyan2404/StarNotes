.class public final Lcom/onyx/android/sdk/pen/NeoFountainPen;
.super Lcom/onyx/android/sdk/pen/NeoNativePen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pen/NeoFountainPen$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0019\u0008\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ(\u0010\u0008\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J*\u0010\u0008\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J)\u0010\u000e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0010\u00a2\u0006\u0004\u0008\u000c\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoFountainPen;",
        "Lcom/onyx/android/sdk/pen/NeoNativePen;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "",
        "repaint",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "onPenDown",
        "prediction",
        "Lcom/onyx/android/sdk/pennative/PenInkResult;",
        "result",
        "buildPenResult$sdk_pen_release",
        "(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;",
        "buildPenResult",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "b",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "getConfig$sdk_pen_release",
        "()Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "setConfig$sdk_pen_release",
        "(Lcom/onyx/android/sdk/pen/NeoPenConfig;)V",
        "config",
        "Lcom/onyx/android/sdk/pen/PenPointResult;",
        "c",
        "Lcom/onyx/android/sdk/pen/PenPointResult;",
        "lastPointResult",
        "",
        "handle",
        "<init>",
        "(JLcom/onyx/android/sdk/pen/NeoPenConfig;)V",
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
.field public static final Companion:Lcom/onyx/android/sdk/pen/NeoFountainPen$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/pen/PenPointResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/NeoFountainPen$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pen/NeoFountainPen$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pen/NeoFountainPen;->Companion:Lcom/onyx/android/sdk/pen/NeoFountainPen$Companion;

    return-void
.end method

.method public constructor <init>(JLcom/onyx/android/sdk/pen/NeoPenConfig;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoNativePen;-><init>(J)V

    iput-object p3, p0, Lcom/onyx/android/sdk/pen/NeoFountainPen;->b:Lcom/onyx/android/sdk/pen/NeoPenConfig;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/onyx/android/sdk/pen/NeoPenConfig;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/pen/NeoFountainPen;-><init>(JLcom/onyx/android/sdk/pen/NeoPenConfig;)V

    return-void
.end method


# virtual methods
.method public buildPenResult$sdk_pen_release(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;
    .locals 4
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

    iget-object v0, p0, Lcom/onyx/android/sdk/pen/NeoFountainPen;->b:Lcom/onyx/android/sdk/pen/NeoPenConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->getFastMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/pen/PenPointResult;->Companion:Lcom/onyx/android/sdk/pen/PenPointResult$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getRealInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/onyx/android/sdk/pen/NeoFountainPen;->c:Lcom/onyx/android/sdk/pen/PenPointResult;

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/pen/PenPointResult$Companion;->buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pen/PenPointResult;)Lcom/onyx/android/sdk/pen/PenPointResult;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getPredictionInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/pen/PenPointResult$Companion;->buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pen/PenPointResult;)Lcom/onyx/android/sdk/pen/PenPointResult;

    move-result-object p1

    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/onyx/android/sdk/pen/NeoFountainPen;->c:Lcom/onyx/android/sdk/pen/PenPointResult;

    :cond_2
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Lkotlin/Pair;

    sget-object v0, Lcom/onyx/android/sdk/pen/PenPathResult;->Companion:Lcom/onyx/android/sdk/pen/PenPathResult$Companion;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getRealInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/pen/PenPathResult$Companion;->buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenPathResult;

    move-result-object v2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getPredictionInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pen/PenPathResult$Companion;->buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenPathResult;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getConfig$sdk_pen_release()Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/NeoFountainPen;->b:Lcom/onyx/android/sdk/pen/NeoPenConfig;

    return-object p0
.end method

.method public onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
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

    .line 3
    iput-object v0, p0, Lcom/onyx/android/sdk/pen/NeoFountainPen;->c:Lcom/onyx/android/sdk/pen/PenPointResult;

    .line 4
    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoNativePen;->onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
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

    .line 1
    iput-object v0, p0, Lcom/onyx/android/sdk/pen/NeoFountainPen;->c:Lcom/onyx/android/sdk/pen/PenPointResult;

    .line 2
    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoNativePen;->onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final setConfig$sdk_pen_release(Lcom/onyx/android/sdk/pen/NeoPenConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPenConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/pen/NeoFountainPen;->b:Lcom/onyx/android/sdk/pen/NeoPenConfig;

    return-void
.end method
