.class public abstract Lcom/onegravity/rteditor/media/choose/MediaChooserManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/choose/MediaChooserManager$MediaChooserListener;
    }
.end annotation


# instance fields
.field public transient a:Lcom/onegravity/rteditor/media/MonitoredActivity;

.field public transient b:Lcom/onegravity/rteditor/api/RTMediaFactory;
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

.field public transient c:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

.field public transient d:Lcom/onegravity/rteditor/media/choose/MediaChooserManager$MediaChooserListener;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/MonitoredActivity;Lcom/onegravity/rteditor/utils/Constants$MediaAction;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/MediaChooserManager$MediaChooserListener;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/media/MonitoredActivity;",
            "Lcom/onegravity/rteditor/utils/Constants$MediaAction;",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;",
            "Lcom/onegravity/rteditor/media/choose/MediaChooserManager$MediaChooserListener;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->a:Lcom/onegravity/rteditor/media/MonitoredActivity;

    iput-object p3, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->b:Lcom/onegravity/rteditor/api/RTMediaFactory;

    iput-object p2, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->c:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    iput-object p4, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->d:Lcom/onegravity/rteditor/media/choose/MediaChooserManager$MediaChooserListener;

    if-eqz p5, :cond_0

    const-string p1, "mOriginalFile"

    invoke-virtual {p5, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->a:Lcom/onegravity/rteditor/media/MonitoredActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onegravity/rteditor/media/MediaUtils;->determineOriginalFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "mOriginalFile"

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract e(Lcom/onegravity/rteditor/utils/Constants$MediaAction;Landroid/content/Intent;)V
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->e:Ljava/lang/String;

    return-void
.end method

.method public g(Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->a:Lcom/onegravity/rteditor/media/MonitoredActivity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->c:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->requestCode()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public h(Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;)V
    .locals 1

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->a:Lcom/onegravity/rteditor/media/MonitoredActivity;

    sget v0, Lcom/onegravity/rteditor/R$string;->rte_processing_image:I

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/media/MonitoredActivity;->startBackgroundJob(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->d:Lcom/onegravity/rteditor/media/choose/MediaChooserManager$MediaChooserListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager$MediaChooserListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
