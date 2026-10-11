.class public Lcom/tencent/cos/xml/crypto/StaticEncryptionMaterialsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/crypto/EncryptionMaterialsProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private final materials:Lcom/tencent/cos/xml/crypto/EncryptionMaterials;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/crypto/EncryptionMaterials;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/StaticEncryptionMaterialsProvider;->materials:Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    return-void
.end method


# virtual methods
.method public getEncryptionMaterials()Lcom/tencent/cos/xml/crypto/EncryptionMaterials;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/StaticEncryptionMaterialsProvider;->materials:Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    return-object p0
.end method

.method public getEncryptionMaterials(Ljava/util/Map;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/cos/xml/crypto/EncryptionMaterials;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/StaticEncryptionMaterialsProvider;->materials:Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/StaticEncryptionMaterialsProvider;->materials:Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    return-object p0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/tencent/cos/xml/crypto/StaticEncryptionMaterialsProvider;->materials:Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    invoke-virtual {v2}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getAccessor()Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2, p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v3

    :goto_1
    if-eqz v0, :cond_5

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    .line 10
    iget-object v1, p0, Lcom/tencent/cos/xml/crypto/StaticEncryptionMaterialsProvider;->materials:Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    :cond_7
    return-object v1
.end method

.method public refresh()V
    .locals 0

    return-void
.end method
