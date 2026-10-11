.class public Lorg/mortbay/jetty/HttpParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/HttpParser$Input;,
        Lorg/mortbay/jetty/HttpParser$EventHandler;
    }
.end annotation


# static fields
.field public static final STATE_CHUNK:I = 0x6

.field public static final STATE_CHUNKED_CONTENT:I = 0x3

.field public static final STATE_CHUNK_PARAMS:I = 0x5

.field public static final STATE_CHUNK_SIZE:I = 0x4

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x0

.field public static final STATE_END0:I = -0x8

.field public static final STATE_END1:I = -0x7

.field public static final STATE_EOF_CONTENT:I = 0x1

.field public static final STATE_FIELD0:I = -0xc

.field public static final STATE_FIELD1:I = -0xa

.field public static final STATE_FIELD2:I = -0x6

.field public static final STATE_HEADER:I = -0x5

.field public static final STATE_HEADER_IN_NAME:I = -0x3

.field public static final STATE_HEADER_IN_VALUE:I = -0x1

.field public static final STATE_HEADER_NAME:I = -0x4

.field public static final STATE_HEADER_VALUE:I = -0x2

.field public static final STATE_SPACE1:I = -0xb

.field public static final STATE_SPACE2:I = -0x9

.field public static final STATE_START:I = -0xd


# instance fields
.field protected _chunkLength:I

.field protected _chunkPosition:I

.field protected _contentLength:J

.field protected _contentPosition:J

.field protected _eol:B

.field protected _length:I

.field protected _state:I

.field public a:Lorg/mortbay/io/Buffers;

.field public b:Lorg/mortbay/io/EndPoint;

.field public c:Lorg/mortbay/io/Buffer;

.field public d:Lorg/mortbay/io/Buffer;

.field public e:Lorg/mortbay/io/Buffer;

.field public f:Lorg/mortbay/io/View;

.field public g:I

.field public h:I

.field public i:Lorg/mortbay/jetty/HttpParser$EventHandler;

.field public j:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field public k:Lorg/mortbay/io/View$CaseInsensitive;

.field public l:Lorg/mortbay/io/View$CaseInsensitive;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Z

.field public p:Lorg/mortbay/jetty/HttpParser$Input;


