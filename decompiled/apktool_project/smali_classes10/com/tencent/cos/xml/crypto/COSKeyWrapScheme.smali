.class Lcom/tencent/cos/xml/crypto/COSKeyWrapScheme;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AESWrap:Ljava/lang/String; = "AESWrap"

.field public static final RSA_ECB_OAEPWithSHA256AndMGF1Padding:Ljava/lang/String; = "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyWrapAlgorithm(Ljava/security/Key;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "AESWrap"

    return-object p0

    :cond_0
    const-string p1, "RSA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported key wrap algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "COSKeyWrapScheme"

    return-object p0
.end method
