.class public final Lcom/onyx/android/sdk/genericshape/DividerAttr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/DividerAttr;",
        "",
        "()V",
        "direction",
        "Lcom/onyx/android/sdk/genericshape/DividerOrientation;",
        "getDirection",
        "()Lcom/onyx/android/sdk/genericshape/DividerOrientation;",
        "setDirection",
        "(Lcom/onyx/android/sdk/genericshape/DividerOrientation;)V",
        "offsetStroke",
        "Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;",
        "getOffsetStroke",
        "()Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;",
        "setOffsetStroke",
        "(Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;)V",
        "percent",
        "",
        "getPercent",
        "()F",
        "setPercent",
        "(F)V",
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


# instance fields
.field private direction:Lcom/onyx/android/sdk/genericshape/DividerOrientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private offsetStroke:Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private percent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/genericshape/DividerOrientation;->HORIZONTAL:Lcom/onyx/android/sdk/genericshape/DividerOrientation;

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/DividerAttr;->direction:Lcom/onyx/android/sdk/genericshape/DividerOrientation;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;->NONE:Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/DividerAttr;->offsetStroke:Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;

    return-void
.end method


# virtual methods
.method public final getDirection()Lcom/onyx/android/sdk/genericshape/DividerOrientation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/DividerAttr;->direction:Lcom/onyx/android/sdk/genericshape/DividerOrientation;

    return-object p0
.end method

.method public final getOffsetStroke()Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/DividerAttr;->offsetStroke:Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;

    return-object p0
.end method

.method public final getPercent()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/DividerAttr;->percent:F

    return p0
.end method

.method public final setDirection(Lcom/onyx/android/sdk/genericshape/DividerOrientation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/DividerOrientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/DividerAttr;->direction:Lcom/onyx/android/sdk/genericshape/DividerOrientation;

    return-void
.end method

.method public final setOffsetStroke(Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/DividerAttr;->offsetStroke:Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;

    return-void
.end method

.method public final setPercent(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/DividerAttr;->percent:F

    return-void
.end method
