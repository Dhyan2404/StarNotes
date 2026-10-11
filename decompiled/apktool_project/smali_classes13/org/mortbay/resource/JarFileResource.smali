.class Lorg/mortbay/resource/JarFileResource;
.super Lorg/mortbay/resource/JarResource;
.source "SourceFile"


# instance fields
.field transient _directory:Z

.field transient _entry:Ljava/util/jar/JarEntry;

.field transient _exists:Z

.field transient _file:Ljava/io/File;

.field transient _jarFile:Ljava/util/jar/JarFile;

.field transient _jarUrl:Ljava/lang/String;

.field transient _list:[Ljava/lang/String;

.field transient _path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mortbay/resource/JarResource;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/mortbay/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    return-void
.end method

.method public static getNonCachingResource(Lorg/mortbay/resource/Resource;)Lorg/mortbay/resource/Resource;
    .locals 2

    instance-of v0, p0, Lorg/mortbay/resource/JarFileResource;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Lorg/mortbay/resource/JarFileResource;

    new-instance v0, Lorg/mortbay/resource/JarFileResource;

    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->getURL()Ljava/net/URL;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mortbay/resource/JarFileResource;-><init>(Ljava/net/URL;Z)V

    return-object v0
.end method


# virtual methods
.method public checkConnection()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lorg/mortbay/resource/JarResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v2, :cond_2

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    :cond_2
    throw v1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public exists()Z
    .locals 8

    iget-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_exists:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    const-string v2, "!/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->checkConnection()Z

    move-result v0

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    if-nez v3, :cond_2

    iput-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    return v1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->getUseCaches()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    if-nez v3, :cond_7

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "/"

    if-eqz v5, :cond_5

    iput-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_4

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_4

    iput-boolean v1, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :cond_9
    :goto_2
    iput-boolean v1, p0, Lorg/mortbay/resource/JarFileResource;->_exists:Z

    return v1
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/mortbay/resource/JarFileResource;->_directory:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public lastModified()J
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public length()J
    .locals 3

    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->isDirectory()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object p0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public declared-synchronized list()[Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lorg/mortbay/resource/JarFileResource;->checkConnection()Z

    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/JarURLConnection;

    invoke-virtual {p0}, Lorg/mortbay/resource/URLResource;->getUseCaches()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_5

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/resource/JarResource;->newConnection()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/resource/URLResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_path:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/mortbay/resource/JarResource;->_jarConnection:Ljava/net/JarURLConnection;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_list:[Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_file:Ljava/io/File;

    iput-object v0, p0, Lorg/mortbay/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    invoke-super {p0}, Lorg/mortbay/resource/JarResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
