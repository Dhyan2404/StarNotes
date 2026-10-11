.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterFontType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterFontType;",
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

    const-string v2, "headerfooterfonttypee9e2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterFontType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterFontType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCharSet()S
.end method

.method public abstract getClipPrecision()S
.end method

.method public abstract getEscapement()I
.end method

.method public abstract getFaceName()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getItalic()S
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getOutPrecision()S
.end method

.method public abstract getPitchAndFamily()S
.end method

.method public abstract getQuality()S
.end method

.method public abstract getStrikeOut()S
.end method

.method public abstract getUnderline()S
.end method

.method public abstract getWeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract isSetCharSet()Z
.end method

.method public abstract isSetClipPrecision()Z
.end method

.method public abstract isSetEscapement()Z
.end method

.method public abstract isSetFaceName()Z
.end method

.method public abstract isSetHeight()Z
.end method

.method public abstract isSetItalic()Z
.end method

.method public abstract isSetOrientation()Z
.end method

.method public abstract isSetOutPrecision()Z
.end method

.method public abstract isSetPitchAndFamily()Z
.end method

.method public abstract isSetQuality()Z
.end method

.method public abstract isSetStrikeOut()Z
.end method

.method public abstract isSetUnderline()Z
.end method

.method public abstract isSetWeight()Z
.end method

.method public abstract isSetWidth()Z
.end method

.method public abstract setCharSet(S)V
.end method

.method public abstract setClipPrecision(S)V
.end method

.method public abstract setEscapement(I)V
.end method

.method public abstract setFaceName(Ljava/lang/String;)V
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setItalic(S)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setOutPrecision(S)V
.end method

.method public abstract setPitchAndFamily(S)V
.end method

.method public abstract setQuality(S)V
.end method

.method public abstract setStrikeOut(S)V
.end method

.method public abstract setUnderline(S)V
.end method

.method public abstract setWeight(I)V
.end method

.method public abstract setWidth(I)V
.end method

.method public abstract unsetCharSet()V
.end method

.method public abstract unsetClipPrecision()V
.end method

.method public abstract unsetEscapement()V
.end method

.method public abstract unsetFaceName()V
.end method

.method public abstract unsetHeight()V
.end method

.method public abstract unsetItalic()V
.end method

.method public abstract unsetOrientation()V
.end method

.method public abstract unsetOutPrecision()V
.end method

.method public abstract unsetPitchAndFamily()V
.end method

.method public abstract unsetQuality()V
.end method

.method public abstract unsetStrikeOut()V
.end method

.method public abstract unsetUnderline()V
.end method

.method public abstract unsetWeight()V
.end method

.method public abstract unsetWidth()V
.end method

.method public abstract xgetCharSet()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetClipPrecision()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetEscapement()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetFaceName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHeight()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetItalic()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetOrientation()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetOutPrecision()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetPitchAndFamily()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetQuality()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetStrikeOut()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetUnderline()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetWeight()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetWidth()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xsetCharSet(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetClipPrecision(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetEscapement(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetFaceName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHeight(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetItalic(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetOrientation(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetOutPrecision(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetPitchAndFamily(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetQuality(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetStrikeOut(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetUnderline(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetWeight(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetWidth(Lorg/apache/xmlbeans/XmlInt;)V
.end method
