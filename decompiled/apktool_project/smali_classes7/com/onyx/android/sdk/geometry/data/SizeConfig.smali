.class public final Lcom/onyx/android/sdk/geometry/data/SizeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000c\u001a\u00020\u0005J\u0006\u0010\r\u001a\u00020\u0005R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/SizeConfig;",
        "",
        "viewportSize",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "maxViewportCount",
        "",
        "(Lcom/onyx/android/sdk/base/data/Size;I)V",
        "BYTE_PER_PIXEL",
        "getMaxViewportCount",
        "()I",
        "getViewportSize",
        "()Lcom/onyx/android/sdk/base/data/Size;",
        "bitmapCacheMaxByteCount",
        "getBytePerViewport",
        "sdk-geometry_release"
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
.field private final BYTE_PER_PIXEL:I

.field private final maxViewportCount:I

.field private final viewportSize:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;-><init>(Lcom/onyx/android/sdk/base/data/Size;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/base/data/Size;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewportSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->viewportSize:Lcom/onyx/android/sdk/base/data/Size;

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->maxViewportCount:I

    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->BYTE_PER_PIXEL:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/base/data/Size;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 6
    new-instance p1, Lcom/onyx/android/sdk/base/data/Size;

    const/16 p4, 0x640

    const/16 v0, 0xa00

    invoke-direct {p1, p4, v0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/16 p2, 0xc

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;-><init>(Lcom/onyx/android/sdk/base/data/Size;I)V

    return-void
.end method


# virtual methods
.method public final bitmapCacheMaxByteCount()I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->maxViewportCount:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->getBytePerViewport()I

    move-result p0

    mul-int/2addr v0, p0

    if-gtz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;->bitmapCacheMaxByteCount$default(Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;IILjava/lang/Object;)I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    const/high16 v0, 0x100000

    :cond_1
    return v0
.end method

.method public final getBytePerViewport()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->viewportSize:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->viewportSize:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->BYTE_PER_PIXEL:I

    mul-int/2addr v0, p0

    if-gtz v0, :cond_0

    const/high16 v0, 0x100000

    :cond_0
    return v0
.end method

.method public final getMaxViewportCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->maxViewportCount:I

    return p0
.end method

.method public final getViewportSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->viewportSize:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method
