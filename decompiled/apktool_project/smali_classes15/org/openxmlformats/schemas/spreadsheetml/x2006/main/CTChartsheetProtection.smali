.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetProtection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetProtection;",
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

    const-string v2, "ctchartsheetprotection3cc3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetProtection;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetProtection;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getContent()Z
.end method

.method public abstract getHashValue()[B
.end method

.method public abstract getObjects()Z
.end method

.method public abstract getPassword()[B
.end method

.method public abstract getSaltValue()[B
.end method

.method public abstract getSpinCount()J
.end method

.method public abstract isSetAlgorithmName()Z
.end method

.method public abstract isSetContent()Z
.end method

.method public abstract isSetHashValue()Z
.end method

.method public abstract isSetObjects()Z
.end method

.method public abstract isSetPassword()Z
.end method

.method public abstract isSetSaltValue()Z
.end method

.method public abstract isSetSpinCount()Z
.end method

.method public abstract setAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setContent(Z)V
.end method

.method public abstract setHashValue([B)V
.end method

.method public abstract setObjects(Z)V
.end method

.method public abstract setPassword([B)V
.end method

.method public abstract setSaltValue([B)V
.end method

.method public abstract setSpinCount(J)V
.end method

.method public abstract unsetAlgorithmName()V
.end method

.method public abstract unsetContent()V
.end method

.method public abstract unsetHashValue()V
.end method

.method public abstract unsetObjects()V
.end method

.method public abstract unsetPassword()V
.end method

.method public abstract unsetSaltValue()V
.end method

.method public abstract unsetSpinCount()V
.end method

.method public abstract xgetAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetContent()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHashValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetObjects()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xgetSaltValue()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSpinCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetContent(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHashValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetObjects(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method

.method public abstract xsetSaltValue(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetSpinCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
