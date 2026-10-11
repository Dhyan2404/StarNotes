.class public Lorg/mortbay/jetty/ResourceCache$Content;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/ResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Content"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/mortbay/resource/Resource;

.field public c:J

.field public d:Lorg/mortbay/jetty/ResourceCache$Content;

.field public e:Lorg/mortbay/jetty/ResourceCache$Content;

.field public f:Lorg/mortbay/io/Buffer;

.field public g:Lorg/mortbay/io/Buffer;

.field public h:Lorg/mortbay/io/Buffer;

.field public final synthetic i:Lorg/mortbay/jetty/ResourceCache;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/ResourceCache;Lorg/mortbay/resource/Resource;)V
    .locals 1

    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->i:Lorg/mortbay/jetty/ResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->b:Lorg/mortbay/resource/Resource;

    iput-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    invoke-static {p1}, Lorg/mortbay/jetty/ResourceCache;->access$000(Lorg/mortbay/jetty/ResourceCache;)Lorg/mortbay/jetty/MimeTypes;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->b:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->g:Lorg/mortbay/io/Buffer;

    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->a:Ljava/lang/String;

    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->i:Lorg/mortbay/jetty/ResourceCache;

    iget-object v1, v0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object p0, v0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-eqz v1, :cond_0

    iput-object p0, v1, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    iget-object v1, v0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-nez v1, :cond_1

    iput-object p0, v0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    :cond_1
    iget-object v0, v0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->i:Lorg/mortbay/jetty/ResourceCache;

    iget v0, p1, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->h:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    iget-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->i:Lorg/mortbay/jetty/ResourceCache;

    iget v0, p1, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    iget-wide v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->c:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    new-instance p1, Lorg/mortbay/io/ByteArrayBuffer;

    iget-wide v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->c:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->formatDate(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->f:Lorg/mortbay/io/Buffer;

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->c:J

    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->b:Lorg/mortbay/resource/Resource;

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->i:Lorg/mortbay/jetty/ResourceCache;

    iget-object v1, v0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-eq v1, p0, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    iget-object v3, p0, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object p0, v0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-eqz v1, :cond_0

    iput-object p0, v1, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    if-eqz v2, :cond_1

    iput-object v3, v2, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    :cond_1
    if-eqz v3, :cond_2

    iput-object v2, v3, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    :cond_2
    iget-object v1, v0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-ne v1, p0, :cond_3

    if-eqz v2, :cond_3

    iput-object v2, v0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/ResourceCache$Content;->invalidate()V

    const/4 p0, 0x0

    return p0
.end method

.method public getBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->h:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/mortbay/io/View;

    iget-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->h:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, p0}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->h:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->b:Lorg/mortbay/resource/Resource;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getContentType()Lorg/mortbay/io/Buffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->g:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->b:Lorg/mortbay/resource/Resource;

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()Lorg/mortbay/io/Buffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->f:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public getResource()Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->b:Lorg/mortbay/resource/Resource;

    return-object p0
.end method

.method public invalidate()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->i:Lorg/mortbay/jetty/ResourceCache;

    iget-object v0, v0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->i:Lorg/mortbay/jetty/ResourceCache;

    iget v2, v1, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    iget-object v3, p0, Lorg/mortbay/jetty/ResourceCache$Content;->h:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->i:Lorg/mortbay/jetty/ResourceCache;

    iget v2, v1, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    iget-object v2, v1, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-ne v2, p0, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v2, v1, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    iget-object v3, p0, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v3, v2, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    :goto_0
    iget-object v2, v1, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    if-ne v2, p0, :cond_1

    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v2, v1, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    iget-object v2, p0, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v2, v1, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    :goto_1
    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->d:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->e:Lorg/mortbay/jetty/ResourceCache$Content;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->b:Lorg/mortbay/resource/Resource;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->release()V

    :cond_2
    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->b:Lorg/mortbay/resource/Resource;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCached()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/ResourceCache$Content;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setBuffer(Lorg/mortbay/io/Buffer;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->h:Lorg/mortbay/io/Buffer;

    return-void
.end method

.method public setContentType(Lorg/mortbay/io/Buffer;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache$Content;->g:Lorg/mortbay/io/Buffer;

    return-void
.end method
