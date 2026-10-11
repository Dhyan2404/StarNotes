.class final Lcom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/extension/BitmapKt;->eraseRect(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Bitmap.kt\ncom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,422:1\n43#2,3:423\n*S KotlinDebug\n*F\n+ 1 Bitmap.kt\ncom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1\n*L\n376#1:423,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/graphics/Bitmap;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Bitmap.kt\ncom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,422:1\n43#2,3:423\n*S KotlinDebug\n*F\n+ 1 Bitmap.kt\ncom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1\n*L\n376#1:423,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $paint:Landroid/graphics/Paint;

.field final synthetic $rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1;->$rect:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1;->$paint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1;->$rect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/extension/BitmapKt$eraseRect$1;->$paint:Landroid/graphics/Paint;

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
