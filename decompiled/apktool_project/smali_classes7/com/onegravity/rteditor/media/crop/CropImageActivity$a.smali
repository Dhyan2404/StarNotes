.class public Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/media/crop/CropImageActivity;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->C(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v1}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->C(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v1}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->E(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Lcom/onegravity/rteditor/media/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->m(Landroid/graphics/Bitmap;Z)V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v1}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->C(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v1, v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->D(Lcom/onegravity/rteditor/media/crop/CropImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->E(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Lcom/onegravity/rteditor/media/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->e()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->E(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Lcom/onegravity/rteditor/media/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->a(ZZ)V

    :cond_1
    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->Q0:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
