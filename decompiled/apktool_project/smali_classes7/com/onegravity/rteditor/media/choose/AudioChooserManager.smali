.class public Lcom/onegravity/rteditor/media/choose/AudioChooserManager;
.super Lcom/onegravity/rteditor/media/choose/MediaChooserManager;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/media/choose/processor/AudioProcessor$AudioProcessorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/choose/AudioChooserManager$AudioChooserListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/MonitoredActivity;Lcom/onegravity/rteditor/utils/Constants$MediaAction;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/AudioChooserManager$AudioChooserListener;Landroid/os/Bundle;)V
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
            "Lcom/onegravity/rteditor/media/choose/AudioChooserManager$AudioChooserListener;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;-><init>(Lcom/onegravity/rteditor/media/MonitoredActivity;Lcom/onegravity/rteditor/utils/Constants$MediaAction;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/MediaChooserManager$MediaChooserListener;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public e(Lcom/onegravity/rteditor/utils/Constants$MediaAction;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAudioProcessed(Lcom/onegravity/rteditor/api/media/RTAudio;)V
    .locals 0

    return-void
.end method
