.class public final Lcom/onyx/android/sdk/pen/NeoCharcoalPenV2;
.super Lcom/onyx/android/sdk/pen/NeoNativePen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pen/NeoCharcoalPenV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\'\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0010\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoCharcoalPenV2;",
        "Lcom/onyx/android/sdk/pen/NeoNativePen;",
        "penHandle",
        "",
        "(J)V",
        "buildPenResult",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "result",
        "Lcom/onyx/android/sdk/pennative/PenInkResult;",
        "buildPenResult$sdk_pen_release",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/pen/NeoCharcoalPenV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/NeoCharcoalPenV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pen/NeoCharcoalPenV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pen/NeoCharcoalPenV2;->Companion:Lcom/onyx/android/sdk/pen/NeoCharcoalPenV2$Companion;

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
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoCharcoalPenV2;-><init>(J)V

    return-void
.end method


# virtual methods
.method public buildPenResult$sdk_pen_release(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;
    .locals 3
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

    new-instance p0, Lkotlin/Pair;

    sget-object v0, Lcom/onyx/android/sdk/pen/PenTextureResult;->Companion:Lcom/onyx/android/sdk/pen/PenTextureResult$Companion;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getRealInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/pen/PenTextureResult$Companion;->buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenTextureResult;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pennative/PenInkResult;->getPredictionInk()Lcom/onyx/android/sdk/pennative/PenInk;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pen/PenTextureResult$Companion;->buildFromInkArray(Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pen/PenTextureResult;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
