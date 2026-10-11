.class public Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->onImageChosen(Lcom/onegravity/rteditor/api/media/RTImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/api/media/RTImage;

.field public final synthetic f:Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;Lcom/onegravity/rteditor/api/media/RTImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;->f:Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;

    iput-object p2, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;->e:Lcom/onegravity/rteditor/api/media/RTImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;->f:Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;

    invoke-static {v0}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->C(Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;)Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    move-result-object v0

    sget-object v1, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->CAPTURE_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;->e:Lcom/onegravity/rteditor/api/media/RTImage;

    sget-object v1, Lcom/onegravity/rteditor/api/format/RTFormat;->SPANNED:Lcom/onegravity/rteditor/api/format/RTFormat$Spanned;

    invoke-interface {v0, v1}, Lcom/onegravity/rteditor/api/media/RTMedia;->getFilePath(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;->f:Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;

    const-class v3, Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "image-source-file"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image-dest-file"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scaleUpIfNeeded"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;->f:Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;

    const/16 v1, 0x6b

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/onegravity/rteditor/media/choose/MediaEvent;

    iget-object v2, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;->f:Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;

    invoke-static {v2}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->D(Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;)Lcom/onegravity/rteditor/api/media/RTMedia;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onegravity/rteditor/media/choose/MediaEvent;-><init>(Lcom/onegravity/rteditor/api/media/RTMedia;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;->f:Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->finish()V

    :goto_0
    return-void
.end method
