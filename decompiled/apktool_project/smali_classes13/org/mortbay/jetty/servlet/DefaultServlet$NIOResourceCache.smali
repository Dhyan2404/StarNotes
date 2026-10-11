.class Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;
.super Lorg/mortbay/jetty/ResourceCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/DefaultServlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NIOResourceCache"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/jetty/MimeTypes;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;

    invoke-direct {p0, p2}, Lorg/mortbay/jetty/ResourceCache;-><init>(Lorg/mortbay/jetty/MimeTypes;)V

    return-void
.end method


# virtual methods
.method public fill(Lorg/mortbay/jetty/ResourceCache$Content;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v1

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;

    invoke-static {p0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->access$100(Lorg/mortbay/jetty/servlet/DefaultServlet;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/nio/NIOConnector;

    invoke-interface {v0}, Lorg/mortbay/jetty/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    long-to-int v3, v1

    invoke-direct {v0, v3}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    long-to-int v3, v1

    invoke-direct {v0, v3}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    long-to-int v3, v1

    invoke-direct {v0, v3}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V

    :goto_0
    long-to-int v1, v1

    invoke-interface {v0, p0, v1}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    move-object p0, v0

    :goto_1
    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/ResourceCache$Content;->setBuffer(Lorg/mortbay/io/Buffer;)V

    return-void
.end method
