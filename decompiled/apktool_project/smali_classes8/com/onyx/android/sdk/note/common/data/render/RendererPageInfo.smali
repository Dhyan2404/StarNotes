.class public final Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0006J\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\rJ\u0013\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\rH\u0016R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0016R\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;",
        "",
        "",
        "getPageUniqueId",
        "pageUniqueId",
        "setPageUniqueId",
        "",
        "getMatrix",
        "matrix",
        "setMatrix",
        "getRenderMode",
        "renderMode",
        "setRenderMode",
        "",
        "getLayerId",
        "layerId",
        "setLayerId",
        "other",
        "",
        "equals",
        "hashCode",
        "a",
        "Ljava/lang/String;",
        "b",
        "[F",
        "c",
        "d",
        "I",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;

    iget-object v0, p1, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->b:[F

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->b:[F

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->safelyEquals([F[F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->d:I

    iget v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->d:I

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->c:Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getLayerId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->d:I

    return p0
.end method

.method public final getMatrix()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->b:[F

    return-object p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getRenderMode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->b:[F

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final setLayerId(I)Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->d:I

    return-object p0
.end method

.method public final setMatrix([F)Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->b:[F

    return-object p0
.end method

.method public final setPageUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setRenderMode(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RendererPageInfo;->c:Ljava/lang/String;

    return-object p0
.end method
