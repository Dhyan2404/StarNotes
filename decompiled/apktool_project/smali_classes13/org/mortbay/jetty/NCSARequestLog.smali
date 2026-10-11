.class public Lorg/mortbay/jetty/NCSARequestLog;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/RequestLog;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/Locale;

.field public n:Ljava/lang/String;

.field public o:[Ljava/lang/String;

.field public p:Z

.field public q:Z

.field public r:Z

.field public transient s:Ljava/io/OutputStream;

.field public transient t:Ljava/io/OutputStream;

.field public transient u:Lorg/mortbay/util/DateCache;

.field public transient v:Lorg/mortbay/jetty/servlet/PathMap;

.field public transient w:Ljava/io/Writer;

.field public transient x:Ljava/util/ArrayList;

.field public transient y:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    .line 2
    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->l:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->m:Ljava/util/Locale;

    const-string v0, "GMT"

    .line 5
    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->p:Z

    .line 7
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->q:Z

    .line 8
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->r:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->f:Z

    .line 10
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->g:Z

    const/16 v0, 0x1f

    .line 11
    iput v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    .line 13
    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->l:Ljava/lang/String;

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->m:Ljava/util/Locale;

    const-string v0, "GMT"

    .line 16
    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->p:Z

    .line 18
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->q:Z

    .line 19
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->r:Z

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->f:Z

    .line 21
    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->g:Z

    const/16 v0, 0x1f

    .line 22
    iput v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->h:I

    .line 23
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/NCSARequestLog;->setFilename(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mortbay/util/DateCache;

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->k:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->m:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->u:Lorg/mortbay/util/DateCache;

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/util/DateCache;->setTimeZoneID(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/mortbay/util/RolloverFileOutputStream;

    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/mortbay/jetty/NCSARequestLog;->g:Z

    iget v4, p0, Lorg/mortbay/jetty/NCSARequestLog;->h:I

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    iget-object v6, p0, Lorg/mortbay/jetty/NCSARequestLog;->l:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->t:Ljava/io/OutputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->i:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Opened "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/NCSARequestLog;->getDatedFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->t:Ljava/io/OutputStream;

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->t:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->s:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->o:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->v:Lorg/mortbay/jetty/servlet/PathMap;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->o:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->v:Lorg/mortbay/jetty/servlet/PathMap;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1, v1}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->v:Lorg/mortbay/jetty/servlet/PathMap;

    :cond_3
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->s:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->x:Ljava/util/ArrayList;

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->y:[C

    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    return-void
.end method

.method public doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->s:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->i:Z

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->s:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->t:Ljava/io/OutputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->i:Z

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->u:Lorg/mortbay/util/DateCache;

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->x:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->y:[C

    return-void
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->t:Ljava/io/OutputStream;

    instance-of v0, p0, Lorg/mortbay/util/RolloverFileOutputStream;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-virtual {p0}, Lorg/mortbay/util/RolloverFileOutputStream;->getDatedFilename()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getFilenameDateFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getIgnorePaths()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->o:[Ljava/lang/String;

    return-object p0
.end method

.method public getLogCookies()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->q:Z

    return p0
.end method

.method public getLogDateFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getLogLatency()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->p:Z

    return p0
.end method

.method public getLogLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->m:Ljava/util/Locale;

    return-object p0
.end method

.method public getLogServer()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->r:Z

    return p0
.end method

.method public getLogTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getRetainDays()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->h:I

    return p0
.end method

.method public isAppend()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->g:Z

    return p0
.end method

.method public isExtended()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->f:Z

    return p0
.end method

.method public log(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)V
    .locals 12

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->v:Lorg/mortbay/jetty/servlet/PathMap;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/PathMap;->getMatch(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->t:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/mortbay/util/Utf8StringBuffer;

    const/16 v2, 0xa0

    invoke-direct {v1, v2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->x:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/util/Utf8StringBuffer;

    :goto_0
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->r:Z

    const/16 v3, 0x20

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->j:Z

    if-eqz v0, :cond_5

    const-string v0, "X-Forwarded-For"

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getRemoteUser()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, " - "

    :cond_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->u:Lorg/mortbay/util/DateCache;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getTimeStampBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v0, "] \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getUri()Lorg/mortbay/jetty/HttpURI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpURI;->writeTo(Lorg/mortbay/util/Utf8StringBuffer;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\" "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v0

    if-gtz v0, :cond_9

    const/16 v0, 0x194

    :cond_9
    div-int/lit8 v4, v0, 0x64

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    div-int/lit8 v4, v0, 0xa

    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/mortbay/jetty/Response;->getContentCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/32 v6, 0x1869f

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_a
    const-wide/16 v6, 0x270f

    cmp-long v0, v4, v6

    const-wide/16 v6, 0x30

    const-wide/16 v8, 0xa

    if-lez v0, :cond_b

    const-wide/16 v10, 0x2710

    div-long v10, v4, v10

    rem-long/2addr v10, v8

    add-long/2addr v10, v6

    long-to-int v0, v10

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b
    const-wide/16 v10, 0x3e7

    cmp-long v0, v4, v10

    if-lez v0, :cond_c

    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    rem-long/2addr v10, v8

    add-long/2addr v10, v6

    long-to-int v0, v10

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    const-wide/16 v10, 0x63

    cmp-long v0, v4, v10

    if-lez v0, :cond_d

    const-wide/16 v10, 0x64

    div-long v10, v4, v10

    rem-long/2addr v10, v8

    add-long/2addr v10, v6

    long-to-int v0, v10

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    const-wide/16 v10, 0x9

    cmp-long v0, v4, v10

    if-lez v0, :cond_e

    div-long v10, v4, v8

    rem-long/2addr v10, v8

    add-long/2addr v10, v6

    long-to-int v0, v10

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_e
    rem-long/2addr v4, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_f
    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->f:Z

    const/4 v4, 0x0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->q:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->p:Z

    if-nez v0, :cond_11

    iget-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    monitor-enter p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    sget-object p2, Lorg/mortbay/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->y:[C

    array-length v3, v0

    if-le p2, v3, :cond_10

    array-length p2, v0

    :cond_10
    invoke-virtual {v2, v4, p2, v0, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->y:[C

    invoke-virtual {v0, v2, v4, p2}, Ljava/io/Writer;->write([CII)V

    iget-object p2, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    iget-object p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->x:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_11
    iget-object v0, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    monitor-enter v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iget-object v6, p0, Lorg/mortbay/jetty/NCSARequestLog;->y:[C

    array-length v7, v6

    if-le v5, v7, :cond_12

    array-length v5, v6

    :cond_12
    invoke-virtual {v2, v4, v5, v6, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    iget-object v6, p0, Lorg/mortbay/jetty/NCSARequestLog;->y:[C

    invoke-virtual {v2, v6, v4, v5}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    iget-object v2, p0, Lorg/mortbay/jetty/NCSARequestLog;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->f:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, v1}, Lorg/mortbay/jetty/NCSARequestLog;->logExtended(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/io/Writer;)V

    :cond_13
    iget-boolean p2, p0, Lorg/mortbay/jetty/NCSARequestLog;->q:Z

    if-eqz p2, :cond_18

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object p2

    if-eqz p2, :cond_17

    array-length v1, p2

    if-nez v1, :cond_14

    goto :goto_6

    :cond_14
    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_5
    array-length v1, p2

    if-ge v4, v1, :cond_16

    if-eqz v4, :cond_15

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    :cond_15
    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    iget-object v1, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_16
    iget-object p2, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    const/16 v1, 0x22

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_7

    :cond_17
    :goto_6
    iget-object p2, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    const-string v1, " -"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_18
    :goto_7
    iget-boolean p2, p0, Lorg/mortbay/jetty/NCSARequestLog;->p:Z

    if-eqz p2, :cond_19

    iget-object p2, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    iget-object p2, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lorg/mortbay/util/TypeUtil;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_19
    iget-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    sget-object p2, Lorg/mortbay/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mortbay/jetty/NCSARequestLog;->w:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    monitor-exit v0

    goto :goto_8

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_3
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method public logExtended(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "Referer"

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "\"-\" "

    const/16 v0, 0x22

    if-nez p0, :cond_0

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, "\" "

    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const-string p0, "User-Agent"

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(I)V

    :goto_1
    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->g:Z

    return-void
.end method

.method public setExtended(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->f:Z

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->e:Ljava/lang/String;

    return-void
.end method

.method public setFilenameDateFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->l:Ljava/lang/String;

    return-void
.end method

.method public setIgnorePaths([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->o:[Ljava/lang/String;

    return-void
.end method

.method public setLogCookies(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->q:Z

    return-void
.end method

.method public setLogDateFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->k:Ljava/lang/String;

    return-void
.end method

.method public setLogLatency(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->p:Z

    return-void
.end method

.method public setLogLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->m:Ljava/util/Locale;

    return-void
.end method

.method public setLogServer(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->r:Z

    return-void
.end method

.method public setLogTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->n:Ljava/lang/String;

    return-void
.end method

.method public setPreferProxiedForAddress(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->j:Z

    return-void
.end method

.method public setRetainDays(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/NCSARequestLog;->h:I

    return-void
.end method
