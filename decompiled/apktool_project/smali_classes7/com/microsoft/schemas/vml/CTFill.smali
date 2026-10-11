.class public interface abstract Lcom/microsoft/schemas/vml/CTFill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/vml/CTFill;",
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

    const-string v2, "ctfillb241type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/CTFill;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/CTFill;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewFill()Lcom/microsoft/schemas/office/office/CTFill;
.end method

.method public abstract getAlignshape()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getAlthref()Ljava/lang/String;
.end method

.method public abstract getAngle()Ljava/math/BigDecimal;
.end method

.method public abstract getAspect()Lcom/microsoft/schemas/vml/STImageAspect$Enum;
.end method

.method public abstract getColor()Ljava/lang/String;
.end method

.method public abstract getColor2()Ljava/lang/String;
.end method

.method public abstract getColors()Ljava/lang/String;
.end method

.method public abstract getDetectmouseclick()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getFill()Lcom/microsoft/schemas/office/office/CTFill;
.end method

.method public abstract getFocus()Ljava/lang/String;
.end method

.method public abstract getFocusposition()Ljava/lang/String;
.end method

.method public abstract getFocussize()Ljava/lang/String;
.end method

.method public abstract getHref()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getId2()Ljava/lang/String;
.end method

.method public abstract getMethod()Lcom/microsoft/schemas/vml/STFillMethod$Enum;
.end method

.method public abstract getOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getOpacity()Ljava/lang/String;
.end method

.method public abstract getOpacity2()Ljava/lang/String;
.end method

.method public abstract getOrigin()Ljava/lang/String;
.end method

.method public abstract getPosition()Ljava/lang/String;
.end method

.method public abstract getRecolor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getRelid()Ljava/lang/String;
.end method

.method public abstract getRotate()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getSize()Ljava/lang/String;
.end method

.method public abstract getSrc()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/microsoft/schemas/vml/STFillType$Enum;
.end method

.method public abstract isSetAlignshape()Z
.end method

.method public abstract isSetAlthref()Z
.end method

.method public abstract isSetAngle()Z
.end method

.method public abstract isSetAspect()Z
.end method

.method public abstract isSetColor()Z
.end method

.method public abstract isSetColor2()Z
.end method

.method public abstract isSetColors()Z
.end method

.method public abstract isSetDetectmouseclick()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetFocus()Z
.end method

.method public abstract isSetFocusposition()Z
.end method

.method public abstract isSetFocussize()Z
.end method

.method public abstract isSetHref()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetId2()Z
.end method

.method public abstract isSetMethod()Z
.end method

.method public abstract isSetOn()Z
.end method

.method public abstract isSetOpacity()Z
.end method

.method public abstract isSetOpacity2()Z
.end method

.method public abstract isSetOrigin()Z
.end method

.method public abstract isSetPosition()Z
.end method

.method public abstract isSetRecolor()Z
.end method

.method public abstract isSetRelid()Z
.end method

.method public abstract isSetRotate()Z
.end method

.method public abstract isSetSize()Z
.end method

.method public abstract isSetSrc()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setAlignshape(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setAlthref(Ljava/lang/String;)V
.end method

.method public abstract setAngle(Ljava/math/BigDecimal;)V
.end method

.method public abstract setAspect(Lcom/microsoft/schemas/vml/STImageAspect$Enum;)V
.end method

.method public abstract setColor(Ljava/lang/String;)V
.end method

.method public abstract setColor2(Ljava/lang/String;)V
.end method

.method public abstract setColors(Ljava/lang/String;)V
.end method

.method public abstract setDetectmouseclick(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setFill(Lcom/microsoft/schemas/office/office/CTFill;)V
.end method

.method public abstract setFocus(Ljava/lang/String;)V
.end method

.method public abstract setFocusposition(Ljava/lang/String;)V
.end method

.method public abstract setFocussize(Ljava/lang/String;)V
.end method

.method public abstract setHref(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setId2(Ljava/lang/String;)V
.end method

.method public abstract setMethod(Lcom/microsoft/schemas/vml/STFillMethod$Enum;)V
.end method

.method public abstract setOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setOpacity(Ljava/lang/String;)V
.end method

.method public abstract setOpacity2(Ljava/lang/String;)V
.end method

.method public abstract setOrigin(Ljava/lang/String;)V
.end method

.method public abstract setPosition(Ljava/lang/String;)V
.end method

.method public abstract setRecolor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setRelid(Ljava/lang/String;)V
.end method

.method public abstract setRotate(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setSize(Ljava/lang/String;)V
.end method

.method public abstract setSrc(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setType(Lcom/microsoft/schemas/vml/STFillType$Enum;)V
.end method

.method public abstract unsetAlignshape()V
.end method

.method public abstract unsetAlthref()V
.end method

.method public abstract unsetAngle()V
.end method

.method public abstract unsetAspect()V
.end method

.method public abstract unsetColor()V
.end method

.method public abstract unsetColor2()V
.end method

.method public abstract unsetColors()V
.end method

.method public abstract unsetDetectmouseclick()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetFocus()V
.end method

.method public abstract unsetFocusposition()V
.end method

.method public abstract unsetFocussize()V
.end method

.method public abstract unsetHref()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetId2()V
.end method

.method public abstract unsetMethod()V
.end method

.method public abstract unsetOn()V
.end method

.method public abstract unsetOpacity()V
.end method

.method public abstract unsetOpacity2()V
.end method

.method public abstract unsetOrigin()V
.end method

.method public abstract unsetPosition()V
.end method

.method public abstract unsetRecolor()V
.end method

.method public abstract unsetRelid()V
.end method

.method public abstract unsetRotate()V
.end method

.method public abstract unsetSize()V
.end method

.method public abstract unsetSrc()V
.end method

.method public abstract unsetTitle()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetAlignshape()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetAlthref()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetAngle()Lorg/apache/xmlbeans/XmlDecimal;
.end method

.method public abstract xgetAspect()Lcom/microsoft/schemas/vml/STImageAspect;
.end method

.method public abstract xgetColor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetColor2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetColors()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDetectmouseclick()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetFocus()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFocusposition()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFocussize()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHref()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetId2()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetMethod()Lcom/microsoft/schemas/vml/STFillMethod;
.end method

.method public abstract xgetOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetOpacity()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOpacity2()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOrigin()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPosition()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetRecolor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetRelid()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetRotate()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetSize()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSrc()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTitle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetType()Lcom/microsoft/schemas/vml/STFillType;
.end method

.method public abstract xsetAlignshape(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetAlthref(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetAngle(Lorg/apache/xmlbeans/XmlDecimal;)V
.end method

.method public abstract xsetAspect(Lcom/microsoft/schemas/vml/STImageAspect;)V
.end method

.method public abstract xsetColor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetColor2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetColors(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDetectmouseclick(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetFocus(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFocusposition(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFocussize(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHref(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetId2(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetMethod(Lcom/microsoft/schemas/vml/STFillMethod;)V
.end method

.method public abstract xsetOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetOpacity(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOpacity2(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOrigin(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPosition(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetRecolor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetRelid(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetRotate(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetSize(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSrc(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTitle(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetType(Lcom/microsoft/schemas/vml/STFillType;)V
.end method
