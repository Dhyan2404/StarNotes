.class public abstract Lorg/mortbay/jetty/AbstractBuffers;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/Buffers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;
    }
.end annotation


# static fields
.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public final h:[I

.field public final i:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->e:I

    const/16 v0, 0x2000

    iput v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->f:I

    const/16 v0, 0x6000

    iput v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->g:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    filled-new-array {v0, v1, v1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->h:[I

    new-instance v0, Lorg/mortbay/jetty/a;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/a;-><init>(Lorg/mortbay/jetty/AbstractBuffers;)V

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->i:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static synthetic f(Lorg/mortbay/jetty/AbstractBuffers;)[I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->h:[I

    return-object p0
.end method


# virtual methods
.method public doStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->e:I

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    iget v5, p0, Lorg/mortbay/jetty/AbstractBuffers;->g:I

    if-ne v0, v5, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->h:[I

    aget v0, p0, v4

    aget v1, p0, v3

    aget v5, p0, v2

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    aput v0, p0, v4

    aput v4, p0, v3

    aput v4, p0, v2

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->h:[I

    aget v0, p0, v4

    aget v1, p0, v3

    add-int/2addr v0, v1

    aput v0, p0, v4

    aput v4, p0, v3

    goto :goto_0

    :cond_1
    iget v5, p0, Lorg/mortbay/jetty/AbstractBuffers;->g:I

    if-ne v0, v5, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->h:[I

    aget v0, p0, v4

    aget v1, p0, v2

    add-int/2addr v0, v1

    aput v0, p0, v4

    aput v4, p0, v2

    goto :goto_0

    :cond_2
    if-ne v1, v5, :cond_3

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->h:[I

    aget v0, p0, v2

    aget v1, p0, v3

    add-int/2addr v0, v1

    aput v0, p0, v2

    aput v4, p0, v3

    :cond_3
    :goto_0
    return-void
.end method

.method public getBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 4

    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->e:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->g:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->f:I

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractBuffers;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;

    iget-object v2, v2, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->a:[[Lorg/mortbay/io/Buffer;

    aget-object v0, v2, v0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v3

    if-ne v3, p1, :cond_3

    const/4 p0, 0x0

    aput-object p0, v0, v1

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractBuffers;->newBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderBufferSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->e:I

    return p0
.end method

.method public getRequestBufferSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->f:I

    return p0
.end method

.method public getResponseBufferSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->g:I

    return p0
.end method

.method public abstract newBuffer(I)Lorg/mortbay/io/Buffer;
.end method

.method public returnBuffer(Lorg/mortbay/io/Buffer;)V
    .locals 3

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->e:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->g:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->f:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    :goto_0
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->a:[[Lorg/mortbay/io/Buffer;

    aget-object p0, p0, v0

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_5

    aget-object v0, p0, v2

    if-nez v0, :cond_4

    aput-object p1, p0, v2

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public setHeaderBufferSize(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lorg/mortbay/jetty/AbstractBuffers;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setRequestBufferSize(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lorg/mortbay/jetty/AbstractBuffers;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setResponseBufferSize(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lorg/mortbay/jetty/AbstractBuffers;->g:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/mortbay/jetty/AbstractBuffers;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/mortbay/jetty/AbstractBuffers;->g:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
