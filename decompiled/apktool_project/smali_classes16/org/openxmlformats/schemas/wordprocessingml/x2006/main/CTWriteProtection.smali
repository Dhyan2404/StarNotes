.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWriteProtection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWriteProtection;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctwriteprotection6a7atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWriteProtection;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWriteProtection;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlgIdExt()[B
.end method

.method public abstract getAlgIdExtSource()Ljava/lang/String;
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getCryptAlgorithmClass()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass$Enum;
.end method

.method public abstract getCryptAlgorithmSid()Ljava/math/BigInteger;
.end method

.method public abstract getCryptAlgorithmType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;
.end method

.method public abstract getCryptProvider()Ljava/lang/String;
.end method

.method public abstract getCryptProviderType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;
.end method

.method public abstract getCryptProviderTypeExt()[B
.end method

.method public abstract getCryptProviderTypeExtSource()Ljava/lang/String;
.end method

.method public abstract getCryptSpinCount()Ljava/math/BigInteger;
.end method

.method public abstract getHash()[B
.end method

.method public abstract getHashValue()[B
.end method

.method public abstract getRecommended()Ljava/lang/Object;
.end method

.method public abstract getSalt()[B
.end method

.method public abstract getSaltValue()[B
.end method

.method public abstract getSpinCount()Ljava/math/BigInteger;
.end method

.method public abstract isSetAlgIdExt()Z
.end method

.method public abstract isSetAlgIdExtSource()Z
.end method

.method public abstract isSetAlgorithmName()Z
.end method

.method public abstract isSetCryptAlgorithmClass()Z
.end method

.method public abstract isSetCryptAlgorithmSid()Z
.end method

.method public abstract isSetCryptAlgorithmType()Z
.end method

.method public abstract isSetCryptProvider()Z
.end method

.method public abstract isSetCryptProviderType()Z
.end method

.method public abstract isSetCryptProviderTypeExt()Z
.end method

.method public abstract isSetCryptProviderTypeExtSource()Z
.end method

.method public abstract isSetCryptSpinCount()Z
.end method

.method public abstract isSetHash()Z
.end method

.method public abstract isSetHashValue()Z
.end method

.method public abstract isSetRecommended()Z
.end method

.method public abstract isSetSalt()Z
.end method

.method public abstract isSetSaltValue()Z
.end method

.method public abstract isSetSpinCount()Z
.end method

.method public abstract setAlgIdExt([B)V
.end method

.method public abstract setAlgIdExtSource(Ljava/lang/String;)V
.end method

.method public abstract setAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setCryptAlgorithmClass(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass$Enum;)V
.end method

.method public abstract setCryptAlgorithmSid(Ljava/math/BigInteger;)V
.end method

.method public abstract setCryptAlgorithmType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;)V
.end method

.method public abstract setCryptProvider(Ljava/lang/String;)V
.end method

.method public abstract setCryptProviderType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;)V
.end method

.method public abstract setCryptProviderTypeExt([B)V
.end method

.method public abstract setCryptProviderTypeExtSource(Ljava/lang/String;)V
.end method

.method public abstract setCryptSpinCount(Ljava/math/BigInteger;)V
.end method

.method public abstract setHash([B)V
.end method

.method public abstract setHashValue([B)V
.end method

.method public abstract setRecommended(Ljava/lang/Object;)V
.end method

.method public abstract setSalt([B)V
.end method

.method public abstract setSaltValue([B)V
.end method

.method public abstract setSpinCount(Ljava/math/BigInteger;)V
.end method

.method public abstract unsetAlgIdExt()V
.end method

.method public abstract unsetAlgIdExtSource()V
.end method

.method public abstract unsetAlgorithmName()V
.end method

.method public abstract unsetCryptAlgorithmClass()V
.end method

.method public abstract unsetCryptAlgorithmSid()V
.end method

.method public abstract unsetCryptAlgorithmType()V
.end method

.method public abstract unsetCryptProvider()V
.end method

.method public abstract unsetCryptProviderType()V
.end method

.method public abstract unsetCryptProviderTypeExt()V
.end method

.method public abstract unsetCryptProviderTypeExtSource()V
.end method

.method public abstract unsetCryptSpinCount()V
.end method

.method public abstract unsetHash()V
.end method

.method public abstract unsetHashValue()V
.end method

.method public abstract unsetRecommended()V
.end method

.method public abstract unsetSalt()V
.end method

.method public abstract unsetSaltValue()V
.end method

.method public abstract unsetSpinCount()V
.end method

.method public abstract xgetAlgIdExt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetAlgIdExtSource()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCryptAlgorithmClass()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass;
.end method

.method public abstract xgetCryptAlgorithmSid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetCryptAlgorithmType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;
.end method

.method public abstract xgetCryptProvider()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCryptProviderType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;
.end method

.method public abstract xgetCryptProviderTypeExt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetCryptProviderTypeExtSource()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCryptSpinCount()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetHash()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetHashValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetRecommended()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetSalt()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSaltValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSpinCount()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetAlgIdExt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetAlgIdExtSource(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCryptAlgorithmClass(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass;)V
.end method

.method public abstract xsetCryptAlgorithmSid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetCryptAlgorithmType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;)V
.end method

.method public abstract xsetCryptProvider(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCryptProviderType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;)V
.end method

.method public abstract xsetCryptProviderTypeExt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetCryptProviderTypeExtSource(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCryptSpinCount(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetHash(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetHashValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetRecommended(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetSalt(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetSaltValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetSpinCount(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
