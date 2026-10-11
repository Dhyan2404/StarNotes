.class public Lorg/mortbay/servlet/jetty/IncludableGzipFilter;
.super Lorg/mortbay/servlet/GzipFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;,
        Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;
    }
.end annotation


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/servlet/GzipFilter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter;->e:Z

    return-void
.end method


# virtual methods
.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/mortbay/servlet/GzipFilter;->init(Ljavax/servlet/FilterConfig;)V

    const-string v0, "uncheckedPrintWriter"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter;->e:Z

    :cond_0
    return-void
.end method

.method public newGZIPResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    .locals 1

    new-instance v0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;-><init>(Lorg/mortbay/servlet/jetty/IncludableGzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-object v0
.end method

.method public newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter;->e:Z

    if-eqz v0, :cond_1

    new-instance p0, Lorg/mortbay/io/UncheckedPrintWriter;

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mortbay/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;)V

    :goto_0
    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method
