.class public final Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J3\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;",
        "",
        "beforeScrollVirtualDocViewInfo",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "height",
        "",
        "offsetY",
        "afterScrollVirtualDocViewInfo",
        "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V",
        "getAfterScrollVirtualDocViewInfo",
        "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "setAfterScrollVirtualDocViewInfo",
        "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V",
        "getBeforeScrollVirtualDocViewInfo",
        "getHeight",
        "()F",
        "getOffsetY",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final beforeScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final height:F

.field private final offsetY:F


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "beforeScrollVirtualDocViewInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->beforeScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->height:F

    .line 4
    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->offsetY:F

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->beforeScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->height:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->offsetY:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->copy(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->beforeScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-object p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->height:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->offsetY:F

    return p0
.end method

.method public final component4()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-object p0
.end method

.method public final copy(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "beforeScrollVirtualDocViewInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->beforeScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->beforeScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->height:F

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->height:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->offsetY:F

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->offsetY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAfterScrollVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-object p0
.end method

.method public final getBeforeScrollVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->beforeScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-object p0
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->height:F

    return p0
.end method

.method public final getOffsetY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->offsetY:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->beforeScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->height:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->offsetY:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setAfterScrollVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollInfo(beforeScrollVirtualDocViewInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->beforeScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->offsetY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", afterScrollVirtualDocViewInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->afterScrollVirtualDocViewInfo:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
