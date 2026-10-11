.class public Lorg/mortbay/resource/ResourceCollection;
.super Lorg/mortbay/resource/Resource;
.source "SourceFile"


# instance fields
.field private _resources:[Lorg/mortbay/resource/Resource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lorg/mortbay/resource/ResourceCollection;->setResources(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lorg/mortbay/resource/ResourceCollection;->setResources([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Lorg/mortbay/resource/Resource;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mortbay/resource/Resource;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/mortbay/resource/ResourceCollection;->setResources([Lorg/mortbay/resource/Resource;)V

    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v2, v3, v1

    invoke-virtual {v2, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    :goto_2
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v5, v4

    if-ge v1, v5, :cond_6

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    if-eqz v3, :cond_8

    new-instance p0, Lorg/mortbay/resource/ResourceCollection;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/mortbay/resource/Resource;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/resource/Resource;

    invoke-direct {p0, p1}, Lorg/mortbay/resource/ResourceCollection;-><init>([Lorg/mortbay/resource/Resource;)V

    return-object p0

    :cond_8
    return-object v0

    :cond_9
    :goto_3
    return-object p0

    :cond_a
    new-instance p0, Ljava/net/MalformedURLException;

    invoke-direct {p0}, Ljava/net/MalformedURLException;-><init>()V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "*resources* not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public delete()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public exists()Z
    .locals 1

    iget-object p0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findResource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v2, v3, v1

    invoke-virtual {v2, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    :goto_2
    iget-object v4, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v5, v4

    if-ge v1, v5, :cond_5

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    if-eqz v3, :cond_7

    return-object v3

    :cond_7
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResources()[Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    return-object p0
.end method

.method public getURL()Ljava/net/URL;
    .locals 3

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDirectory()Z
    .locals 1

    iget-object p0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public lastModified()J
    .locals 5

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v1

    const-wide/16 v3, -0x1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "*resources* not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public renameTo(Lorg/mortbay/resource/Resource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setResources(Ljava/lang/String;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    .line 23
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ",;"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    if-eqz p1, :cond_2

    .line 25
    new-array p1, p1, [Lorg/mortbay/resource/Resource;

    iput-object p1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    const/4 p1, 0x0

    .line 26
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    aput-object v2, v1, p1

    .line 28
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, " is not an existing directory."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 30
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg *resources* must be one or more resources."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "*csvResources* must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "*resources* already set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setResources([Ljava/lang/String;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    .line 12
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 13
    array-length v0, p1

    new-array v0, v0, [Lorg/mortbay/resource/Resource;

    iput-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    const/4 v0, 0x0

    .line 14
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 15
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    aput-object v2, v1, v0

    .line 16
    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, " is not an existing directory."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 19
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg *resources* must be one or more resources."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "*resources* must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "*resources* already set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setResources([Lorg/mortbay/resource/Resource;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 3
    iput-object p1, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 5
    aget-object v0, v0, p1

    .line 6
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, " is not an existing directory."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg *resources* must be one or more resources."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "*resources* must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "*resources* already set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setResourcesAsCSV(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/resource/ResourceCollection;->setResources(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mortbay/resource/ResourceCollection;->_resources:[Lorg/mortbay/resource/Resource;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
