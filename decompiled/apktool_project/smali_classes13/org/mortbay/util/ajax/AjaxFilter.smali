.class public Lorg/mortbay/util/ajax/AjaxFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;
    }
.end annotation


# instance fields
.field public a:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x26

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_0

    move-object v5, v0

    goto :goto_1

    :cond_0
    const-string v5, "&gt;"

    goto :goto_1

    :cond_1
    const-string v5, "&lt;"

    goto :goto_1

    :cond_2
    const-string v5, "&amp;"

    :goto_1
    if-eqz v5, :cond_4

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter;->a:Ljavax/servlet/ServletContext;

    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string v0, "ajax"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-interface {p1, v1}, Ljavax/servlet/ServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "<ajax-response>"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v4}, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/PrintWriter;Lorg/mortbay/util/ajax/a;)V

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v4

    aget-object v6, v1, v4

    invoke-virtual {p0, v5, v6, p1, v3}, Lorg/mortbay/util/ajax/AjaxFilter;->handle(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "</ajax-response>"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string p1, "Pragma"

    const-string p3, "no-cache"

    invoke-interface {p2, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Cache-Control"

    const-string p3, "must-revalidate,no-cache,no-store"

    invoke-interface {p2, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Expires"

    const-wide/16 v0, 0x0

    invoke-interface {p2, p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    const-string p1, "text/xml; charset=UTF-8"

    invoke-interface {p2, p1}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    array-length p1, p0

    invoke-interface {p2, p1}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    goto :goto_1

    :cond_1
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    :goto_1
    return-void
.end method

.method public getContext()Ljavax/servlet/ServletContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/AjaxFilter;->a:Ljavax/servlet/ServletContext;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "<span class=\"error\">No implementation for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "member"

    invoke-interface {p3, p1}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</span>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p4, p1, p0}, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->elementResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/util/ajax/AjaxFilter;->a:Ljavax/servlet/ServletContext;

    return-void
.end method
