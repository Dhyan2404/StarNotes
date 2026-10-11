.class public interface abstract Lcom/microsoft/schemas/office/office/CTShapeDefaults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTShapeDefaults;",
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

    const-string v2, "ctshapedefaultsadcctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTShapeDefaults;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTShapeDefaults;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCallout()Lcom/microsoft/schemas/office/office/CTCallout;
.end method

.method public abstract addNewColormenu()Lcom/microsoft/schemas/office/office/CTColorMenu;
.end method

.method public abstract addNewColormru()Lcom/microsoft/schemas/office/office/CTColorMru;
.end method

.method public abstract addNewExtrusion()Lcom/microsoft/schemas/office/office/CTExtrusion;
.end method

.method public abstract addNewFill()Lcom/microsoft/schemas/vml/CTFill;
.end method

.method public abstract addNewLock()Lcom/microsoft/schemas/office/office/CTLock;
.end method

.method public abstract addNewShadow()Lcom/microsoft/schemas/vml/CTShadow;
.end method

.method public abstract addNewSkew()Lcom/microsoft/schemas/office/office/CTSkew;
.end method

.method public abstract addNewStroke()Lcom/microsoft/schemas/vml/CTStroke;
.end method

.method public abstract addNewTextbox()Lcom/microsoft/schemas/vml/CTTextbox;
.end method

.method public abstract getAllowincell()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getCallout()Lcom/microsoft/schemas/office/office/CTCallout;
.end method

.method public abstract getColormenu()Lcom/microsoft/schemas/office/office/CTColorMenu;
.end method

.method public abstract getColormru()Lcom/microsoft/schemas/office/office/CTColorMru;
.end method

.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getExtrusion()Lcom/microsoft/schemas/office/office/CTExtrusion;
.end method

.method public abstract getFill()Lcom/microsoft/schemas/vml/CTFill;
.end method

.method public abstract getFill2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getFillcolor()Ljava/lang/String;
.end method

.method public abstract getLock()Lcom/microsoft/schemas/office/office/CTLock;
.end method

.method public abstract getShadow()Lcom/microsoft/schemas/vml/CTShadow;
.end method

.method public abstract getSkew()Lcom/microsoft/schemas/office/office/CTSkew;
.end method

.method public abstract getSpidmax()Ljava/math/BigInteger;
.end method

.method public abstract getStroke()Lcom/microsoft/schemas/vml/CTStroke;
.end method

.method public abstract getStroke2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getStrokecolor()Ljava/lang/String;
.end method

.method public abstract getStyle()Ljava/lang/String;
.end method

.method public abstract getTextbox()Lcom/microsoft/schemas/vml/CTTextbox;
.end method

.method public abstract isSetAllowincell()Z
.end method

.method public abstract isSetCallout()Z
.end method

.method public abstract isSetColormenu()Z
.end method

.method public abstract isSetColormru()Z
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract isSetExtrusion()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetFill2()Z
.end method

.method public abstract isSetFillcolor()Z
.end method

.method public abstract isSetLock()Z
.end method

.method public abstract isSetShadow()Z
.end method

.method public abstract isSetSkew()Z
.end method

.method public abstract isSetSpidmax()Z
.end method

.method public abstract isSetStroke()Z
.end method

.method public abstract isSetStroke2()Z
.end method

.method public abstract isSetStrokecolor()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract isSetTextbox()Z
.end method

.method public abstract setAllowincell(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setCallout(Lcom/microsoft/schemas/office/office/CTCallout;)V
.end method

.method public abstract setColormenu(Lcom/microsoft/schemas/office/office/CTColorMenu;)V
.end method

.method public abstract setColormru(Lcom/microsoft/schemas/office/office/CTColorMru;)V
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setExtrusion(Lcom/microsoft/schemas/office/office/CTExtrusion;)V
.end method

.method public abstract setFill(Lcom/microsoft/schemas/vml/CTFill;)V
.end method

.method public abstract setFill2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setFillcolor(Ljava/lang/String;)V
.end method

.method public abstract setLock(Lcom/microsoft/schemas/office/office/CTLock;)V
.end method

.method public abstract setShadow(Lcom/microsoft/schemas/vml/CTShadow;)V
.end method

.method public abstract setSkew(Lcom/microsoft/schemas/office/office/CTSkew;)V
.end method

.method public abstract setSpidmax(Ljava/math/BigInteger;)V
.end method

.method public abstract setStroke(Lcom/microsoft/schemas/vml/CTStroke;)V
.end method

.method public abstract setStroke2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setStrokecolor(Ljava/lang/String;)V
.end method

.method public abstract setStyle(Ljava/lang/String;)V
.end method

.method public abstract setTextbox(Lcom/microsoft/schemas/vml/CTTextbox;)V
.end method

.method public abstract unsetAllowincell()V
.end method

.method public abstract unsetCallout()V
.end method

.method public abstract unsetColormenu()V
.end method

.method public abstract unsetColormru()V
.end method

.method public abstract unsetExt()V
.end method

.method public abstract unsetExtrusion()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetFill2()V
.end method

.method public abstract unsetFillcolor()V
.end method

.method public abstract unsetLock()V
.end method

.method public abstract unsetShadow()V
.end method

.method public abstract unsetSkew()V
.end method

.method public abstract unsetSpidmax()V
.end method

.method public abstract unsetStroke()V
.end method

.method public abstract unsetStroke2()V
.end method

.method public abstract unsetStrokecolor()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract unsetTextbox()V
.end method

.method public abstract xgetAllowincell()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xgetFill2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetFillcolor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetSpidmax()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetStroke2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetStrokecolor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetStyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAllowincell(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method

.method public abstract xsetFill2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetFillcolor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetSpidmax(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetStroke2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetStrokecolor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetStyle(Lorg/apache/xmlbeans/XmlString;)V
.end method
