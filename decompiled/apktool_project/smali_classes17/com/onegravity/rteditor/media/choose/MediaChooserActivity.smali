.class public Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;
.super Lcom/onegravity/rteditor/media/MonitoredActivity;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/media/choose/ImageChooserManager$ImageChooserListener;
.implements Lcom/onegravity/rteditor/media/choose/AudioChooserManager$AudioChooserListener;
.implements Lcom/onegravity/rteditor/media/choose/VideoChooserManager$VideoChooserListener;


# static fields
.field public static final B0:Ljava/lang/String; = "MediaChooserActivity"

.field public static C0:Z

.field public static final EXTRA_MEDIA_ACTION:Ljava/lang/String;

.field public static final EXTRA_MEDIA_FACTORY:Ljava/lang/String;


# instance fields
.field public A0:Lcom/onegravity/rteditor/api/media/RTMedia;

.field public x0:Lcom/onegravity/rteditor/api/RTMediaFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;"
        }
    .end annotation
.end field

.field public y0:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

.field public transient z0:Lcom/onegravity/rteditor/media/choose/MediaChooserManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EXTRA_MEDIA_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->EXTRA_MEDIA_ACTION:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "EXTRA_MEDIA_FACTORY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->EXTRA_MEDIA_FACTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onegravity/rteditor/media/MonitoredActivity;-><init>()V

    return-void
.end method

.method public static synthetic C(Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;)Lcom/onegravity/rteditor/utils/Constants$MediaAction;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->y0:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    return-object p0
.end method

.method public static synthetic D(Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;)Lcom/onegravity/rteditor/api/media/RTMedia;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->A0:Lcom/onegravity/rteditor/api/media/RTMedia;

    return-object p0
.end method


# virtual methods
.method public final E()Z
    .locals 0

    sget-boolean p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->C0:Z

    return p0
.end method

.method public final F(Z)V
    .locals 0

    sput-boolean p1, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->C0:Z

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->F(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    sget-object p2, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->PICK_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    invoke-virtual {p2}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->requestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->z0:Lcom/onegravity/rteditor/media/choose/MediaChooserManager;

    invoke-virtual {p0, p2, p3}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->e(Lcom/onegravity/rteditor/utils/Constants$MediaAction;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->CAPTURE_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    invoke-virtual {p2}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->requestCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->z0:Lcom/onegravity/rteditor/media/choose/MediaChooserManager;

    invoke-virtual {p0, p2, p3}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->e(Lcom/onegravity/rteditor/utils/Constants$MediaAction;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x6b

    if-ne p1, p2, :cond_3

    const-string p1, "image-dest-file"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->A0:Lcom/onegravity/rteditor/api/media/RTMedia;

    instance-of p1, p1, Lcom/onegravity/rteditor/api/media/RTImage;

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/onegravity/rteditor/media/choose/MediaEvent;

    iget-object p3, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->A0:Lcom/onegravity/rteditor/api/media/RTMedia;

    invoke-direct {p2, p3}, Lcom/onegravity/rteditor/media/choose/MediaEvent;-><init>(Lcom/onegravity/rteditor/api/media/RTMedia;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAudioChosen(Lcom/onegravity/rteditor/api/media/RTAudio;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->A0:Lcom/onegravity/rteditor/api/media/RTMedia;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->F(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v1, -0x54fffffb

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->F(Z)V

    return-void
.end method

.method public onImageChosen(Lcom/onegravity/rteditor/api/media/RTImage;)V
    .locals 1

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->A0:Lcom/onegravity/rteditor/api/media/RTMedia;

    new-instance v0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity$a;-><init>(Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;Lcom/onegravity/rteditor/api/media/RTImage;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->A0:Lcom/onegravity/rteditor/api/media/RTMedia;

    if-eqz p0, :cond_0

    const-string v0, "mSelectedMedia"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public onVideoChosen(Lcom/onegravity/rteditor/api/media/RTVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->A0:Lcom/onegravity/rteditor/api/media/RTMedia;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/choose/MediaChooserActivity;->F(Z)V

    return-void
.end method
