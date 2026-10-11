.class public Lorg/mortbay/resource/URLResource;
.super Lorg/mortbay/resource/Resource;
.source "SourceFile"


# instance fields
.field protected transient _connection:Ljava/net/URLConnection;

.field protected transient _in:Ljava/io/InputStream;

.field protected _url:Ljava/net/URL;

.field protected _urlString:Ljava/lang/String;

.field transient _useCaches:Z


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    .line 3
    sget-boolean v0, Lorg/mortbay/resource/Resource;->__defaultUseCaches:Z

    iput-boolean v0, p0, Lorg/mortbay/resource/URLResource;->_useCaches:Z

    .line 4
    iput-object p1, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    .line 5
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/mortbay/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 8
    iput-boolean p3, p0, Lorg/mortbay/resource/URLResource;->_useCaches:Z

    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized checkConnection()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    iget-boolean v1, p0, Lorg/mortbay/resource/URLResource;->_useCaches:Z

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Delete not supported"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/mortbay/resource/URLResource;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    check-cast p1, Lorg/mortbay/resource/URLResource;

    iget-object p1, p1, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {p0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public exists()Z
    .locals 1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    instance-of v1, v0, Ljava/io/FilePermission;

    if-eqz v1, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_5
    iput-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    throw v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid resource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Output not supported"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getURL()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    return-object p0
.end method

.method public getUseCaches()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/resource/URLResource;->_useCaches:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->hashCode()I

    move-result p0

    return p0
.end method

.method public isDirectory()Z
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_url:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lastModified()J
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public length()J
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_0
    iput-object v1, p0, Lorg/mortbay/resource/URLResource;->_in:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/mortbay/resource/URLResource;->_connection:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public renameTo(Lorg/mortbay/resource/Resource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "RenameTo not supported"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    return-object p0
.end method
