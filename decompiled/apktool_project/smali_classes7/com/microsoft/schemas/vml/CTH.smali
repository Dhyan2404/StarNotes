.class public interface abstract Lcom/microsoft/schemas/vml/CTH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/vml/CTH;",
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

    const-string v2, "cth4cbctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/CTH;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/CTH;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getInvx()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getInvy()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getMap()Ljava/lang/String;
.end method

.method public abstract getPolar()Ljava/lang/String;
.end method

.method public abstract getPosition()Ljava/lang/String;
.end method

.method public abstract getRadiusrange()Ljava/lang/String;
.end method

.method public abstract getSwitch()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getXrange()Ljava/lang/String;
.end method

.method public abstract getYrange()Ljava/lang/String;
.end method

.method public abstract isSetInvx()Z
.end method

.method public abstract isSetInvy()Z
.end method

.method public abstract isSetMap()Z
.end method

.method public abstract isSetPolar()Z
.end method

.method public abstract isSetPosition()Z
.end method

.method public abstract isSetRadiusrange()Z
.end method

.method public abstract isSetSwitch()Z
.end method

.method public abstract isSetXrange()Z
.end method

.method public abstract isSetYrange()Z
.end method

.method public abstract setInvx(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setInvy(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setMap(Ljava/lang/String;)V
.end method

.method public abstract setPolar(Ljava/lang/String;)V
.end method

.method public abstract setPosition(Ljava/lang/String;)V
.end method

.method public abstract setRadiusrange(Ljava/lang/String;)V
.end method

.method public abstract setSwitch(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setXrange(Ljava/lang/String;)V
.end method

.method public abstract setYrange(Ljava/lang/String;)V
.end method

.method public abstract unsetInvx()V
.end method

.method public abstract unsetInvy()V
.end method

.method public abstract unsetMap()V
.end method

.method public abstract unsetPolar()V
.end method

.method public abstract unsetPosition()V
.end method

.method public abstract unsetRadiusrange()V
.end method

.method public abstract unsetSwitch()V
.end method

.method public abstract unsetXrange()V
.end method

.method public abstract unsetYrange()V
.end method

.method public abstract xgetInvx()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetInvy()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetMap()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPolar()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPosition()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetRadiusrange()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSwitch()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetXrange()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetYrange()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetInvx(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetInvy(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetMap(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPolar(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPosition(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetRadiusrange(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSwitch(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetXrange(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetYrange(Lorg/apache/xmlbeans/XmlString;)V
.end method
