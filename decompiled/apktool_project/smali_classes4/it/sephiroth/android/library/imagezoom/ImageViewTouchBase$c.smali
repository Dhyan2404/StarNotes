.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:F

.field public final synthetic f:J

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V
    .locals 0

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->e:F

    iput-wide p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->f:J

    iput p5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->g:F

    iput p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->h:F

    iput p7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->i:F

    iput p8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->j:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->e:F

    iget-wide v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->f:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v2, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->g:F

    float-to-double v7, v1

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->e:F

    float-to-double v9, v1

    invoke-interface/range {v2 .. v10}, Lit/sephiroth/android/library/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->h:F

    add-float/2addr v3, v1

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->i:F

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->j:F

    invoke-virtual {v2, v3, v1, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->e:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoomAnimationCompleted(F)V

    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$c;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    :goto_0
    return-void
.end method
