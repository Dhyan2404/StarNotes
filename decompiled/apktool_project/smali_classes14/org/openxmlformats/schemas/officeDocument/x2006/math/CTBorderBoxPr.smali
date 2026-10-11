.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBoxPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBoxPr;",
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

    const-string v2, "ctborderboxpr14dbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBoxPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBoxPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract addNewHideBot()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewHideLeft()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewHideRight()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewHideTop()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewStrikeBLTR()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewStrikeH()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewStrikeTLBR()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewStrikeV()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract getHideBot()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getHideLeft()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getHideRight()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getHideTop()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getStrikeBLTR()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getStrikeH()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getStrikeTLBR()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getStrikeV()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract isSetCtrlPr()Z
.end method

.method public abstract isSetHideBot()Z
.end method

.method public abstract isSetHideLeft()Z
.end method

.method public abstract isSetHideRight()Z
.end method

.method public abstract isSetHideTop()Z
.end method

.method public abstract isSetStrikeBLTR()Z
.end method

.method public abstract isSetStrikeH()Z
.end method

.method public abstract isSetStrikeTLBR()Z
.end method

.method public abstract isSetStrikeV()Z
.end method

.method public abstract setCtrlPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;)V
.end method

.method public abstract setHideBot(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setHideLeft(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setHideRight(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setHideTop(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setStrikeBLTR(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setStrikeH(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setStrikeTLBR(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setStrikeV(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract unsetCtrlPr()V
.end method

.method public abstract unsetHideBot()V
.end method

.method public abstract unsetHideLeft()V
.end method

.method public abstract unsetHideRight()V
.end method

.method public abstract unsetHideTop()V
.end method

.method public abstract unsetStrikeBLTR()V
.end method

.method public abstract unsetStrikeH()V
.end method

.method public abstract unsetStrikeTLBR()V
.end method

.method public abstract unsetStrikeV()V
.end method
