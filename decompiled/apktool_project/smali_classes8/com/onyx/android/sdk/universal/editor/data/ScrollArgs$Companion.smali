.class public final Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rJ\u0006\u0010\u0014\u001a\u00020\u000bJ\u000e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;",
        "",
        "()V",
        "ACTION_FLING",
        "",
        "ACTION_SCROLLING",
        "ACTION_SCROLL_BEGIN",
        "ACTION_SCROLL_END",
        "SOURCE_EDITOR_VIEW",
        "SOURCE_SCROLL_BAR",
        "createFling",
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;",
        "velocityX",
        "",
        "velocityY",
        "scrollBeginBoxId",
        "",
        "createScrollBegin",
        "offsetX",
        "offsetY",
        "createScrollEnd",
        "createScrolling",
        "info",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;",
        "sdk-universal_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFling(FFLjava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "scrollBeginBoxId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setAction(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setVelocityX(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setVelocityY(F)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setScrollBeginBoxId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createScrollBegin(FF)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setAction(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setOffsetX(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setOffsetY(F)V

    return-object p0
.end method

.method public final createScrollEnd()Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setAction(I)V

    return-object p0
.end method

.method public final createScrolling(FF)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setAction(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setOffsetX(F)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setOffsetY(F)V

    return-object p0
.end method

.method public final createScrolling(Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;-><init>()V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setAction(I)V

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->getNewX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewX(F)V

    .line 8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->getNewY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewY(F)V

    .line 9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->isFinished()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setFlingFinished(Z)V

    return-object p0
.end method
