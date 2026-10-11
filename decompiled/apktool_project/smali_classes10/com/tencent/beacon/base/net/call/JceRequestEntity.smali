.class public Lcom/tencent/beacon/base/net/call/JceRequestEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JceRequestEntity"


# instance fields
.field private final appKey:Ljava/lang/String;

.field private final content:[B

.field private final domain:Ljava/lang/String;

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I

.field private final requestCmd:I

.field private final responseCmd:I

.field private final type:Lcom/tencent/beacon/base/net/RequestType;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/beacon/base/net/RequestType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Map;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/RequestType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->type:Lcom/tencent/beacon/base/net/RequestType;

    .line 4
    iput-object p2, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->url:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->domain:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->port:I

    .line 7
    iput-object p5, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->appKey:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->content:[B

    .line 9
    iput-object p7, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->header:Ljava/util/Map;

    .line 10
    iput p8, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->requestCmd:I

    .line 11
    iput p9, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->responseCmd:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/beacon/base/net/RequestType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Map;IILcom/tencent/beacon/base/net/call/j;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;-><init>(Lcom/tencent/beacon/base/net/RequestType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Map;II)V

    return-void
.end method

.method public static builder()Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;
    .locals 1

    new-instance v0, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/call/JceRequestEntity$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->content:[B

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->header:Ljava/util/Map;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->port:I

    return p0
.end method

.method public getRequestCmd()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->requestCmd:I

    return p0
.end method

.method public getResponseCmd()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->responseCmd:I

    return p0
.end method

.method public getType()Lcom/tencent/beacon/base/net/RequestType;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->type:Lcom/tencent/beacon/base/net/RequestType;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->url:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JceRequestEntity{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->type:Lcom/tencent/beacon/base/net/RequestType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", domain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", port="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", appKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", content.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->content:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->header:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->requestCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->responseCmd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
