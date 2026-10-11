.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->scrollBy(FFD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public e:D

.field public f:D

.field public final synthetic g:D

.field public final synthetic h:J

.field public final synthetic i:D

.field public final synthetic j:D

.field public final synthetic k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;DJDD)V
    .locals 0

    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput-wide p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->g:D

    iput-wide p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->h:J

    iput-wide p6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->i:D

    iput-wide p8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->j:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->e:D

    iput-wide p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->f:D

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->g:D

    iget-wide v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->h:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v4, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    const-wide/16 v7, 0x0

    iget-wide v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->i:D

    iget-wide v11, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->g:D

    move-wide v5, v0

    invoke-interface/range {v4 .. v12}, Lit/sephiroth/android/library/easing/Easing;->easeOut(DDDD)D

    move-result-wide v2

    iget-object v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v4, v4, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    iget-wide v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->j:D

    iget-wide v11, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->g:D

    invoke-interface/range {v4 .. v12}, Lit/sephiroth/android/library/easing/Easing;->easeOut(DDDD)D

    move-result-wide v4

    iget-object v6, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-wide v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->e:D

    sub-double v7, v2, v7

    iget-wide v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->f:D

    sub-double v9, v4, v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(DD)V

    iput-wide v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->e:D

    iput-wide v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->f:D

    iget-wide v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->g:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object p0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$b;->k:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->scrollBy(FF)V

    :cond_2
    :goto_0
    return-void
.end method
