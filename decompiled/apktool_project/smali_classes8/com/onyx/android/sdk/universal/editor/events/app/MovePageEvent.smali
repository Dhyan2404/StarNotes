.class public final Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\t\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;",
        "component1",
        "movePageArgs",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;",
        "getMovePageArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;",
        "setMovePageArgs",
        "(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V",
        "<init>",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "movePageArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;-><init>(IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->copy(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    return-object p0
.end method

.method public final copy(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "movePageArgs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMovePageArgs()Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setMovePageArgs(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MovePageEvent(movePageArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/MovePageEvent;->a:Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
