.class public Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/api/RTMediaFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onegravity/rteditor/api/RTMediaFactory<",
        "Lcom/onegravity/rteditor/api/media/RTImage;",
        "Lcom/onegravity/rteditor/api/media/RTAudio;",
        "Lcom/onegravity/rteditor/api/media/RTVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x60bbb2bbd2d23737L


# instance fields
.field private mStoragePath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;->mStoragePath:Ljava/io/File;

    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1, v1}, Lcom/onegravity/rteditor/utils/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    invoke-static {p1}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p2

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    invoke-static {v0}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method private loadMedia(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/media/RTMediaSource;->getMediaType()Lcom/onegravity/rteditor/api/media/RTMediaType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;->getAbsolutePath(Lcom/onegravity/rteditor/api/media/RTMediaType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/media/RTMediaSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/media/RTMediaSource;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/onegravity/rteditor/media/MediaUtils;->createUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/media/RTMediaSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public createAudio(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTAudio;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;->loadMedia(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/onegravity/rteditor/api/media/RTAudioImpl;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/api/media/RTAudioImpl;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public createAudio(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTAudio;
    .locals 0

    .line 3
    new-instance p0, Lcom/onegravity/rteditor/api/media/RTAudioImpl;

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/api/media/RTAudioImpl;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public createImage(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTImage;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;->loadMedia(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/onegravity/rteditor/api/media/RTImageImpl;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/api/media/RTImageImpl;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public createImage(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTImage;
    .locals 0

    .line 3
    new-instance p0, Lcom/onegravity/rteditor/api/media/RTImageImpl;

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/api/media/RTImageImpl;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public createVideo(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTVideo;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;->loadMedia(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/onegravity/rteditor/api/media/RTVideoImpl;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/api/media/RTVideoImpl;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public createVideo(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTVideo;
    .locals 0

    .line 3
    new-instance p0, Lcom/onegravity/rteditor/api/media/RTVideoImpl;

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/api/media/RTVideoImpl;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getAbsolutePath(Lcom/onegravity/rteditor/api/media/RTMediaType;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;->mStoragePath:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/api/media/RTMediaType;->mediaPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
