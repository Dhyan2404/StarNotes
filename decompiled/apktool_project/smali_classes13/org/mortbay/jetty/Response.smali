.class public Lorg/mortbay/jetty/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/Response$a;
    }
.end annotation


# static fields
.field public static final DISABLED:I = -0x1

.field public static final NONE:I = 0x0

.field public static final STREAM:I = 0x1

.field public static final WRITER:I = 0x2

.field public static l:Ljava/io/PrintWriter;

.field public static m:Ljavax/servlet/ServletOutputStream;


# instance fields
.field public a:Lorg/mortbay/jetty/HttpConnection;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Locale;

.field public e:Ljava/lang/String;

.field public f:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/io/PrintWriter;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-static {}, Lorg/mortbay/util/IO;->getNullWriter()Ljava/io/Writer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/mortbay/jetty/Response;->l:Ljava/io/PrintWriter;

    new-instance v0, Lorg/mortbay/jetty/Response$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/Response$a;-><init>(Lorg/mortbay/jetty/i;)V

    sput-object v0, Lorg/mortbay/jetty/Response;->m:Ljavax/servlet/ServletOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lorg/mortbay/jetty/Response;->b:I

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    return-object p0
.end method

.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->addSetCookie(Ljavax/servlet/http/Cookie;)V

    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->addDateField(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    :cond_0
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/mortbay/jetty/HttpFields;->addLongField(Ljava/lang/String;J)V

    const-string p2, "Content-Length"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0, v1, v2}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    :cond_0
    return-void
.end method

