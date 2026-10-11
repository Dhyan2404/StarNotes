.class public final Lcom/dropbox/core/v1/DbxClientV1$x;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "x"
.end annotation


# static fields
.field public static final synthetic j:Z


# instance fields
.field public final e:[B

.field public f:I

.field public g:Ljava/lang/String;

.field public h:J

.field public final synthetic i:Lcom/dropbox/core/v1/DbxClientV1;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->i:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    .line 4
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->e:[B

    .line 5
    iput p1, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;ILcom/dropbox/core/v1/DbxClientV1$k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v1/DbxClientV1$x;-><init>(Lcom/dropbox/core/v1/DbxClientV1;I)V

    return-void
.end method

.method public static synthetic H(Lcom/dropbox/core/v1/DbxClientV1$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$x;->M()V

    return-void
.end method

.method public static synthetic I(Lcom/dropbox/core/v1/DbxClientV1$x;)J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->h:J

    return-wide v0
.end method

.method public static synthetic f(Lcom/dropbox/core/v1/DbxClientV1$x;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/dropbox/core/v1/DbxClientV1$x;)I
    .locals 0

    iget p0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    return p0
.end method

.method public static synthetic w(Lcom/dropbox/core/v1/DbxClientV1$x;)[B
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->e:[B

    return-object p0
.end method


# virtual methods
.method public final M()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->g:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$x$a;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v1/DbxClientV1$x$a;-><init>(Lcom/dropbox/core/v1/DbxClientV1$x;)V

    invoke-static {v1, v0}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->g:Ljava/lang/String;

    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->h:J

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_0
    new-instance v4, Lcom/dropbox/core/v1/DbxClientV1$x$b;

    invoke-direct {v4, p0, v0, v3}, Lcom/dropbox/core/v1/DbxClientV1$x$b;-><init>(Lcom/dropbox/core/v1/DbxClientV1$x;Ljava/lang/String;I)V

    invoke-static {v1, v4}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->h:J

    iget v8, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    int-to-long v8, v8

    add-long/2addr v8, v6

    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-nez v10, :cond_2

    iput-wide v8, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->h:J

    :goto_1
    iput v2, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    return-void

    :cond_2
    sub-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final e0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->e:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$x;->M()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->e:[B

    iget v1, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$x;->e0()V
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;-><init>(Lcom/dropbox/core/DbxException;)V

    throw p1
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    sub-int/2addr v0, v1

    sub-int v1, p3, p2

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->e:[B

    iget v2, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v1, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/dropbox/core/v1/DbxClientV1$x;->f:I

    add-int/2addr p2, v0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$x;->e0()V
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;-><init>(Lcom/dropbox/core/DbxException;)V

    throw p1

    :cond_0
    return-void
.end method
