.class public final Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\n\"\u0004\u0008\u0014\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;",
        "",
        "fromIndex",
        "",
        "toIndex",
        "insertBefore",
        "",
        "scrollToNewPosition",
        "(IIZZ)V",
        "getFromIndex",
        "()I",
        "setFromIndex",
        "(I)V",
        "getInsertBefore",
        "()Z",
        "setInsertBefore",
        "(Z)V",
        "getScrollToNewPosition",
        "setScrollToNewPosition",
        "getToIndex",
        "setToIndex",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private fromIndex:I

.field private insertBefore:Z

.field private scrollToNewPosition:Z

.field private toIndex:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;-><init>(IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->fromIndex:I

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->toIndex:I

    .line 5
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->insertBefore:Z

    .line 6
    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->scrollToNewPosition:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x1

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;-><init>(IIZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;IIZZILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->fromIndex:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->toIndex:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->insertBefore:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->scrollToNewPosition:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->copy(IIZZ)Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->fromIndex:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->toIndex:I

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->insertBefore:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->scrollToNewPosition:Z

    return p0
.end method

.method public final copy(IIZZ)Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;-><init>(IIZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->fromIndex:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->fromIndex:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->toIndex:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->toIndex:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->insertBefore:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->insertBefore:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->scrollToNewPosition:Z

    iget-boolean p1, p1, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->scrollToNewPosition:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFromIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->fromIndex:I

    return p0
.end method

.method public final getInsertBefore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->insertBefore:Z

    return p0
.end method

.method public final getScrollToNewPosition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->scrollToNewPosition:Z

    return p0
.end method

.method public final getToIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->toIndex:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->fromIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->toIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->insertBefore:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->scrollToNewPosition:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final setFromIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->fromIndex:I

    return-void
.end method

.method public final setInsertBefore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->insertBefore:Z

    return-void
.end method

.method public final setScrollToNewPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->scrollToNewPosition:Z

    return-void
.end method

.method public final setToIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->toIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MovePageArgs(fromIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->fromIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->toIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", insertBefore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->insertBefore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scrollToNewPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;->scrollToNewPosition:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