.method public complete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->completeResponse()V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0}, Lorg/mortbay/jetty/SessionManager;->getSessionURLPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    const-string v2, "#"

    const-string v3, "?"

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->isRequestedSessionIdFromCookie()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p0

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    invoke-interface {v0, p0}, Lorg/mortbay/jetty/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v6

    if-nez v6, :cond_4

    return-object p1

    :cond_4
    invoke-interface {v0, p0}, Lorg/mortbay/jetty/SessionManager;->getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_7

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_5

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    :cond_5
    if-gt v3, v0, :cond_6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_8

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_8
    if-gez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v4, :cond_d

    invoke-virtual {p1, v3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_b

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :cond_b
    if-gt v0, p0, :cond_c

    invoke-virtual {p1, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object p1
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public flushBuffer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->flushResponse()V

    return-void
.end method

.method public getBufferSize()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object p0

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->getContentBufferSize()I

    move-result p0

    return p0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getContentCount()J
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object p0

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->getContentWritten()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getHttpFields()Lorg/mortbay/jetty/HttpFields;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->d:Ljava/util/Locale;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/jetty/Response;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/mortbay/jetty/Response;->m:Ljavax/servlet/ServletOutputStream;

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "WRITER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput v1, p0, Lorg/mortbay/jetty/Response;->j:I

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/Response;->b:I

    return p0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/jetty/Response;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/mortbay/jetty/Response;->l:Ljava/io/PrintWriter;

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "STREAM"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->k:Ljava/io/PrintWriter;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-nez v0, :cond_4

    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Response;->setCharacterEncoding(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/HttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->k:Ljava/io/PrintWriter;

    :cond_6
    iput v1, p0, Lorg/mortbay/jetty/Response;->j:I

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->k:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public isCommitted()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->isResponseCommitted()Z

    move-result p0

    return p0
.end method

.method public isWriting()Z
    .locals 1

    iget p0, p0, Lorg/mortbay/jetty/Response;->j:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recycle()V
    .locals 2

    const/16 v0, 0xc8

    iput v0, p0, Lorg/mortbay/jetty/Response;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->d:Ljava/util/Locale;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/Response;->h:Z

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iput v1, p0, Lorg/mortbay/jetty/Response;->j:I

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->k:Ljava/io/PrintWriter;

    return-void
.end method

.method public reset()V
    .locals 6

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->resetBuffer()V

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->clear()V

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/HttpFields;->getStringField(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v2}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    const-string v3, "TE"

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HTTP/1.0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    const-string v3, "keep-alive"

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v3, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v1

    invoke-interface {v1}, Lorg/mortbay/jetty/Connector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getSendDateHeader()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->DATE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getTimeStampBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    :cond_5
    const/16 v0, 0xc8

    iput v0, p0, Lorg/mortbay/jetty/Response;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/Response;->h:Z

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->d:Ljava/util/Locale;

    iput v1, p0, Lorg/mortbay/jetty/Response;->j:I

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->k:Ljava/io/PrintWriter;

    return-void
.end method

.method public resetBuffer()V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object p0

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->resetBuffer()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Committed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->sendProcessing()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Committed before "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->resetBuffer()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    const-string v1, "Expires"

    .line 6
    invoke-virtual {p0, v1, v0}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Last-Modified"

    .line 7
    invoke-virtual {p0, v1, v0}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cache-Control"

    .line 8
    invoke-virtual {p0, v1, v0}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    .line 9
    invoke-virtual {p0, v2, v0}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    .line 10
    invoke-virtual {p0, v2, v0}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lorg/mortbay/jetty/Response;->j:I

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/Response;->setStatus(ILjava/lang/String;)V

    if-nez p2, :cond_2

    .line 13
    invoke-static {p1}, Lorg/mortbay/jetty/AbstractGenerator;->getReason(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/16 v3, 0xcc

    const/16 v4, 0xce

    if-eq p1, v3, :cond_9

    const/16 v3, 0x130

    if-eq p1, v3, :cond_9

    if-eq p1, v4, :cond_9

    const/16 v3, 0xc8

    if-lt p1, v3, :cond_9

    .line 14
    iget-object v3, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v4}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/handler/ContextHandler;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_4

    .line 17
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string p1, "javax.servlet.error.status_code"

    invoke-virtual {v3, p1, v1}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "javax.servlet.error.message"

    .line 18
    invoke-virtual {v3, p1, p2}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "javax.servlet.error.request_uri"

    .line 19
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "javax.servlet.error.servlet_name"

    .line 20
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getServletName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {v4, v0, p1, p0, p2}, Lorg/mortbay/jetty/handler/ErrorHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "must-revalidate,no-cache,no-store"

    .line 22
    invoke-virtual {p0, v1, v0}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html; charset=iso-8859-1"

    .line 23
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Response;->setContentType(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lorg/mortbay/util/ByteArrayISO8859Writer;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;-><init>(I)V

    const-string v1, "&gt;"

    const-string v4, ">"

    const-string v5, "&lt;"

    const-string v6, "<"

    const-string v7, "&amp;"

    const-string v8, "&"

    if-eqz p2, :cond_5

    .line 25
    invoke-static {p2, v8, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-static {p2, v6, v5}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {p2, v4, v1}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 28
    :cond_5
    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 29
    invoke-static {v3, v8, v7}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v3, v6, v5}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-static {v3, v4, v1}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    const-string v1, "<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n"

    .line 32
    invoke-virtual {v0, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v1, "<title>Error "

    .line 33
    invoke-virtual {v0, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 35
    invoke-virtual {v0, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(C)V

    if-nez p2, :cond_7

    .line 36
    invoke-static {p1}, Lorg/mortbay/jetty/AbstractGenerator;->getReason(I)Ljava/lang/String;

    move-result-object p2

    .line 37
    :cond_7
    invoke-virtual {v0, p2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v1, "</title>\n</head>\n<body>\n<h2>HTTP ERROR: "

    .line 38
    invoke-virtual {v0, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string p1, "</h2>\n<p>Problem accessing "

    .line 40
    invoke-virtual {v0, p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string p1, ". Reason:\n<pre>    "

    .line 42
    invoke-virtual {v0, p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p2}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string p1, "</pre>"

    .line 44
    invoke-virtual {v0, p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string p1, "</p>\n<hr /><i><small>Powered by Jetty://</small></i>"

    .line 45
    invoke-virtual {v0, p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0x14

    if-ge v2, p1, :cond_8

    const-string p1, "\n                                                "

    .line 46
    invoke-virtual {v0, p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const-string p1, "\n</body>\n</html>\n"

    .line 47
    invoke-virtual {v0, p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->flush()V

    .line 49
    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 50
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 51
    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->destroy()V

    goto :goto_2

    :cond_9
    if-eq p1, v4, :cond_a

    .line 52
    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object p2, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, p2}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    .line 53
    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object p2, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, p2}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    .line 54
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 57
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    return-void
.end method

.method public sendProcessing()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    instance-of v1, v0, Lorg/mortbay/jetty/HttpGenerator;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mortbay/jetty/HttpGenerator;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p0

    const-string v1, "Expect"

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "102"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->getVersion()I

    move-result p0

    const/16 v1, 0xb

    if-lt p0, v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isPersistent()Z

    move-result p0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/AbstractGenerator;->setResponse(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/mortbay/jetty/HttpGenerator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/AbstractGenerator;->setPersistent(Z)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpGenerator;->complete()V

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpGenerator;->reset(Z)V

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/AbstractGenerator;->setPersistent(Z)V

    :cond_0
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_9

    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getRootURL()Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/mortbay/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/mortbay/jetty/HttpURI;

    invoke-direct {v0, p1}, Lorg/mortbay/jetty/HttpURI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getRootURL()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "path cannot be above root"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->resetBuffer()V

    const-string v0, "Location"

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x12e

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->setStatus(I)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setBufferSize(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getContentCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/Generator;->increaseContentBufferSize(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Committed or content written"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/Response;->j:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/Response;->h:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    if-eqz p1, :cond_7

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    if-eqz p1, :cond_7

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const-string v1, "; charset="

    const-string v2, ";= "

    if-gez p1, :cond_4

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v3, p1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    :cond_3
    iget-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    const-string v3, "charset="

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    goto :goto_0

    :cond_5
    add-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    goto :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setContentLength(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    if-ltz p1, :cond_2

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->putLongField(Ljava/lang/String;J)V

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    iget-object p1, p1, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p1}, Lorg/mortbay/jetty/Generator;->isContentWritten()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/mortbay/jetty/Response;->j:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->k:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->d:Ljava/util/Locale;

    if-nez p1, :cond_1

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    :cond_1
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    sget-object p1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, ";= "

    const-string v3, "; charset="

    if-lez v1, :cond_12

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    sget-object v6, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v6, v5}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    add-int/lit8 v5, v1, 0x1

    const-string v7, "charset="

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/Response;->h:Z

    add-int/lit8 v0, v7, 0x8

    const/16 v8, 0x20

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    iget v10, p0, Lorg/mortbay/jetty/Response;->j:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    if-ne v7, v5, :cond_3

    if-ltz v9, :cond_4

    :cond_3
    add-int/2addr v1, v11

    if-ne v7, v1, :cond_7

    if-gez v9, :cond_7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_7

    :cond_4
    iget-object p1, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, " charset="

    if-gez v9, :cond_8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    if-ne v7, v5, :cond_a

    if-ltz v9, :cond_b

    :cond_a
    add-int/2addr v1, v11

    if-ne v7, v1, :cond_e

    if-gez v9, :cond_e

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_e

    :cond_b
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    sget-object p1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_1

    :cond_c
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    if-lez v9, :cond_f

    invoke-virtual {p1, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    if-eqz v1, :cond_15

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_1

    :cond_13
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    :cond_14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    :cond_15
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_1

    :cond_16
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    :cond_17
    :goto_1
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const-wide/16 p1, -0x1

    invoke-interface {p0, p1, p2}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/mortbay/jetty/HttpFields;->putLongField(Ljava/lang/String;J)V

    const-string p2, "Content-Length"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0, v1, v2}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->d:Ljava/util/Locale;

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LANGUAGE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/mortbay/jetty/Response;->h:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/mortbay/jetty/Response;->j:I

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->g:Ljava/lang/String;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "; charset="

    if-gez v1, :cond_3

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    :goto_0
    sget-object p1, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/Response;->f:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object p1, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setLongContentLength(J)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1, p2}, Lorg/mortbay/jetty/HttpFields;->putLongField(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStatus(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/Response;->setStatus(ILjava/lang/String;)V

    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lorg/mortbay/jetty/Response;->b:I

    .line 4
    iput-object p2, p0, Lorg/mortbay/jetty/Response;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/Response;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/Response;->a:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
