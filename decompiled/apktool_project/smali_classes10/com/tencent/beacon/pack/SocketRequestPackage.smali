.class public final Lcom/tencent/beacon/pack/SocketRequestPackage;
.super Lcom/tencent/beacon/pack/AbstractJceStruct;
.source "SourceFile"


# static fields
.field static cache_body:[B

.field static cache_header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public body:[B

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/pack/SocketRequestPackage;->cache_header:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/beacon/pack/SocketRequestPackage;->cache_body:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractJceStruct;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/beacon/pack/SocketRequestPackage;->header:Ljava/util/Map;

    .line 3
    iput-object v0, p0, Lcom/tencent/beacon/pack/SocketRequestPackage;->body:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/tencent/beacon/pack/AbstractJceStruct;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/tencent/beacon/pack/SocketRequestPackage;->header:Ljava/util/Map;

    .line 6
    iput-object p2, p0, Lcom/tencent/beacon/pack/SocketRequestPackage;->body:[B

    return-void
.end method


# virtual methods
.method public readFrom(Lcom/tencent/beacon/pack/a;)V
    .locals 3

    sget-object v0, Lcom/tencent/beacon/pack/SocketRequestPackage;->cache_header:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/beacon/pack/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/beacon/pack/SocketRequestPackage;->header:Ljava/util/Map;

    sget-object v0, Lcom/tencent/beacon/pack/SocketRequestPackage;->cache_body:[B

    invoke-virtual {p1, v0, v2, v2}, Lcom/tencent/beacon/pack/a;->a([BIZ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/pack/SocketRequestPackage;->body:[B

    return-void
.end method

.method public writeTo(Lcom/tencent/beacon/pack/b;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/beacon/pack/SocketRequestPackage;->header:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/pack/b;->a(Ljava/util/Map;I)V

    iget-object p0, p0, Lcom/tencent/beacon/pack/SocketRequestPackage;->body:[B

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/tencent/beacon/pack/b;->a([BI)V

    return-void
.end method
