.class public Lnet/sf/saxon/lib/StandardResultDocumentResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ResultDocumentResolver;


# static fields
.field public static final a:Lnet/sf/saxon/lib/StandardResultDocumentResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/StandardResultDocumentResolver;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardResultDocumentResolver;-><init>()V

    sput-object v0, Lnet/sf/saxon/lib/StandardResultDocumentResolver;->a:Lnet/sf/saxon/lib/StandardResultDocumentResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/lib/StandardResultDocumentResolver;
    .locals 1

    sget-object v0, Lnet/sf/saxon/lib/StandardResultDocumentResolver;->a:Lnet/sf/saxon/lib/StandardResultDocumentResolver;

    return-object v0
.end method

.method public static declared-synchronized makeOutputFile(Ljava/net/URI;)Ljavax/xml/transform/stream/StreamResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-class v0, Lnet/sf/saxon/lib/StandardResultDocumentResolver;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write to URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SXRD0004"

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_2
    :try_start_1
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write to a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SXRD0004"

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot write to URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public close(Ljavax/xml/transform/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/xml/transform/stream/StreamResult;

    if-eqz p0, :cond_1

    check-cast p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v0, "Failed while closing output file"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public createResult(Ljava/net/URI;)Ljavax/xml/transform/stream/StreamResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/lib/StandardResultDocumentResolver;->makeOutputFile(Ljava/net/URI;)Ljavax/xml/transform/stream/StreamResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/lang/String;)V

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/stream/StreamResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "base"

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-string v2, "The system identifier of the principal output file is unknown"

    const-string v3, "relative"

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 6
    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/UnknownServiceException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 8
    :cond_1
    :try_start_2
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/UnknownServiceException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v4, v3

    .line 9
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v5
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/UnknownServiceException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v5, :cond_3

    if-eqz p2, :cond_2

    .line 10
    :try_start_4
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/UnknownServiceException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 11
    :try_start_5
    invoke-virtual {v1, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/UnknownServiceException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v3

    goto :goto_1

    .line 12
    :cond_2
    :try_start_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/UnknownServiceException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    move-object v0, v4

    .line 13
    :goto_1
    :try_start_7
    invoke-virtual {p0, v1}, Lnet/sf/saxon/lib/StandardResultDocumentResolver;->createResult(Ljava/net/URI;)Ljavax/xml/transform/stream/StreamResult;

    move-result-object p0
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/UnknownServiceException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    return-object p0

    :catch_0
    move-exception p0

    move-object v0, v4

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v4

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v0, v3

    goto :goto_3

    :catch_4
    move-exception p0

    .line 14
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Standard result document resolver failed"

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    .line 15
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Cannot open connection to specified URL"

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p0

    .line 16
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Specified protocol does not allow output"

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_7
    move-exception p0

    .line 17
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Resolved URL is malformed"

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_8
    move-exception p0

    .line 18
    :goto_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " URI syntax"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_9
    move-exception p0

    .line 19
    :goto_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid syntax for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " URI"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public resolve(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/lib/StandardResultDocumentResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/stream/StreamResult;

    move-result-object p0

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p0, p4, p1}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method
