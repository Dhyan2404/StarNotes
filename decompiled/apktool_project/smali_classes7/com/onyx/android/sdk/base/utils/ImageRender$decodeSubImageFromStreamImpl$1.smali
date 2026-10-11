.class final Lcom/onyx/android/sdk/base/utils/ImageRender$decodeSubImageFromStreamImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/utils/ImageRender;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/BitmapRegionDecoder;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
        "decoder",
        "Landroid/graphics/BitmapRegionDecoder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $options:Landroid/graphics/BitmapFactory$Options;

.field final synthetic $regionToDecode:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$decodeSubImageFromStreamImpl$1;->$regionToDecode:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$decodeSubImageFromStreamImpl$1;->$options:Landroid/graphics/BitmapFactory$Options;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/graphics/BitmapRegionDecoder;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/graphics/BitmapRegionDecoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$decodeSubImageFromStreamImpl$1;->$regionToDecode:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$decodeSubImageFromStreamImpl$1;->$options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ImageRender$decodeSubImageFromStreamImpl$1;->invoke(Landroid/graphics/BitmapRegionDecoder;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
