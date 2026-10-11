.class public Lcom/google/android/odml/image/MediaMlImageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# instance fields
.field public final a:Landroid/media/Image;

.field public b:I

.field public c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 3
    .param p1    # Landroid/media/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->a:Landroid/media/Image;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->b:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-direct {v1, v0, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/odml/image/MlImage;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v8, Lcom/google/android/odml/image/MlImage;

    new-instance v1, Lcom/sunia/HTREnginev2/ulp;

    iget-object v0, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->a:Landroid/media/Image;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ulp;-><init>(Landroid/media/Image;)V

    iget v2, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->b:I

    iget-object v3, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->c:Landroid/graphics/Rect;

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->a:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v6

    iget-object p0, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->a:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/odml/image/MlImage;-><init>(Lcom/sunia/HTREnginev2/pkp;ILandroid/graphics/Rect;JII)V

    return-object v8
.end method

.method public setRotation(I)Lcom/google/android/odml/image/MediaMlImageBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/odml/image/MlImage;->w(I)V

    iput p1, p0, Lcom/google/android/odml/image/MediaMlImageBuilder;->b:I

    return-object p0
.end method