# direct methods
.method public constructor <init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/jetty/HttpParser$EventHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/mortbay/io/View;

    invoke-direct {v0}, Lorg/mortbay/io/View;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->f:Lorg/mortbay/io/View;

    const/16 v0, -0xd

    .line 3
    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 4
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    .line 5
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    .line 6
    iput-object p2, p0, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    if-eqz p1, :cond_0

    .line 7
    new-instance p2, Lorg/mortbay/io/View$CaseInsensitive;

    invoke-direct {p2, p1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object p2, p0, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    .line 8
    new-instance p2, Lorg/mortbay/io/View$CaseInsensitive;

    invoke-direct {p2, p1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object p2, p0, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    .line 9
    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {p1}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 10
    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/HttpParser$EventHandler;II)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lorg/mortbay/io/View;

    invoke-direct {v0}, Lorg/mortbay/io/View;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->f:Lorg/mortbay/io/View;

    const/16 v0, -0xd

    .line 13
    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 14
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->a:Lorg/mortbay/io/Buffers;

    .line 15
    iput-object p2, p0, Lorg/mortbay/jetty/HttpParser;->b:Lorg/mortbay/io/EndPoint;

    .line 16
    iput-object p3, p0, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    .line 17
    iput p4, p0, Lorg/mortbay/jetty/HttpParser;->g:I

    .line 18
    iput p5, p0, Lorg/mortbay/jetty/HttpParser;->h:I

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/EndPoint;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser;->b:Lorg/mortbay/io/EndPoint;

    return-object p0
.end method

.method public static synthetic b(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/View;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser;->f:Lorg/mortbay/io/View;

    return-object p0
.end method

.method public static synthetic c(Lorg/mortbay/jetty/HttpParser;Lorg/mortbay/jetty/HttpParser$Input;)Lorg/mortbay/jetty/HttpParser$Input;
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->p:Lorg/mortbay/jetty/HttpParser$Input;

    return-object p1
.end method


# virtual methods
.method public fill()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->getHeaderBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    if-eq v1, v0, :cond_1

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    if-ne v1, v0, :cond_2

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->compact()V

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/mortbay/jetty/HttpException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "FULL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-ne v2, p0, :cond_3

    const-string p0, "body"

    goto :goto_0

    :cond_3
    const-string p0, "head"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x19d

    invoke-direct {v0, v1, p0}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->b:Lorg/mortbay/io/EndPoint;

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/EndPoint;->fill(Lorg/mortbay/io/Buffer;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/HttpParser;->reset(Z)V

    instance-of p0, v0, Lorg/mortbay/jetty/EofException;

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lorg/mortbay/jetty/EofException;

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, p0

    :goto_1
    throw v0

    :cond_6
    const/4 p0, -0x1

    :goto_2
    int-to-long v0, p0

    return-wide v0
.end method

.method public getBodyBuffer()Lorg/mortbay/io/Buffer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    return-wide v0
.end method

.method public getContentRead()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    return-wide v0
.end method

.method public getHeaderBuffer()Lorg/mortbay/io/Buffer;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->a:Lorg/mortbay/io/Buffers;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->g:I

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    return-object p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    return p0
.end method

.method public inContentState()Z
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public inHeaderState()Z
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChunking()Z
    .locals 4

    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComplete()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result p0

    return p0
.end method

.method public isIdle()Z
    .locals 1

    const/16 v0, -0xd

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result p0

    return p0
.end method

.method public isMoreInBuffer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isState(I)Z
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpParser;->reset(Z)V

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_2

    :goto_0
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "!START"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parseAvailable()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->isComplete()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    add-long/2addr v0, v4

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public parseNext()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    const-wide/16 v2, -0x1

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->a:Lorg/mortbay/io/Buffers;

    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->g:I

    invoke-interface {v0, v4}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    :cond_1
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, v4}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, v4}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    :cond_2
    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v4, :cond_3

    iget-wide v6, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    iget-wide v8, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    iput v5, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0, v6, v7}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    return-wide v2

    :cond_3
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, -0x1

    if-nez v0, :cond_f

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_4

    iget-object v11, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    if-eq v11, v0, :cond_4

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v10

    :goto_0
    iget-object v11, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v11}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v11

    const/16 v12, 0x19d

    if-nez v11, :cond_6

    iget-object v11, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v11}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v11

    iget-object v13, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v13}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v13

    if-eq v11, v13, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const-string v1, "FULL"

    invoke-direct {v0, v12, v1}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    iget-object v11, v1, Lorg/mortbay/jetty/HttpParser;->b:Lorg/mortbay/io/EndPoint;

    if-eqz v11, :cond_b

    if-gtz v0, :cond_b

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    iget-object v11, v1, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-ne v0, v11, :cond_7

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->compact()V

    :cond_7
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/mortbay/jetty/HttpException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "FULL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-ne v3, v1, :cond_8

    const-string v1, "body"

    goto :goto_2

    :cond_8
    const-string v1, "head"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    :try_start_0
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->b:Lorg/mortbay/io/EndPoint;

    iget-object v11, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v11}, Lorg/mortbay/io/EndPoint;->fill(Lorg/mortbay/io/Buffer;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_a

    int-to-long v11, v0

    add-long/2addr v11, v6

    goto :goto_3

    :cond_a
    move-wide v11, v6

    :goto_3
    move-wide v12, v11

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    move-object v11, v0

    move-wide v12, v6

    move v0, v10

    goto :goto_5

    :cond_b
    move-wide v12, v2

    :goto_4
    const/4 v11, 0x0

    :goto_5
    if-gez v0, :cond_e

    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-ne v0, v8, :cond_d

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iget-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->f:Lorg/mortbay/io/View;

    invoke-virtual {v2, v0}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    :cond_c
    iput v5, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v1, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    return-wide v12

    :cond_d
    invoke-virtual {v1, v8}, Lorg/mortbay/jetty/HttpParser;->reset(Z)V

    new-instance v0, Lorg/mortbay/jetty/EofException;

    invoke-direct {v0, v11}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    goto :goto_6

    :cond_f
    move-wide v12, v2

    :goto_6
    iget-object v11, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v11}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v11

    :goto_7
    iget v14, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    const/16 v15, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-gez v14, :cond_4f

    add-int/lit8 v14, v0, -0x1

    if-lez v0, :cond_4f

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v0

    iget-byte v4, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    if-ne v4, v15, :cond_10

    if-ne v0, v2, :cond_10

    iput-byte v2, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    move v9, v10

    move-object v4, v11

    const-wide/16 v10, -0x1

    goto/16 :goto_1b

    :cond_10
    iput-byte v5, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    const/16 v6, 0x3a

    const/4 v7, -0x5

    const/4 v5, -0x2

    const/16 v9, 0x9

    packed-switch v4, :pswitch_data_0

    :cond_11
    :goto_8
    :pswitch_0
    move v9, v10

    move-object v4, v11

    const/4 v5, 0x0

    :goto_9
    const-wide/16 v10, -0x1

    goto/16 :goto_1d

    :pswitch_1
    if-eq v0, v9, :cond_16

    if-eq v0, v2, :cond_12

    if-eq v0, v15, :cond_12

    if-eq v0, v3, :cond_16

    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v0, v8

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    goto :goto_8

    :cond_12
    iget v2, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v2, :cond_15

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget v5, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/io/View;->update(II)V

    goto :goto_a

    :cond_13
    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    if-nez v2, :cond_14

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/mortbay/io/View;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    :cond_14
    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget v5, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/io/View;->update(II)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/mortbay/io/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    :cond_15
    :goto_a
    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iput v7, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto :goto_8

    :cond_16
    iput v5, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto :goto_8

    :pswitch_2
    if-eq v0, v9, :cond_11

    if-eq v0, v2, :cond_18

    if-eq v0, v15, :cond_18

    if-eq v0, v3, :cond_11

    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-ne v0, v10, :cond_17

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    :cond_17
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    iput v10, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_8

    :cond_18
    iget v2, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v2, :cond_1b

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget v5, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/io/View;->update(II)V

    goto :goto_b

    :cond_19
    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    if-nez v2, :cond_1a

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/mortbay/io/View;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    :cond_1a
    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget v5, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/io/View;->update(II)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/mortbay/io/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    :cond_1b
    :goto_b
    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iput v7, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_8

    :pswitch_3
    if-eq v0, v9, :cond_1e

    if-eq v0, v2, :cond_1f

    if-eq v0, v15, :cond_1f

    if-eq v0, v3, :cond_1e

    if-eq v0, v6, :cond_1c

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/mortbay/jetty/HttpParser;->j:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v0, v8

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    goto/16 :goto_8

    :cond_1c
    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v0, :cond_1d

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->j:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_1d

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v3

    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/View;->update(II)V

    :cond_1d
    iput v10, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    iput v5, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_8

    :cond_1e
    const/4 v0, -0x4

    goto :goto_c

    :cond_1f
    iget v2, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v2, :cond_20

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget v5, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/io/View;->update(II)V

    :cond_20
    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iput v7, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_8

    :goto_c
    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_8

    :pswitch_4
    if-eq v0, v9, :cond_11

    if-eq v0, v2, :cond_24

    if-eq v0, v15, :cond_24

    if-eq v0, v3, :cond_11

    if-eq v0, v6, :cond_22

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/mortbay/jetty/HttpParser;->j:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-ne v0, v10, :cond_21

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    :cond_21
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    const/4 v0, -0x3

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_8

    :cond_22
    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v0, :cond_23

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->j:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_23

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v3

    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/View;->update(II)V

    :cond_23
    iput v10, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    iput v5, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_8

    :cond_24
    iget v2, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v2, :cond_25

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget v5, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/io/View;->update(II)V

    :cond_25
    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iput v7, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_8

    :pswitch_5
    if-eq v0, v9, :cond_40

    if-eq v0, v3, :cond_40

    if-eq v0, v6, :cond_40

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->j:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v3, :cond_27

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_27

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_27

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    if-eqz v3, :cond_26

    goto :goto_d

    :cond_26
    move-object/from16 v16, v11

    goto/16 :goto_11

    :cond_27
    :goto_d
    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->j:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v3, :cond_28

    goto :goto_e

    :cond_28
    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3, v4}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v3

    :goto_e
    const/4 v4, 0x0

    iput-object v4, v1, Lorg/mortbay/jetty/HttpParser;->j:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    if-nez v4, :cond_29

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    goto :goto_f

    :cond_29
    new-instance v4, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v6, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    :goto_f
    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v6, v3}, Lorg/mortbay/io/BufferCache;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v6

    if-ltz v6, :cond_2f

    const/4 v7, 0x5

    move-object/from16 v16, v11

    const-wide/16 v10, -0x2

    if-eq v6, v7, :cond_2b

    const/16 v7, 0xc

    if-eq v6, v7, :cond_2a

    goto :goto_10

    :cond_2a
    iget-wide v6, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_30

    :try_start_1
    invoke-static {v4}, Lorg/mortbay/io/BufferUtil;->toLong(Lorg/mortbay/io/Buffer;)J

    move-result-wide v6

    iput-wide v6, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-gtz v6, :cond_30

    iput-wide v10, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto :goto_10

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v0

    :cond_2b
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v6, v4}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/mortbay/io/BufferCache;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v7, v6, :cond_2c

    iput-wide v10, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto :goto_10

    :cond_2c
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "chunked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iput-wide v10, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto :goto_10

    :cond_2d
    const-string v7, "chunked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2e

    goto :goto_10

    :cond_2e
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2f
    move-object/from16 v16, v11

    :cond_30
    :goto_10
    iget-object v6, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v6, v3, v4}, Lorg/mortbay/jetty/HttpParser$EventHandler;->parsedHeader(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    :goto_11
    if-eq v0, v15, :cond_34

    if-ne v0, v2, :cond_31

    goto :goto_12

    :cond_31
    iput v8, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    const/4 v0, -0x4

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-eqz v16, :cond_32

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v2

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v4, v16

    invoke-virtual {v0, v4, v2, v3}, Lorg/mortbay/io/BufferCache;->getBest([BII)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->j:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v0

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v2

    iget v3, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v2, v3

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    const/4 v5, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    goto/16 :goto_1e

    :cond_32
    move-object/from16 v4, v16

    :cond_33
    const/4 v5, 0x0

    const/4 v9, -0x1

    goto/16 :goto_9

    :cond_34
    :goto_12
    iget-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/16 v6, -0x3

    cmp-long v2, v2, v6

    if-nez v2, :cond_37

    iget v2, v1, Lorg/mortbay/jetty/HttpParser;->n:I

    if-eqz v2, :cond_36

    const/16 v3, 0x130

    if-eq v2, v3, :cond_36

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_36

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_35

    goto :goto_13

    :cond_35
    const-wide/16 v10, -0x1

    iput-wide v10, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto :goto_14

    :cond_36
    :goto_13
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto :goto_15

    :cond_37
    :goto_14
    const-wide/16 v2, 0x0

    :goto_15
    iput-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iget-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v2, v6

    if-lez v0, :cond_38

    const v0, 0x7fffffff

    goto :goto_16

    :cond_38
    long-to-int v0, v2

    :goto_16
    if-eq v0, v5, :cond_3e

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3c

    if-eqz v0, :cond_3b

    const/4 v6, 0x2

    iput v6, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-boolean v0, v1, Lorg/mortbay/jetty/HttpParser;->o:Z

    if-nez v0, :cond_39

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->a:Lorg/mortbay/io/Buffers;

    if-eqz v0, :cond_3a

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_3a

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    if-ne v0, v4, :cond_3a

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v0

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3a

    :cond_39
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->a:Lorg/mortbay/io/Buffers;

    iget v2, v1, Lorg/mortbay/jetty/HttpParser;->h:I

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    :cond_3a
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    goto :goto_17

    :cond_3b
    const/4 v2, 0x0

    iput v2, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v1, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto :goto_17

    :cond_3c
    iput v8, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_3d

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->a:Lorg/mortbay/io/Buffers;

    if-eqz v0, :cond_3d

    iget v2, v1, Lorg/mortbay/jetty/HttpParser;->h:I

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    :cond_3d
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    goto :goto_17

    :cond_3e
    const/4 v0, 0x3

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_3f

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->a:Lorg/mortbay/io/Buffers;

    if-eqz v0, :cond_3f

    iget v2, v1, Lorg/mortbay/jetty/HttpParser;->h:I

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, v1, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    :cond_3f
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    :goto_17
    return-wide v12

    :cond_40
    move-object v4, v11

    const/4 v6, 0x2

    const-wide/16 v10, -0x1

    const/4 v9, -0x1

    iput v9, v1, Lorg/mortbay/jetty/HttpParser;->_length:I

    iput v5, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_1c

    :pswitch_6
    move v9, v10

    move-object v4, v11

    const/4 v6, 0x2

    const-wide/16 v10, -0x1

    if-eq v0, v15, :cond_41

    if-ne v0, v2, :cond_4c

    :cond_41
    sget-object v2, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v2, v3}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    if-ne v2, v3, :cond_42

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_42

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/mortbay/io/AbstractBuffer;->peek()B

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-static {v2}, Lorg/mortbay/io/BufferUtil;->toInt(Lorg/mortbay/io/Buffer;)I

    move-result v2

    iput v2, v1, Lorg/mortbay/jetty/HttpParser;->n:I

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    sget-object v3, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v5, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3, v5}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v3

    iget v5, v1, Lorg/mortbay/jetty/HttpParser;->n:I

    iget-object v15, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v15}, Lorg/mortbay/io/Buffer;->sliceFromMark()Lorg/mortbay/io/Buffer;

    move-result-object v15

    invoke-virtual {v2, v3, v5, v15}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startResponse(Lorg/mortbay/io/Buffer;ILorg/mortbay/io/Buffer;)V

    goto :goto_18

    :cond_42
    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-object v5, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    sget-object v15, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v6, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->sliceFromMark()Lorg/mortbay/io/Buffer;

    move-result-object v6

    invoke-virtual {v15, v6}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v6

    invoke-virtual {v3, v2, v5, v6}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    :goto_18
    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iput v7, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/mortbay/jetty/HttpParser;->m:Ljava/lang/String;

    goto/16 :goto_1b

    :pswitch_7
    move v9, v10

    move-object v4, v11

    const/4 v2, 0x0

    const-wide/16 v10, -0x1

    if-gt v0, v3, :cond_45

    if-gez v0, :cond_43

    goto :goto_19

    :cond_43
    if-ge v0, v3, :cond_44

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    sget-object v3, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v3, v4}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v3

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0, v3, v4, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    const/4 v2, 0x0

    iput v2, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v1, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    return-wide v12

    :cond_44
    move-object v5, v2

    goto/16 :goto_1d

    :cond_45
    :goto_19
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    const/4 v0, -0x6

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_1c

    :pswitch_8
    move v9, v10

    move-object v4, v11

    const-wide/16 v10, -0x1

    if-ne v0, v3, :cond_46

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/View;->update(II)V

    const/16 v0, -0x9

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto :goto_1b

    :cond_46
    if-ge v0, v3, :cond_4c

    if-ltz v0, :cond_4c

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    sget-object v2, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v2, v3}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->sliceFromMark()Lorg/mortbay/io/Buffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    const/4 v2, 0x0

    iput v2, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v1, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    return-wide v12

    :pswitch_9
    move v9, v10

    move-object v4, v11

    const-wide/16 v10, -0x1

    if-gt v0, v3, :cond_49

    if-gez v0, :cond_47

    goto :goto_1a

    :cond_47
    if-lt v0, v3, :cond_48

    goto :goto_1c

    :cond_48
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v0

    :cond_49
    :goto_1a
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    const/16 v0, -0xa

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto :goto_1c

    :pswitch_a
    move v9, v10

    move-object v4, v11

    const-wide/16 v10, -0x1

    if-ne v0, v3, :cond_4a

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/View;->update(II)V

    const/16 v0, -0xb

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    :goto_1b
    move-wide v2, v10

    move v0, v14

    goto :goto_1f

    :cond_4a
    if-ge v0, v3, :cond_4c

    if-gez v0, :cond_4b

    goto :goto_1c

    :cond_4b
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v0

    :cond_4c
    :goto_1c
    const/4 v5, 0x0

    goto :goto_1d

    :pswitch_b
    move v9, v10

    move-object v4, v11

    const-wide/16 v5, -0x3

    const-wide/16 v10, -0x1

    iput-wide v5, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const/4 v5, 0x0

    iput-object v5, v1, Lorg/mortbay/jetty/HttpParser;->j:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-gt v0, v3, :cond_4d

    if-gez v0, :cond_4e

    :cond_4d
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    const/16 v0, -0xc

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    :cond_4e
    :goto_1d
    move v0, v14

    :goto_1e
    move-wide v2, v10

    :goto_1f
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v11, v4

    move v10, v9

    const/4 v4, 0x2

    goto/16 :goto_7

    :cond_4f
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    :goto_20
    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-lez v4, :cond_64

    if-lez v0, :cond_64

    iget-byte v4, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    if-ne v4, v15, :cond_50

    iget-object v4, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v4

    if-ne v4, v2, :cond_50

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v0

    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    goto :goto_20

    :cond_50
    const/4 v4, 0x0

    iput-byte v4, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    const/4 v5, 0x6

    packed-switch v4, :pswitch_data_1

    const/4 v4, 0x0

    const/4 v6, 0x3

    :goto_21
    const-wide/16 v7, 0x0

    goto/16 :goto_26

    :pswitch_c
    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    iget v5, v1, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    sub-int/2addr v4, v5

    if-nez v4, :cond_51

    const/4 v6, 0x3

    iput v6, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_25

    :cond_51
    if-le v0, v4, :cond_52

    move v0, v4

    :cond_52
    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v0}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iget-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    iget v2, v1, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->f:Lorg/mortbay/io/View;

    invoke-virtual {v2, v0}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    iget-object v1, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    return-wide v12

    :pswitch_d
    const/4 v6, 0x3

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v0

    if-eq v0, v15, :cond_53

    if-ne v0, v2, :cond_60

    :cond_53
    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    if-nez v0, :cond_54

    const/4 v4, 0x0

    iput v4, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v1, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    return-wide v12

    :cond_54
    iput v5, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_25

    :pswitch_e
    const/4 v6, 0x3

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v0

    if-eq v0, v15, :cond_5b

    if-ne v0, v2, :cond_55

    goto :goto_23

    :cond_55
    if-le v0, v3, :cond_5a

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_56

    goto :goto_22

    :cond_56
    const/16 v4, 0x30

    if-lt v0, v4, :cond_57

    const/16 v4, 0x39

    if-gt v0, v4, :cond_57

    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v4, v0

    iput v4, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    goto/16 :goto_25

    :cond_57
    const/16 v4, 0x61

    if-lt v0, v4, :cond_58

    const/16 v4, 0x66

    if-gt v0, v4, :cond_58

    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x61

    add-int/2addr v4, v0

    iput v4, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    goto :goto_25

    :cond_58
    const/16 v4, 0x41

    if-lt v0, v4, :cond_59

    const/16 v4, 0x46

    if-gt v0, v4, :cond_59

    iget v4, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x41

    add-int/2addr v4, v0

    iput v4, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    goto :goto_25

    :cond_59
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bad chunk char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    :goto_22
    const/4 v0, 0x5

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto :goto_25

    :cond_5b
    :goto_23
    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iget v0, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    if-nez v0, :cond_5c

    const/4 v4, 0x0

    iput v4, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v1, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    return-wide v12

    :cond_5c
    iput v5, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto :goto_25

    :pswitch_f
    const/4 v6, 0x3

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v0

    if-eq v0, v15, :cond_5f

    if-ne v0, v2, :cond_5d

    goto :goto_24

    :cond_5d
    if-gt v0, v3, :cond_5e

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    goto :goto_25

    :cond_5e
    const/4 v4, 0x0

    iput v4, v1, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    iput v4, v1, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    const/4 v0, 0x4

    iput v0, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto :goto_25

    :cond_5f
    :goto_24
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v0

    iput-byte v0, v1, Lorg/mortbay/jetty/HttpParser;->_eol:B

    :cond_60
    :goto_25
    const/4 v4, 0x0

    goto/16 :goto_21

    :pswitch_10
    iget-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    iget-wide v4, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    sub-long/2addr v2, v4

    const-wide/16 v7, 0x0

    cmp-long v6, v2, v7

    if-nez v6, :cond_61

    const/4 v6, 0x0

    iput v6, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    return-wide v12

    :cond_61
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_62

    long-to-int v0, v2

    :cond_62
    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v0}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iget-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->f:Lorg/mortbay/io/View;

    invoke-virtual {v2, v0}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    iget-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    iget-wide v4, v1, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_63

    const/4 v4, 0x0

    iput v4, v1, Lorg/mortbay/jetty/HttpParser;->_state:I

    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    :cond_63
    return-wide v12

    :pswitch_11
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iget-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    iget-object v2, v1, Lorg/mortbay/jetty/HttpParser;->f:Lorg/mortbay/io/View;

    invoke-virtual {v2, v0}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    iget-object v1, v1, Lorg/mortbay/jetty/HttpParser;->i:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    return-wide v12

    :goto_26
    iget-object v0, v1, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    goto/16 :goto_20

    :cond_64
    return-wide v12

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->f:Lorg/mortbay/io/View;

    invoke-virtual {v0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    const/16 v0, -0xd

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->n:I

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-byte v1, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/mortbay/io/Buffer;->skip(I)I

    iput-byte v2, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v3}, Lorg/mortbay/io/Buffer;->setMarkIndex(I)V

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->compact()V

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v1

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    :cond_1
    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v5

    invoke-interface {v4, v5, v1}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    iget-object v5, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v6

    invoke-interface {v4, v6, v1}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-interface {v5, v1}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result v1

    invoke-interface {v4, v1}, Lorg/mortbay/io/Buffer;->skip(I)I

    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->a:Lorg/mortbay/io/Buffers;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v4}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    :cond_3
    iput-object v2, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v3}, Lorg/mortbay/io/Buffer;->setMarkIndex(I)V

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->compact()V

    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_7

    invoke-interface {v1, v3}, Lorg/mortbay/io/Buffer;->setMarkIndex(I)V

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->a:Lorg/mortbay/io/Buffers;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, p1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    iput-object v2, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    iput-object v2, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->compact()V

    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, v1}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser;->k:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {p1, v0, v0}, Lorg/mortbay/io/View;->update(II)V

    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, v1}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser;->l:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {p1, v0, v0}, Lorg/mortbay/io/View;->update(II)V

    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->e:Lorg/mortbay/io/Buffer;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setForceContentBuffer(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpParser;->o:Z

    return-void
.end method

.method public setState(I)V
    .locals 2

    iput p1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    return-void
.end method

.method public skipCRLF()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/16 v3, 0xd

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v0

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->c:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffer;->skip(I)I

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v0

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->d:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v2}, Lorg/mortbay/io/Buffer;->skip(I)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, " buf="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
