.class public abstract Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010)\u001a\u00020\u0006\u00a2\u0006\u0004\u0008*\u0010+J\u0006\u0010\u0005\u001a\u00020\u0004J\u001d\u0010\t\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\t\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\t\u0010\rJ\u0015\u0010\t\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\t\u0010\u0010J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00028\u0000H$\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0011\u001a\u0004\u0018\u00018\u0000H$\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\'\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H$\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00028\u0000H$\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00028\u0000H$\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ)\u0010 \u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008 \u0010\u001bJ!\u0010!\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008!\u0010\nJ*\u0010#\u001a\u00020\u00152\u0008\u0010\"\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0002R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;",
        "T",
        "Landroid/util/LruCache;",
        "",
        "",
        "clear",
        "",
        "width",
        "height",
        "ensureBitmapReference",
        "(II)Ljava/lang/Object;",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "(Lcom/onyx/android/sdk/base/data/Size;)Ljava/lang/Object;",
        "Landroid/graphics/RectF;",
        "rectF",
        "(Landroid/graphics/RectF;)Ljava/lang/Object;",
        "t",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "(Ljava/lang/Object;)Landroid/graphics/Bitmap;",
        "",
        "isValid",
        "(Ljava/lang/Object;)Z",
        "Landroid/graphics/Bitmap$Config;",
        "config",
        "create",
        "(IILandroid/graphics/Bitmap$Config;)Ljava/lang/Object;",
        "cloneBitmapReference",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "clearBitmap",
        "(Ljava/lang/Object;)V",
        "b",
        "a",
        "bitmap",
        "c",
        "Landroid/graphics/Bitmap$Config;",
        "getConfig",
        "()Landroid/graphics/Bitmap$Config;",
        "setConfig",
        "(Landroid/graphics/Bitmap$Config;)V",
        "maxSize",
        "<init>",
        "(I)V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public final a(II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->isValid(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->c(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->cloneBitmapReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->clearBitmap(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final c(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-ne p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-ne p0, p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final clear()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "clear"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public abstract clearBitmap(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract cloneBitmapReference(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract create(IILandroid/graphics/Bitmap$Config;)Ljava/lang/Object;
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation
.end method

.method public final ensureBitmapReference(II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->isValid(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->create(IILandroid/graphics/Bitmap$Config;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final ensureBitmapReference(Landroid/graphics/RectF;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")TT;"
        }
    .end annotation

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->ensureBitmapReference(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final ensureBitmapReference(Lcom/onyx/android/sdk/base/data/Size;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Size;",
            ")TT;"
        }
    .end annotation

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->ensureBitmapReference(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->config:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public abstract isValid(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public final setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method
