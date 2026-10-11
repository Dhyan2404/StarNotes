.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArrPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArrPr;",
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

    const-string v2, "cteqarrpr1305type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArrPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArrPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBaseJc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTYAlign;
.end method

.method public abstract addNewCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract addNewMaxDist()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewObjDist()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewRSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTUnSignedInteger;
.end method

.method public abstract addNewRSpRule()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSpacingRule;
.end method

.method public abstract getBaseJc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTYAlign;
.end method

.method public abstract getCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract getMaxDist()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getObjDist()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getRSp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTUnSignedInteger;
.end method

.method public abstract getRSpRule()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSpacingRule;
.end method

.method public abstract isSetBaseJc()Z
.end method

.method public abstract isSetCtrlPr()Z
.end method

.method public abstract isSetMaxDist()Z
.end method

.method public abstract isSetObjDist()Z
.end method

.method public abstract isSetRSp()Z
.end method

.method public abstract isSetRSpRule()Z
.end method

.method public abstract setBaseJc(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTYAlign;)V
.end method

.method public abstract setCtrlPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;)V
.end method

.method public abstract setMaxDist(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setObjDist(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setRSp(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTUnSignedInteger;)V
.end method

.method public abstract setRSpRule(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSpacingRule;)V
.end method

.method public abstract unsetBaseJc()V
.end method

.method public abstract unsetCtrlPr()V
.end method

.method public abstract unsetMaxDist()V
.end method

.method public abstract unsetObjDist()V
.end method

.method public abstract unsetRSp()V
.end method

.method public abstract unsetRSpRule()V
.end method
