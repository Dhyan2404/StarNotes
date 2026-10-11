.class public abstract Lorg/mortbay/jetty/AbstractGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/Generator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;,
        Lorg/mortbay/jetty/AbstractGenerator$Output;
    }
.end annotation


# static fields
.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x4

.field public static final STATE_FLUSHING:I = 0x3

.field public static final STATE_HEADER:I = 0x0

.field public static final b:[B

.field public static c:I = 0x200

.field public static d:[Lorg/mortbay/io/Buffer;

.field public static synthetic e:Ljava/lang/Class;


# instance fields
.field protected _buffer:Lorg/mortbay/io/Buffer;

.field protected _buffers:Lorg/mortbay/io/Buffers;

.field protected _close:Z

.field protected _content:Lorg/mortbay/io/Buffer;

.field protected _contentBufferSize:I

.field protected _contentLength:J

.field protected _contentWritten:J

.field protected _endp:Lorg/mortbay/io/EndPoint;

.field protected _head:Z

.field protected _header:Lorg/mortbay/io/Buffer;

.field protected _headerBufferSize:I

.field protected _last:Z

.field protected _method:Lorg/mortbay/io/Buffer;

.field protected _noContent:Z

.field protected _reason:Lorg/mortbay/io/Buffer;

.field protected _state:I

.field protected _status:I

.field protected _uri:Ljava/lang/String;

.field protected _version:I

.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lorg/mortbay/jetty/AbstractGenerator;->b:[B

    const/16 v1, 0x1f9

    new-array v1, v1, [Lorg/mortbay/io/Buffer;

    sput-object v1, Lorg/mortbay/jetty/AbstractGenerator;->d:[Lorg/mortbay/io/Buffer;

    sget-object v1, Lorg/mortbay/jetty/AbstractGenerator;->e:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "javax.servlet.http.HttpServletResponse"

    invoke-static {v1}, Lorg/mortbay/jetty/AbstractGenerator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/AbstractGenerator;->e:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SC_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    aget-object v2, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lorg/mortbay/jetty/AbstractGenerator;->d:[Lorg/mortbay/io/Buffer;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    new-instance v4, Lorg/mortbay/io/ByteArrayBuffer;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    const/16 v1, 0xb

    iput v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    const-wide/16 v1, -0x3

    iput-wide v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iput-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iput p3, p0, Lorg/mortbay/jetty/AbstractGenerator;->_headerBufferSize:I

    iput p4, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    return-void
.end method

.method public static synthetic a()[B
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/AbstractGenerator;->b:[B

    return-object v0
.end method

.method public static synthetic b()I
    .locals 1

    sget v0, Lorg/mortbay/jetty/AbstractGenerator;->c:I

    return v0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/mortbay/jetty/AbstractGenerator;->d:[Lorg/mortbay/io/Buffer;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object v0, v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/mortbay/util/TypeUtil;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getReasonBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 3

    sget-object v0, Lorg/mortbay/jetty/AbstractGenerator;->d:[Lorg/mortbay/io/Buffer;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    return-object v2
.end method


# virtual methods
.method public c()V
    .locals 4

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->clear()V

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->clear()V

    :cond_2
    return-void
.end method

.method public complete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ContentLength written=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " != contentLength=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State==HEADER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public d(I)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/mortbay/io/Buffer;->put(B)V

    return-void
.end method

.method public abstract flush()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContentBufferSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    return p0
.end method

.method public getContentWritten()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    return-wide v0
.end method

.method public getSendServerVersion()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->a:Z

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    return p0
.end method

.method public getUncheckedBuffer()Lorg/mortbay/io/Buffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    return p0
.end method

.method public increaseContentBufferSize(I)V
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentBufferSize:I

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    invoke-interface {v0, p1}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    :cond_0
    return-void
.end method

.method public isBufferFull()Z
    .locals 3

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->compact()V

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->space()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public isCommitted()Z
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComplete()Z
    .locals 1

    iget p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContentWritten()Z
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHead()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    return p0
.end method

.method public isIdle()Z
    .locals 1

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    iget p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPersistent()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isState(I)Z
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract prepareUncheckedAddContent()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public reset(Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    const/16 v1, 0xb

    iput v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    invoke-interface {v0, p1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    :cond_0
    iput-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    invoke-interface {v0, p1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    :cond_1
    iput-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    :cond_3
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffers:Lorg/mortbay/io/Buffers;

    invoke-interface {v0, p1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    :cond_4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    iput-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetBuffer()V
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_last:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentWritten:J

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->clear()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Flushed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    iput-boolean p4, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator;->isCommitted()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/AbstractGenerator;->setResponse(ILjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/AbstractGenerator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    if-eqz p3, :cond_1

    new-instance p1, Lorg/mortbay/io/View;

    new-instance p2, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {p2, p3}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lorg/mortbay/jetty/Generator;->addContent(Lorg/mortbay/io/Buffer;Z)V

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator;->complete()V

    :cond_2
    return-void
.end method

.method public setContentLength(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, -0x3

    iput-wide p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_contentLength:J

    :goto_0
    return-void
.end method

.method public setHead(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_head:Z

    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_close:Z

    return-void
.end method

.method public setRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lorg/mortbay/jetty/HttpMethods;->GET_BUFFER:Lorg/mortbay/io/Buffer;

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    :goto_1
    iput-object p2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_uri:Ljava/lang/String;

    iget p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    :cond_2
    return-void
.end method

.method public setResponse(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-nez v0, :cond_3

    iput p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_status:I

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_headerBufferSize:I

    div-int/lit8 v1, v0, 0x2

    if-le p1, v1, :cond_0

    div-int/lit8 p1, v0, 0x2

    :cond_0
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    int-to-byte v1, v1

    invoke-interface {v2, v1}, Lorg/mortbay/io/Buffer;->put(B)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_reason:Lorg/mortbay/io/Buffer;

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lorg/mortbay/io/Buffer;->put(B)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "STATE!=START"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSendServerVersion(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->a:Z

    return-void
.end method

.method public setVersion(I)V
    .locals 1

    iget v0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_state:I

    if-nez v0, :cond_1

    iput p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_version:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_method:Lorg/mortbay/io/Buffer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mortbay/jetty/AbstractGenerator;->_noContent:Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "STATE!=START"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
