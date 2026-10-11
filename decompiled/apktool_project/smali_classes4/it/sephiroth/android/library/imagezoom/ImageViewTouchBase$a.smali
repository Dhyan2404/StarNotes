.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/graphics/drawable/Drawable;

.field public final synthetic f:Landroid/graphics/Matrix;

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 0

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->i:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput-object p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->e:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->f:Landroid/graphics/Matrix;

    iput p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->g:F

    iput p5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->h:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->i:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->f:Landroid/graphics/Matrix;

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->g:F

    iget p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$a;->h:F

    invoke-virtual {v0, v1, v2, v3, p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    return-void
.end method
