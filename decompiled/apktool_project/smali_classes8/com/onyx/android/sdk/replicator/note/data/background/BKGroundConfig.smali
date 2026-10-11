.class public final Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00032\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00d6\u0001J\u0010\u0010\u001d\u001a\u00020\u00032\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0000J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;",
        "",
        "asDefault",
        "",
        "applyAllPage",
        "canvasAutoExpand",
        "scaleType",
        "",
        "(ZZZI)V",
        "getApplyAllPage",
        "()Z",
        "setApplyAllPage",
        "(Z)V",
        "getAsDefault",
        "setAsDefault",
        "getCanvasAutoExpand",
        "setCanvasAutoExpand",
        "getScaleType",
        "()I",
        "setScaleType",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "sameWith",
        "config",
        "toString",
        "",
        "sdk-replicator_overseasRelease"
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
.field private applyAllPage:Z

.field private asDefault:Z

.field private canvasAutoExpand:Z

.field private scaleType:I


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

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;-><init>(ZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->asDefault:Z

    .line 4
    iput-boolean p2, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->applyAllPage:Z

    .line 5
    iput-boolean p3, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->canvasAutoExpand:Z

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->scaleType:I

    return-void
.end method

.method public synthetic constructor <init>(ZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;-><init>(ZZZI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;ZZZIILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->asDefault:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->applyAllPage:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->canvasAutoExpand:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->scaleType:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->copy(ZZZI)Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->asDefault:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->applyAllPage:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->canvasAutoExpand:Z

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->scaleType:I

    return p0
.end method

.method public final copy(ZZZI)Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;-><init>(ZZZI)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->asDefault:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->asDefault:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->applyAllPage:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->applyAllPage:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->canvasAutoExpand:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->canvasAutoExpand:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->scaleType:I

    iget p1, p1, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->scaleType:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getApplyAllPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->applyAllPage:Z

    return p0
.end method

.method public final getAsDefault()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->asDefault:Z

    return p0
.end method

.method public final getCanvasAutoExpand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->canvasAutoExpand:Z

    return p0
.end method

.method public final getScaleType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->scaleType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->asDefault:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->applyAllPage:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->canvasAutoExpand:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->scaleType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final sameWith(Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setApplyAllPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->applyAllPage:Z

    return-void
.end method

.method public final setAsDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->asDefault:Z

    return-void
.end method

.method public final setCanvasAutoExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->canvasAutoExpand:Z

    return-void
.end method

.method public final setScaleType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->scaleType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BKGroundConfig(asDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->asDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", applyAllPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->applyAllPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canvasAutoExpand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->canvasAutoExpand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scaleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->scaleType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
