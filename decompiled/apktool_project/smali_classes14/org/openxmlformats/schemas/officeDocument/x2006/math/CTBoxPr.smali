.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBoxPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBoxPr;",
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

    const-string v2, "ctboxpr2c4ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBoxPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBoxPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAln()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewBrk()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTManualBreak;
.end method

.method public abstract addNewCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract addNewDiff()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewNoBreak()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewOpEmu()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getAln()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getBrk()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTManualBreak;
.end method

.method public abstract getCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract getDiff()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getNoBreak()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getOpEmu()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract isSetAln()Z
.end method

.method public abstract isSetBrk()Z
.end method

.method public abstract isSetCtrlPr()Z
.end method

.method public abstract isSetDiff()Z
.end method

.method public abstract isSetNoBreak()Z
.end method

.method public abstract isSetOpEmu()Z
.end method

.method public abstract setAln(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setBrk(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTManualBreak;)V
.end method

.method public abstract setCtrlPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;)V
.end method

.method public abstract setDiff(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setNoBreak(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setOpEmu(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract unsetAln()V
.end method

.method public abstract unsetBrk()V
.end method

.method public abstract unsetCtrlPr()V
.end method

.method public abstract unsetDiff()V
.end method

.method public abstract unsetNoBreak()V
.end method

.method public abstract unsetOpEmu()V
.end method
