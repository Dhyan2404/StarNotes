.class public Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;
.super Lorg/mortbay/servlet/GzipFilter$GzipStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/jetty/IncludableGzipFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncludableGzipStream"
.end annotation


# instance fields
.field public final synthetic g:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;


# direct methods
.method public constructor <init>(Lorg/mortbay/servlet/jetty/IncludableGzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;->g:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/servlet/GzipFilter$GzipStream;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V

    return-void
.end method


# virtual methods
.method public setContentEncodingGzip()Z
    .locals 2

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
