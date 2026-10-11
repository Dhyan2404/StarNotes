.class public final Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0004\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\t\u0010\r\u001a\u00020\u0005H\u00d6\u0001J\u0013\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0013R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;",
        "",
        "",
        "component1",
        "component2",
        "",
        "component3",
        "renderTemplate",
        "renderTape",
        "layerId",
        "copy",
        "",
        "toString",
        "hashCode",
        "other",
        "equals",
        "a",
        "Z",
        "getRenderTemplate",
        "()Z",
        "b",
        "getRenderTape",
        "c",
        "I",
        "getLayerId",
        "()I",
        "setLayerId",
        "(I)V",
        "<init>",
        "(ZZI)V",
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
.field public final a:Z

.field public final b:Z

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;-><init>(ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->a:Z

    .line 4
    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->b:Z

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->c:I

    return-void
.end method

.method public synthetic constructor <init>(ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, -0x1

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;-><init>(ZZI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;ZZIILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->a:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->b:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->c:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->copy(ZZI)Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->a:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->b:Z

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->c:I

    return p0
.end method

.method public final copy(ZZI)Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;-><init>(ZZI)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->a:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->b:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->c:I

    iget p1, p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLayerId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->c:I

    return p0
.end method

.method public final getRenderTape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->b:Z

    return p0
.end method

.method public final getRenderTemplate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->a:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setLayerId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderBoundingRectThumbnailArgs(renderTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderTape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", layerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
