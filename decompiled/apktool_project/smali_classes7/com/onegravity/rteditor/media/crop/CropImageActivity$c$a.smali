.class public Lcom/onegravity/rteditor/media/crop/CropImageActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;

    iget-object v1, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->i:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    iget v2, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, v1, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->L0:Z

    if-lez v2, :cond_1

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;

    iget v2, v1, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->h:I

    if-ge v0, v2, :cond_2

    iget-object v2, v1, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->g:[Landroid/media/FaceDetector$Face;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->a(Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;Landroid/media/FaceDetector$Face;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->b(Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;)V

    :cond_2
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;

    iget-object v0, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->i:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->E(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Lcom/onegravity/rteditor/media/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;

    iget-object v0, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->i:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->E(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Lcom/onegravity/rteditor/media/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;

    iget-object v0, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->i:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-static {v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->E(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Lcom/onegravity/rteditor/media/crop/CropImageView;

    move-result-object v1

    iget-object v1, v1, Lcom/onegravity/rteditor/media/crop/CropImageView;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/media/crop/HighlightView;

    iput-object v1, v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->N0:Lcom/onegravity/rteditor/media/crop/HighlightView;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c$a;->e:Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;->i:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->N0:Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {p0, v4}, Lcom/onegravity/rteditor/media/crop/HighlightView;->l(Z)V

    :cond_3
    return-void
.end method
