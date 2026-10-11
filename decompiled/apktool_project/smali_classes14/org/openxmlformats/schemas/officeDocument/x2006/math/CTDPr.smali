.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTDPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTDPr;",
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

    const-string v2, "ctdpr2596type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTDPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTDPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBegChr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;
.end method

.method public abstract addNewCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract addNewEndChr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;
.end method

.method public abstract addNewGrow()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewSepChr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;
.end method

.method public abstract addNewShp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTShp;
.end method

.method public abstract getBegChr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;
.end method

.method public abstract getCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract getEndChr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;
.end method

.method public abstract getGrow()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getSepChr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;
.end method

.method public abstract getShp()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTShp;
.end method

.method public abstract isSetBegChr()Z
.end method

.method public abstract isSetCtrlPr()Z
.end method

.method public abstract isSetEndChr()Z
.end method

.method public abstract isSetGrow()Z
.end method

.method public abstract isSetSepChr()Z
.end method

.method public abstract isSetShp()Z
.end method

.method public abstract setBegChr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;)V
.end method

.method public abstract setCtrlPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;)V
.end method

.method public abstract setEndChr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;)V
.end method

.method public abstract setGrow(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setSepChr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;)V
.end method

.method public abstract setShp(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTShp;)V
.end method

.method public abstract unsetBegChr()V
.end method

.method public abstract unsetCtrlPr()V
.end method

.method public abstract unsetEndChr()V
.end method

.method public abstract unsetGrow()V
.end method

.method public abstract unsetSepChr()V
.end method

.method public abstract unsetShp()V
.end method
