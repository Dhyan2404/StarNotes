.class public interface abstract Lcom/microsoft/schemas/vml/CTPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/vml/CTPath;",
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

    const-string v2, "ctpath5963type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/CTPath;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/CTPath;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getArrowok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getConnectangles()Ljava/lang/String;
.end method

.method public abstract getConnectlocs()Ljava/lang/String;
.end method

.method public abstract getConnecttype()Lcom/microsoft/schemas/office/office/STConnectType$Enum;
.end method

.method public abstract getExtrusionok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getFillok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getGradientshapeok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInsetpenok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getLimo()Ljava/lang/String;
.end method

.method public abstract getShadowok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getStrokeok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getTextboxrect()Ljava/lang/String;
.end method

.method public abstract getTextpathok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getV()Ljava/lang/String;
.end method

.method public abstract isSetArrowok()Z
.end method

.method public abstract isSetConnectangles()Z
.end method

.method public abstract isSetConnectlocs()Z
.end method

.method public abstract isSetConnecttype()Z
.end method

.method public abstract isSetExtrusionok()Z
.end method

.method public abstract isSetFillok()Z
.end method

.method public abstract isSetGradientshapeok()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetInsetpenok()Z
.end method

.method public abstract isSetLimo()Z
.end method

.method public abstract isSetShadowok()Z
.end method

.method public abstract isSetStrokeok()Z
.end method

.method public abstract isSetTextboxrect()Z
.end method

.method public abstract isSetTextpathok()Z
.end method

.method public abstract isSetV()Z
.end method

.method public abstract setArrowok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setConnectangles(Ljava/lang/String;)V
.end method

.method public abstract setConnectlocs(Ljava/lang/String;)V
.end method

.method public abstract setConnecttype(Lcom/microsoft/schemas/office/office/STConnectType$Enum;)V
.end method

.method public abstract setExtrusionok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setFillok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setGradientshapeok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setInsetpenok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setLimo(Ljava/lang/String;)V
.end method

.method public abstract setShadowok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setStrokeok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setTextboxrect(Ljava/lang/String;)V
.end method

.method public abstract setTextpathok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setV(Ljava/lang/String;)V
.end method

.method public abstract unsetArrowok()V
.end method

.method public abstract unsetConnectangles()V
.end method

.method public abstract unsetConnectlocs()V
.end method

.method public abstract unsetConnecttype()V
.end method

.method public abstract unsetExtrusionok()V
.end method

.method public abstract unsetFillok()V
.end method

.method public abstract unsetGradientshapeok()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetInsetpenok()V
.end method

.method public abstract unsetLimo()V
.end method

.method public abstract unsetShadowok()V
.end method

.method public abstract unsetStrokeok()V
.end method

.method public abstract unsetTextboxrect()V
.end method

.method public abstract unsetTextpathok()V
.end method

.method public abstract unsetV()V
.end method

.method public abstract xgetArrowok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetConnectangles()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetConnectlocs()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetConnecttype()Lcom/microsoft/schemas/office/office/STConnectType;
.end method

.method public abstract xgetExtrusionok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetFillok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetGradientshapeok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetInsetpenok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetLimo()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetShadowok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetStrokeok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetTextboxrect()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTextpathok()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetV()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetArrowok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetConnectangles(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetConnectlocs(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetConnecttype(Lcom/microsoft/schemas/office/office/STConnectType;)V
.end method

.method public abstract xsetExtrusionok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetFillok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetGradientshapeok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetInsetpenok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetLimo(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetShadowok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetStrokeok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetTextboxrect(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTextpathok(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetV(Lorg/apache/xmlbeans/XmlString;)V
.end method
