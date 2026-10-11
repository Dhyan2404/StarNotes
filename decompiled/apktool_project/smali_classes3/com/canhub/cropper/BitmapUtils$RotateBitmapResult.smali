.class public final Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RotateBitmapResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;",
        "",
        "Landroid/graphics/Bitmap;",
        "a",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "b",
        "I",
        "getDegrees",
        "()I",
        "degrees",
        "",
        "c",
        "Z",
        "getFlipHorizontally",
        "()Z",
        "flipHorizontally",
        "d",
        "getFlipVertically",
        "flipVertically",
        "<init>",
        "(Landroid/graphics/Bitmap;IZZ)V",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:I

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IZZ)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->a:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->b:I

    iput-boolean p3, p0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->c:Z

    iput-boolean p4, p0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->d:Z

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getDegrees()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->b:I

    return p0
.end method

.method public final getFlipHorizontally()Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->c:Z

    return p0
.end method

.method public final getFlipVertically()Z
    .locals 0

    iget-boolean p0, p0, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->d:Z

    return p0
.end method
