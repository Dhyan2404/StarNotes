.class public abstract Lorg/mortbay/jetty/nio/AbstractNIOConnector;
.super Lorg/mortbay/jetty/AbstractConnector;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/nio/NIOConnector;


# instance fields
.field public G0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractConnector;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->G0:Z

    return-void
.end method


# virtual methods
.method public getUseDirectBuffers()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->G0:Z

    return p0
.end method

.method public newBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractBuffers;->getHeaderBufferSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    new-instance p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    invoke-direct {p0, p1}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->G0:Z

    if-eqz p0, :cond_1

    new-instance p0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    invoke-direct {p0, p1}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    invoke-direct {p0, p1}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V

    :goto_0
    return-object p0
.end method

.method public setUseDirectBuffers(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->G0:Z

    return-void
.end method
