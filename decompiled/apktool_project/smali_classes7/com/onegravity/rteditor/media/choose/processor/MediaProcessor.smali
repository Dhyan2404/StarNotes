.class public abstract Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;
    }
.end annotation


# instance fields
.field public final e:Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;

.field public final f:Ljava/lang/String;

.field protected final mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;",
            "Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    iput-object p3, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->e:Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    new-instance v0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$a;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$a;-><init>(Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onegravity/rteditor/utils/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :goto_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-static {}, Lcom/onegravity/rteditor/api/RTApi;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onegravity/rteditor/api/RTApi;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/onegravity/rteditor/utils/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->f:Ljava/lang/String;

    return-object p0
.end method

.method public abstract processMedia()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->processMedia()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->e:Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->e:Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
