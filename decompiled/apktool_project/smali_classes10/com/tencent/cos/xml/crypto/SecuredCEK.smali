.class Lcom/tencent/cos/xml/crypto/SecuredCEK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final encrypted:[B

.field private final keyWrapAlgorithm:Ljava/lang/String;

.field private final matdesc:Ljava/util/Map;
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
.method public constructor <init>([BLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/SecuredCEK;->encrypted:[B

    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/SecuredCEK;->keyWrapAlgorithm:Ljava/lang/String;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/SecuredCEK;->matdesc:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getEncrypted()[B
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/SecuredCEK;->encrypted:[B

    return-object p0
.end method

.method public getKeyWrapAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/SecuredCEK;->keyWrapAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getMaterialDescription()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/SecuredCEK;->matdesc:Ljava/util/Map;

    return-object p0
.end method
