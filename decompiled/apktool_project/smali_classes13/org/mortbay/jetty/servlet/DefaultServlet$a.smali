.class public Lorg/mortbay/jetty/servlet/DefaultServlet$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/DefaultServlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lorg/mortbay/resource/Resource;

.field public final synthetic b:Lorg/mortbay/jetty/servlet/DefaultServlet;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/resource/Resource;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$a;->b:Lorg/mortbay/jetty/servlet/DefaultServlet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$a;->a:Lorg/mortbay/resource/Resource;

    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/mortbay/io/Buffer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$a;->a:Lorg/mortbay/resource/Resource;

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/mortbay/io/Buffer;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$a;->b:Lorg/mortbay/jetty/servlet/DefaultServlet;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->access$000(Lorg/mortbay/jetty/servlet/DefaultServlet;)Lorg/mortbay/jetty/MimeTypes;

    move-result-object v0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$a;->a:Lorg/mortbay/resource/Resource;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$a;->a:Lorg/mortbay/resource/Resource;

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getLastModified()Lorg/mortbay/io/Buffer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResource()Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$a;->a:Lorg/mortbay/resource/Resource;

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$a;->a:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$a;->a:Lorg/mortbay/resource/Resource;

    return-void
.end method
