.class public Lcom/onegravity/rteditor/api/RTApi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/api/RTProxy;
.implements Lcom/onegravity/rteditor/api/RTMediaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/api/RTApi$IncorrectInitializationException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onegravity/rteditor/api/RTProxy;",
        "Lcom/onegravity/rteditor/api/RTMediaFactory<",
        "Lcom/onegravity/rteditor/api/media/RTImage;",
        "Lcom/onegravity/rteditor/api/media/RTAudio;",
        "Lcom/onegravity/rteditor/api/media/RTVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static sAppContext:Landroid/content/Context; = null

.field private static sDarkTheme:Z = false

.field private static final sTheLock:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x35d04ed4cebab09dL


# instance fields
.field private final mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;
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

.field private final transient mRTProxy:Lcom/onegravity/rteditor/api/RTProxy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/api/RTApi;->sTheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onegravity/rteditor/api/RTProxy;Lcom/onegravity/rteditor/api/RTMediaFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onegravity/rteditor/api/RTProxy;",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onegravity/rteditor/api/RTApi;->sTheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/onegravity/rteditor/api/RTApi;->sAppContext:Landroid/content/Context;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/onegravity/rteditor/R$attr;->rte_darkTheme:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/onegravity/rteditor/api/RTApi;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p1

    sput-boolean p1, Lcom/onegravity/rteditor/api/RTApi;->sDarkTheme:Z

    iput-object p2, p0, Lcom/onegravity/rteditor/api/RTApi;->mRTProxy:Lcom/onegravity/rteditor/api/RTProxy;

    iput-object p3, p0, Lcom/onegravity/rteditor/api/RTApi;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    sget-object v0, Lcom/onegravity/rteditor/api/RTApi;->sTheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/onegravity/rteditor/api/RTApi;->sAppContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/onegravity/rteditor/api/RTApi$IncorrectInitializationException;

    const-string v2, "Create an RTApi object before calling RTApi.getApplicationContext()"

    invoke-direct {v1, v2}, Lcom/onegravity/rteditor/api/RTApi$IncorrectInitializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resolveBoolean(Landroid/content/Context;IZ)Z
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    filled-new-array {p2}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static useDarkTheme()Z
    .locals 1

    sget-boolean v0, Lcom/onegravity/rteditor/api/RTApi;->sDarkTheme:Z

    return v0
.end method


# virtual methods
.method public createAudio(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTAudio;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/api/RTMediaFactory;->createAudio(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTAudio;

    move-result-object p0

    return-object p0
.end method

.method public createAudio(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTAudio;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/api/RTMediaFactory;->createAudio(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTAudio;

    move-result-object p0

    return-object p0
.end method

.method public createImage(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTImage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/api/RTMediaFactory;->createImage(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTImage;

    move-result-object p0

    return-object p0
.end method

.method public createImage(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTImage;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/api/RTMediaFactory;->createImage(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTImage;

    move-result-object p0

    return-object p0
.end method

.method public createVideo(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTVideo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/api/RTMediaFactory;->createVideo(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTVideo;

    move-result-object p0

    return-object p0
.end method

.method public createVideo(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTVideo;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/api/RTMediaFactory;->createVideo(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTVideo;

    move-result-object p0

    return-object p0
.end method

.method public getMediaFactory()Lcom/onegravity/rteditor/api/RTMediaFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    return-object p0
.end method

.method public getRTProxy()Lcom/onegravity/rteditor/api/RTProxy;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mRTProxy:Lcom/onegravity/rteditor/api/RTProxy;

    return-object p0
.end method

.method public makeText(II)Landroid/widget/Toast;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mRTProxy:Lcom/onegravity/rteditor/api/RTProxy;

    invoke-interface {p0, p1, p2}, Lcom/onegravity/rteditor/api/RTProxy;->makeText(II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public makeText(Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mRTProxy:Lcom/onegravity/rteditor/api/RTProxy;

    invoke-interface {p0, p1, p2}, Lcom/onegravity/rteditor/api/RTProxy;->makeText(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public openDialogFragment(Ljava/lang/String;Landroid/app/DialogFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mRTProxy:Lcom/onegravity/rteditor/api/RTProxy;

    invoke-interface {p0, p1, p2}, Lcom/onegravity/rteditor/api/RTProxy;->openDialogFragment(Ljava/lang/String;Landroid/app/DialogFragment;)V

    return-void
.end method

.method public removeFragment(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mRTProxy:Lcom/onegravity/rteditor/api/RTProxy;

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/api/RTProxy;->removeFragment(Ljava/lang/String;)V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mRTProxy:Lcom/onegravity/rteditor/api/RTProxy;

    invoke-interface {p0, p1}, Lcom/onegravity/rteditor/api/RTProxy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTApi;->mRTProxy:Lcom/onegravity/rteditor/api/RTProxy;

    invoke-interface {p0, p1, p2}, Lcom/onegravity/rteditor/api/RTProxy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
