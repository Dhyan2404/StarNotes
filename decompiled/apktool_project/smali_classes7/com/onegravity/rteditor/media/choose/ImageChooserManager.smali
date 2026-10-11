.class public Lcom/onegravity/rteditor/media/choose/ImageChooserManager;
.super Lcom/onegravity/rteditor/media/choose/MediaChooserManager;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/choose/ImageChooserManager$ImageChooserListener;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "CAPTURED_IMAGE.jpeg"


# instance fields
.field public f:Lcom/onegravity/rteditor/media/choose/ImageChooserManager$ImageChooserListener;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/MonitoredActivity;Lcom/onegravity/rteditor/utils/Constants$MediaAction;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/ImageChooserManager$ImageChooserListener;Landroid/os/Bundle;)V
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
            "Lcom/onegravity/rteditor/media/choose/ImageChooserManager$ImageChooserListener;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;-><init>(Lcom/onegravity/rteditor/media/MonitoredActivity;Lcom/onegravity/rteditor/utils/Constants$MediaAction;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/MediaChooserManager$MediaChooserListener;Landroid/os/Bundle;)V

    iput-object p4, p0, Lcom/onegravity/rteditor/media/choose/ImageChooserManager;->f:Lcom/onegravity/rteditor/media/choose/ImageChooserManager$ImageChooserListener;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/ImageChooserManager;->f:Lcom/onegravity/rteditor/media/choose/ImageChooserManager$ImageChooserListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onegravity/rteditor/media/choose/ImageChooserManager$a;->a:[I

    iget-object v1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->c:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/choose/ImageChooserManager;->j()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/choose/ImageChooserManager;->i()Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageChooserListener cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Lcom/onegravity/rteditor/utils/Constants$MediaAction;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/media/choose/ImageChooserManager$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor;

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->b:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-direct {p2, p1, v0, p0}, Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor;-><init>(Ljava/lang/String;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;)V

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->h(Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor;

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->b:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-direct {p2, p1, v0, p0}, Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor;-><init>(Ljava/lang/String;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;)V

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->h(Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->a:Lcom/onegravity/rteditor/media/MonitoredActivity;

    sget v2, Lcom/onegravity/rteditor/R$string;->rte_pick_image:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->g(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final j()Z
    .locals 4

    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "CAPTURED_IMAGE.jpeg"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onegravity/rteditor/media/MediaUtils;->createUniqueFile(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->a:Lcom/onegravity/rteditor/media/MonitoredActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->a:Lcom/onegravity/rteditor/media/MonitoredActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->g(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/MediaChooserManager;->a:Lcom/onegravity/rteditor/media/MonitoredActivity;

    const-string v1, "Can\'t take picture without an sdcard"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onImageProcessed(Lcom/onegravity/rteditor/api/media/RTImage;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/ImageChooserManager;->f:Lcom/onegravity/rteditor/media/choose/ImageChooserManager$ImageChooserListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/media/choose/ImageChooserManager$ImageChooserListener;->onImageChosen(Lcom/onegravity/rteditor/api/media/RTImage;)V

    :cond_0
    return-void
.end method
