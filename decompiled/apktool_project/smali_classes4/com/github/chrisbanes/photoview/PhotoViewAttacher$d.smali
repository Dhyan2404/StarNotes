.class public Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/chrisbanes/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final e:F

.field public final f:F

.field public final g:J

.field public final h:F

.field public final i:F

.field public final synthetic j:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->j:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->e:F

    iput p5, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->f:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->g:J

    iput p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->h:F

    iput p3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->i:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->g:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->j:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->l(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->j:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->m(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->a()F

    move-result v0

    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->h:F

    iget v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->i:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->j:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->j:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    iget v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->e:F

    iget v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->onScale(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$d;->j:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->b(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/x5e;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
