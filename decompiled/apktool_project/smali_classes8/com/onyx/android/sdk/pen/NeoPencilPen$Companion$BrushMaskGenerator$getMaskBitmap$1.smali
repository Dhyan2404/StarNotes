.class final Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator$getMaskBitmap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;->getMaskBitmap(Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;)Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;",
        "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;",
        "it",
        "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;",
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
.field final synthetic $newKey:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator$getMaskBitmap$1;->$newKey:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;)Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/pen/NeoPencilPen;->Companion:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;

    iget-object v0, p0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator$getMaskBitmap$1;->$newKey:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;->getAngle()I

    move-result v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;->access$getRotatedBitmap(Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator$getMaskBitmap$1;->$newKey:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;->getSize()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator$getMaskBitmap$1;->$newKey:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;->getSize()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/base/lite/extension/BitmapKt;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    sget-object p1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p1, p0, v0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;-><init>(Landroid/graphics/Bitmap;F)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator$getMaskBitmap$1;->invoke(Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;)Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BitmapHolder;

    move-result-object p0

    return-object p0
.end method
