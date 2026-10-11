.class public final Lcom/onyx/android/sdk/base/utils/SimpleBitmapReferenceLruCache;
.super Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache<",
        "Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0014J \u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0008\u001a\u00020\u0002H\u0014J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0014J\u001a\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/SimpleBitmapReferenceLruCache;",
        "Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;",
        "Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;",
        "maxSize",
        "",
        "(I)V",
        "clearBitmap",
        "",
        "t",
        "cloneBitmapReference",
        "create",
        "width",
        "height",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "getBitmap",
        "Landroid/graphics/Bitmap;",
        "isValid",
        "",
        "sizeOf",
        "key",
        "",
        "value",
        "sdk-base_release"
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
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public clearBitmap(Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "t"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;->clearBitmap()V

    return-void
.end method

.method public bridge synthetic clearBitmap(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReferenceLruCache;->clearBitmap(Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)V

    return-void
.end method

.method public cloneBitmapReference(Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "t"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;->cloneBitmapReference()Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cloneBitmapReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReferenceLruCache;->cloneBitmapReference(Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;

    move-result-object p0

    return-object p0
.end method

.method public create(IILandroid/graphics/Bitmap$Config;)Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;
    .locals 0
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "config"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;-><init>()V

    .line 3
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clearBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public bridge synthetic create(IILandroid/graphics/Bitmap$Config;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReferenceLruCache;->create(IILandroid/graphics/Bitmap$Config;)Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;

    move-result-object p0

    return-object p0
.end method

.method public getBitmap(Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "t"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReferenceLruCache;->getBitmap(Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public isValid(Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;->isValid()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReferenceLruCache;->isValid(Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReferenceLruCache;->sizeOf(Ljava/lang/String;Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)I

    move-result p0

    return p0
.end method

.method public sizeOf(Ljava/lang/String;Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;->isValid()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    :goto_0
    return p0
.end method
