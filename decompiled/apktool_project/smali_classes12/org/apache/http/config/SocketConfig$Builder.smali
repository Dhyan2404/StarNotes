.class public Lorg/apache/http/config/SocketConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/config/SocketConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/config/SocketConfig$Builder;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/config/SocketConfig$Builder;->e:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/config/SocketConfig;
    .locals 10

    new-instance v9, Lorg/apache/http/config/SocketConfig;

    iget v1, p0, Lorg/apache/http/config/SocketConfig$Builder;->a:I

    iget-boolean v2, p0, Lorg/apache/http/config/SocketConfig$Builder;->b:Z

    iget v3, p0, Lorg/apache/http/config/SocketConfig$Builder;->c:I

    iget-boolean v4, p0, Lorg/apache/http/config/SocketConfig$Builder;->d:Z

    iget-boolean v5, p0, Lorg/apache/http/config/SocketConfig$Builder;->e:Z

    iget v6, p0, Lorg/apache/http/config/SocketConfig$Builder;->f:I

    iget v7, p0, Lorg/apache/http/config/SocketConfig$Builder;->g:I

    iget v8, p0, Lorg/apache/http/config/SocketConfig$Builder;->h:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/config/SocketConfig;-><init>(IZIZZIII)V

    return-object v9
.end method

.method public setBacklogSize(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->h:I

    return-object p0
.end method

.method public setRcvBufSize(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->g:I

    return-object p0
.end method

.method public setSndBufSize(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->f:I

    return-object p0
.end method

.method public setSoKeepAlive(Z)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->d:Z

    return-object p0
.end method

.method public setSoLinger(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->c:I

    return-object p0
.end method

.method public setSoReuseAddress(Z)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->b:Z

    return-object p0
.end method

.method public setSoTimeout(I)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->a:I

    return-object p0
.end method

.method public setTcpNoDelay(Z)Lorg/apache/http/config/SocketConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/config/SocketConfig$Builder;->e:Z

    return-object p0
.end method
