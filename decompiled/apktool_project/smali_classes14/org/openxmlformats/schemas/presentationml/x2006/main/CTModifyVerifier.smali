.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;",
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

    const-string v2, "ctmodifyverifier3bb5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlgIdExt()J
.end method

.method public abstract getAlgIdExtSource()Ljava/lang/String;
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getCryptAlgorithmClass()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass$Enum;
.end method

.method public abstract getCryptAlgorithmSid()J
.end method

.method public abstract getCryptAlgorithmType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;
.end method

.method public abstract getCryptProvider()Ljava/lang/String;
.end method

.method public abstract getCryptProviderType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;
.end method

.method public abstract getCryptProviderTypeExt()J
.end method

.method public abstract getCryptProviderTypeExtSource()Ljava/lang/String;
.end method

.method public abstract getHashData()[B
.end method

.method public abstract getHashValue()[B
.end method

.method public abstract getSaltData()[B
.end method

.method public abstract getSaltValue()[B
.end method

.method public abstract getSpinCount()J
.end method

.method public abstract getSpinValue()J
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

.method public abstract isSetHashData()Z
.end method

.method public abstract isSetHashValue()Z
.end method

.method public abstract isSetSaltData()Z
.end method

.method public abstract isSetSaltValue()Z
.end method

.method public abstract isSetSpinCount()Z
.end method

.method public abstract isSetSpinValue()Z
.end method

.method public abstract setAlgIdExt(J)V
.end method

.method public abstract setAlgIdExtSource(Ljava/lang/String;)V
.end method

.method public abstract setAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setCryptAlgorithmClass(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass$Enum;)V
.end method

.method public abstract setCryptAlgorithmSid(J)V
.end method

.method public abstract setCryptAlgorithmType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType$Enum;)V
.end method

.method public abstract setCryptProvider(Ljava/lang/String;)V
.end method

.method public abstract setCryptProviderType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv$Enum;)V
.end method

.method public abstract setCryptProviderTypeExt(J)V
.end method

.method public abstract setCryptProviderTypeExtSource(Ljava/lang/String;)V
.end method

.method public abstract setHashData([B)V
.end method

.method public abstract setHashValue([B)V
.end method

.method public abstract setSaltData([B)V
.end method

.method public abstract setSaltValue([B)V
.end method

.method public abstract setSpinCount(J)V
.end method

.method public abstract setSpinValue(J)V
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

.method public abstract unsetHashData()V
.end method

.method public abstract unsetHashValue()V
.end method

.method public abstract unsetSaltData()V
.end method

.method public abstract unsetSaltValue()V
.end method

.method public abstract unsetSpinCount()V
.end method

.method public abstract unsetSpinValue()V
.end method

.method public abstract xgetAlgIdExt()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetAlgIdExtSource()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetAlgorithmName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCryptAlgorithmClass()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass;
.end method

.method public abstract xgetCryptAlgorithmSid()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCryptAlgorithmType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;
.end method

.method public abstract xgetCryptProvider()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCryptProviderType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;
.end method

.method public abstract xgetCryptProviderTypeExt()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCryptProviderTypeExtSource()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHashData()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetHashValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSaltData()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSaltValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSpinCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSpinValue()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetAlgIdExt(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetAlgIdExtSource(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetAlgorithmName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCryptAlgorithmClass(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgClass;)V
.end method

.method public abstract xsetCryptAlgorithmSid(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCryptAlgorithmType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STAlgType;)V
.end method

.method public abstract xsetCryptProvider(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCryptProviderType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCryptProv;)V
.end method

.method public abstract xsetCryptProviderTypeExt(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCryptProviderTypeExtSource(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHashData(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetHashValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetSaltData(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetSaltValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetSpinCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSpinValue(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
