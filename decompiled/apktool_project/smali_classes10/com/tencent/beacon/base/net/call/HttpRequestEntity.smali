.class public Lcom/tencent/beacon/base/net/call/HttpRequestEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;
    }
.end annotation


# instance fields
.field private bodyType:Lcom/tencent/beacon/base/net/BodyType;

.field private content:[B

.field private final formParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private json:Ljava/lang/String;

.field private final method:Lcom/tencent/beacon/base/net/HttpMethod;

.field private final tag:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/beacon/base/net/HttpMethod;Ljava/lang/String;Ljava/util/Map;Lcom/tencent/beacon/base/net/BodyType;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/beacon/base/net/BodyType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->method:Lcom/tencent/beacon/base/net/HttpMethod;

    .line 4
    iput-object p2, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->url:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->headers:Ljava/util/Map;

    .line 6
    iput-object p4, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->bodyType:Lcom/tencent/beacon/base/net/BodyType;

    .line 7
    iput-object p5, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->json:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->formParams:Ljava/util/Map;

    .line 9
    iput-object p7, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->content:[B

    .line 10
    iput-object p8, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->tag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/beacon/base/net/HttpMethod;Ljava/lang/String;Ljava/util/Map;Lcom/tencent/beacon/base/net/BodyType;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;Lcom/tencent/beacon/base/net/call/d;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;-><init>(Lcom/tencent/beacon/base/net/HttpMethod;Ljava/lang/String;Ljava/util/Map;Lcom/tencent/beacon/base/net/BodyType;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;
    .locals 1

    new-instance v0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bodyType()Lcom/tencent/beacon/base/net/BodyType;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->bodyType:Lcom/tencent/beacon/base/net/BodyType;

    return-object p0
.end method

.method public content()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->content:[B

    return-object p0
.end method

.method public formParams()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->formParams:Ljava/util/Map;

    return-object p0
.end method

.method public headers()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public json()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->json:Ljava/lang/String;

    return-object p0
.end method

.method public method()Lcom/tencent/beacon/base/net/HttpMethod;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->method:Lcom/tencent/beacon/base/net/HttpMethod;

    return-object p0
.end method

.method public tag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequestEntity{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", method="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->method:Lcom/tencent/beacon/base/net/HttpMethod;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", headers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->headers:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", formParams="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->formParams:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bodyType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->bodyType:Lcom/tencent/beacon/base/net/BodyType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", json=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->json:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->url:Ljava/lang/String;

    return-object p0
.end method
