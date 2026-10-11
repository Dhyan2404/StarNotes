.class public final Lcom/onyx/galaxy/note/common/glide/GlideOptions;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static U0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

.field public static V0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

.field public static W0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

.field public static X0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

.field public static Y0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

.field public static Z0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static centerCropTransform()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->W0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->centerCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->autoClone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->W0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->W0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->V0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->centerInside()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->autoClone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->V0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->V0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->X0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->circleCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->autoClone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->X0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->X0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->decode(Ljava/lang/Class;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeQualityOf(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->encodeQuality(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->error(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fitCenterTransform()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->U0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->fitCenter()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->autoClone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->U0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->U0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static frameOf(J)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->frame(J)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static noAnimation()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->Z0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->dontAnimate()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->autoClone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->Z0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->Z0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object v0
.end method

.method public static noTransformation()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->Y0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->dontTransform()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->autoClone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->Y0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->Y0:Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->override(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->override(II)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->placeholder(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->sizeMultiplier(F)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->skipMemoryCache(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public static timeoutOf(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->timeout(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/BaseRequestOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/BaseRequestOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->autoClone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public autoClone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->centerCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public centerCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->centerInside()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public centerInside()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->circleCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public circleCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->clone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 3
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->clone()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->decode(Ljava/lang/Class;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public decode(Ljava/lang/Class;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->disallowHardwareConfig()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public disallowHardwareConfig()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->dontAnimate()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public dontAnimate()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->dontTransform()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public dontTransform()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->encodeQuality(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public encodeQuality(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->error(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public error(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->fallback(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public fallback(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->fitCenter()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public fitCenter()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->frame(J)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public frame(J)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->lock()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public lock()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->onlyRetrieveFromCache(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public onlyRetrieveFromCache(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->optionalCenterCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public optionalCenterCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->optionalCenterInside()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public optionalCenterInside()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->optionalCircleCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public optionalCircleCrop()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->optionalFitCenter()Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public optionalFitCenter()Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->override(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->override(II)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public override(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public override(II)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->placeholder(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public placeholder(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TY;>;TY;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->sizeMultiplier(F)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public sizeMultiplier(F)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->skipMemoryCache(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public skipMemoryCache(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->timeout(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public timeout(I)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    .line 6
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public final varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public final varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/onyx/galaxy/note/common/glide/GlideOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->useAnimationPool(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public useAnimationPool(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/GlideOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    move-result-object p0

    return-object p0
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lcom/onyx/galaxy/note/common/glide/GlideOptions;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/glide/GlideOptions;

    return-object p0
.end method
