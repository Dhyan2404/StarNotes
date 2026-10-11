.class public Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->v(FFFF)V
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

.field public final synthetic k:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;FJFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->k:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;

    iput p2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->e:F

    iput-wide p3, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->f:J

    iput p5, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->g:F

    iput p6, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->h:F

    iput p7, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->i:F

    iput p8, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->j:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->e:F

    iget-wide v3, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->f:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->g:F

    iget v2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->h:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->k:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;

    iget v3, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->i:F

    iget v4, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->j:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->u(FFF)V

    iget v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->e:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$b;->k:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;

    iget-object v0, v0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->u:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
