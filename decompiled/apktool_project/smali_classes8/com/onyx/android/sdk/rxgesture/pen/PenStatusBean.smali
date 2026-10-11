.class public final Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0000R\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "",
        "",
        "holdCountIncrease",
        "",
        "isUpAfterHold",
        "isUp",
        "isHolding",
        "isMoving",
        "isLongPress",
        "copy",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;",
        "a",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;",
        "getPenStatus",
        "()Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;",
        "setPenStatus",
        "(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V",
        "penStatus",
        "",
        "b",
        "I",
        "getHoldCount",
        "()I",
        "setHoldCount",
        "(I)V",
        "holdCount",
        "<init>",
        "()V",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->UP:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    iput-object v1, v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->b:I

    iput p0, v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->b:I

    return-object v0
.end method

.method public final getHoldCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->b:I

    return p0
.end method

.method public final getPenStatus()Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    return-object p0
.end method

.method public final holdCountIncrease()V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->b:I

    return-void
.end method

.method public final isHolding()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->HOLDING:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLongPress()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->LONG_PRESS:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMoving()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->MOVING:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUp()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->UP:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUpAfterHold()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    sget-object v1, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->UP:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setHoldCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->b:I

    return-void
.end method

.method public final setPenStatus(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    return-void
.end method
