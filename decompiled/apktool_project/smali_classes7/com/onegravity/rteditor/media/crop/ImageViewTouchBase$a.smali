.class public Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->n(Lcom/onegravity/rteditor/media/crop/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;Lcom/onegravity/rteditor/media/crop/RotateBitmap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$a;->g:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;

    iput-object p2, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$a;->e:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    iput-boolean p3, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$a;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$a;->g:Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$a;->e:Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    iget-boolean p0, p0, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase$a;->f:Z

    invoke-virtual {v0, v1, p0}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->n(Lcom/onegravity/rteditor/media/crop/RotateBitmap;Z)V

    return-void
.end method
