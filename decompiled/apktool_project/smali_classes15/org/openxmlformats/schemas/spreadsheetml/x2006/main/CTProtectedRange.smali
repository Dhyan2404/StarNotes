.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;",
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

    const-string v2, "ctprotectedrange7078type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSecurityDescriptor()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addSecurityDescriptor(Ljava/lang/String;)V
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getHashValue()[B
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPassword()[B
.end method

.method public abstract getSaltValue()[B
.end method

.method public abstract getSecurityDescriptor2()Ljava/lang/String;
.end method

.method public abstract getSecurityDescriptorArray(I)Ljava/lang/String;
.end method

.method public abstract getSecurityDescriptorArray()[Ljava/lang/String;
.end method

.method public abstract getSecurityDescriptorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpinCount()J
.end method

.method public abstract getSqref()Ljava/util/List;
.end method

.method public abstract insertNewSecurityDescriptor(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertSecurityDescriptor(ILjava/lang/String;)V
.end method

.method public abstract isSetAlgorithmName()Z
.end method

.method public abstract isSetHashValue()Z
.end method

.method public abstract isSetPassword()Z
.end method

.method public abstract isSetSaltValue()Z
.end method

.method public abstract isSetSecurityDescriptor2()Z
.end method

.method public abstract isSetSpinCount()Z
.end method

.method public abstract removeSecurityDescriptor(I)V
.end method

.method public abstract setAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setHashValue([B)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPassword([B)V
.end method

.method public abstract setSaltValue([B)V
.end method

.method public abstract setSecurityDescriptor2(Ljava/lang/String;)V
.end method

.method public abstract setSecurityDescriptorArray(ILjava/lang/String;)V
.end method

.method public abstract setSecurityDescriptorArray([Ljava/lang/String;)V
.end method

.method public abstract setSpinCount(J)V
.end method

.method public abstract setSqref(Ljava/util/List;)V
.end method

.method public abstract sizeOfSecurityDescriptorArray()I
.end method

.method public abstract unsetAlgorithmName()V
.end method

.method public abstract unsetHashValue()V
.end method

.method public abstract unsetPassword()V
.end method

.method public abstract unsetSaltValue()V
.end method

.method public abstract unsetSecurityDescriptor2()V
.end method

.method public abstract unsetSpinCount()V
.end method

.method public abstract xgetAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetHashValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xgetSaltValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSecurityDescriptor2()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSecurityDescriptorArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSecurityDescriptorArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSecurityDescriptorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetSpinCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSqref()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;
.end method

.method public abstract xsetAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetHashValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method

.method public abstract xsetSaltValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetSecurityDescriptor2(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSecurityDescriptorArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSecurityDescriptorArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSpinCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSqref(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;)V
.end method
