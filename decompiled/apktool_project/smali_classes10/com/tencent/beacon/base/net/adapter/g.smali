.class public Lcom/tencent/beacon/base/net/adapter/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/base/net/adapter/g$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/beacon/d/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p0

    sput-object p0, Lcom/tencent/beacon/base/net/adapter/g;->a:Lcom/tencent/beacon/d/b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/beacon/base/net/adapter/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/base/net/adapter/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/beacon/base/net/adapter/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/beacon/base/net/adapter/g$a;->a:Lcom/tencent/beacon/base/net/adapter/g;

    return-object v0
.end method

.method private a([BI)[B
    .locals 1

    add-int/lit8 p2, p2, 0x4

    .line 17
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 18
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v0, 0xffff

    and-int/2addr p2, v0

    int-to-short p2, p2

    .line 19
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p1, 0xd

    .line 21
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 p1, 0xa

    .line 22
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 23
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/pack/RequestPackageV2;)[B
    .locals 4

    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/base/net/adapter/g;->a:Lcom/tencent/beacon/d/b;

    invoke-virtual {v1}, Lcom/tencent/beacon/d/b;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v0, :cond_0

    .line 3
    new-instance v1, Lcom/tencent/beacon/pack/SocketRequestPackage;

    invoke-static {}, Lcom/tencent/beacon/base/net/b/d;->e()Ljava/util/Map;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/tencent/beacon/pack/AbstractJceStruct;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lcom/tencent/beacon/pack/SocketRequestPackage;-><init>(Ljava/util/Map;[B)V

    .line 5
    new-instance p1, Lcom/tencent/beacon/pack/b;

    invoke-direct {p1}, Lcom/tencent/beacon/pack/b;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Lcom/tencent/beacon/pack/SocketRequestPackage;->writeTo(Lcom/tencent/beacon/pack/b;)V

    .line 7
    invoke-virtual {p1}, Lcom/tencent/beacon/pack/b;->b()[B

    move-result-object p1

    .line 8
    array-length v1, p1

    invoke-direct {p0, p1, v1}, Lcom/tencent/beacon/base/net/adapter/g;->a([BI)[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/tencent/beacon/base/util/b;->b([BI)[B

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    sget-object p0, Lcom/tencent/beacon/base/net/adapter/g;->a:Lcom/tencent/beacon/d/b;

    invoke-virtual {p0}, Lcom/tencent/beacon/d/b;->c()I

    move-result p0

    if-ne p0, v2, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/tencent/beacon/pack/AbstractJceStruct;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/tencent/beacon/base/util/b;->b([BI)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "QuicAdapter quic generate data error: %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, v1}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 14
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object p0

    .line 15
    sget-object v1, Lcom/tencent/beacon/base/net/adapter/g;->a:Lcom/tencent/beacon/d/b;

    invoke-virtual {v1}, Lcom/tencent/beacon/d/b;->c()I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string v0, "471"

    goto :goto_0

    :cond_1
    const-string v0, "474"

    .line 16
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
