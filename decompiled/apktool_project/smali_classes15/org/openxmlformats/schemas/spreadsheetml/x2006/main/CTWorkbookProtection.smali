.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;",
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

    const-string v2, "ctworkbookprotection56bctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getLockRevision()Z
.end method

.method public abstract getLockStructure()Z
.end method

.method public abstract getLockWindows()Z
.end method

.method public abstract getRevisionsAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getRevisionsHashValue()[B
.end method

.method public abstract getRevisionsPassword()[B
.end method

.method public abstract getRevisionsPasswordCharacterSet()Ljava/lang/String;
.end method

.method public abstract getRevisionsSaltValue()[B
.end method

.method public abstract getRevisionsSpinCount()J
.end method

.method public abstract getWorkbookAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getWorkbookHashValue()[B
.end method

.method public abstract getWorkbookPassword()[B
.end method

.method public abstract getWorkbookPasswordCharacterSet()Ljava/lang/String;
.end method

.method public abstract getWorkbookSaltValue()[B
.end method

.method public abstract getWorkbookSpinCount()J
.end method

.method public abstract isSetLockRevision()Z
.end method

.method public abstract isSetLockStructure()Z
.end method

.method public abstract isSetLockWindows()Z
.end method

.method public abstract isSetRevisionsAlgorithmName()Z
.end method

.method public abstract isSetRevisionsHashValue()Z
.end method

.method public abstract isSetRevisionsPassword()Z
.end method

.method public abstract isSetRevisionsPasswordCharacterSet()Z
.end method

.method public abstract isSetRevisionsSaltValue()Z
.end method

.method public abstract isSetRevisionsSpinCount()Z
.end method

.method public abstract isSetWorkbookAlgorithmName()Z
.end method

.method public abstract isSetWorkbookHashValue()Z
.end method

.method public abstract isSetWorkbookPassword()Z
.end method

.method public abstract isSetWorkbookPasswordCharacterSet()Z
.end method

.method public abstract isSetWorkbookSaltValue()Z
.end method

.method public abstract isSetWorkbookSpinCount()Z
.end method

.method public abstract setLockRevision(Z)V
.end method

.method public abstract setLockStructure(Z)V
.end method

.method public abstract setLockWindows(Z)V
.end method

.method public abstract setRevisionsAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setRevisionsHashValue([B)V
.end method

.method public abstract setRevisionsPassword([B)V
.end method

.method public abstract setRevisionsPasswordCharacterSet(Ljava/lang/String;)V
.end method

.method public abstract setRevisionsSaltValue([B)V
.end method

.method public abstract setRevisionsSpinCount(J)V
.end method

.method public abstract setWorkbookAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setWorkbookHashValue([B)V
.end method

.method public abstract setWorkbookPassword([B)V
.end method

.method public abstract setWorkbookPasswordCharacterSet(Ljava/lang/String;)V
.end method

.method public abstract setWorkbookSaltValue([B)V
.end method

.method public abstract setWorkbookSpinCount(J)V
.end method

.method public abstract unsetLockRevision()V
.end method

.method public abstract unsetLockStructure()V
.end method

.method public abstract unsetLockWindows()V
.end method

.method public abstract unsetRevisionsAlgorithmName()V
.end method

.method public abstract unsetRevisionsHashValue()V
.end method

.method public abstract unsetRevisionsPassword()V
.end method

.method public abstract unsetRevisionsPasswordCharacterSet()V
.end method

.method public abstract unsetRevisionsSaltValue()V
.end method

.method public abstract unsetRevisionsSpinCount()V
.end method

.method public abstract unsetWorkbookAlgorithmName()V
.end method

.method public abstract unsetWorkbookHashValue()V
.end method

.method public abstract unsetWorkbookPassword()V
.end method

.method public abstract unsetWorkbookPasswordCharacterSet()V
.end method

.method public abstract unsetWorkbookSaltValue()V
.end method

.method public abstract unsetWorkbookSpinCount()V
.end method

.method public abstract xgetLockRevision()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLockStructure()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLockWindows()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRevisionsAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetRevisionsHashValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetRevisionsPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xgetRevisionsPasswordCharacterSet()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetRevisionsSaltValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetRevisionsSpinCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetWorkbookAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetWorkbookHashValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetWorkbookPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xgetWorkbookPasswordCharacterSet()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetWorkbookSaltValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetWorkbookSpinCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetLockRevision(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLockStructure(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLockWindows(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRevisionsAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetRevisionsHashValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetRevisionsPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method

.method public abstract xsetRevisionsPasswordCharacterSet(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetRevisionsSaltValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetRevisionsSpinCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetWorkbookAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetWorkbookHashValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetWorkbookPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method

.method public abstract xsetWorkbookPasswordCharacterSet(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetWorkbookSaltValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetWorkbookSpinCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
