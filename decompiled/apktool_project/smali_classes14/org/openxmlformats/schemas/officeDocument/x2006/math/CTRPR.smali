.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRPR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRPR;",
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

    const-string v2, "ctrprd468type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRPR;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRPR;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAln()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewBrk()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTManualBreak;
.end method

.method public abstract addNewLit()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewNor()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract addNewScr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTScript;
.end method

.method public abstract addNewSty()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTStyle;
.end method

.method public abstract getAln()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getBrk()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTManualBreak;
.end method

.method public abstract getLit()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getNor()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;
.end method

.method public abstract getScr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTScript;
.end method

.method public abstract getSty()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTStyle;
.end method

.method public abstract isSetAln()Z
.end method

.method public abstract isSetBrk()Z
.end method

.method public abstract isSetLit()Z
.end method

.method public abstract isSetNor()Z
.end method

.method public abstract isSetScr()Z
.end method

.method public abstract isSetSty()Z
.end method

.method public abstract setAln(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setBrk(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTManualBreak;)V
.end method

.method public abstract setLit(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setNor(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOnOff;)V
.end method

.method public abstract setScr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTScript;)V
.end method

.method public abstract setSty(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTStyle;)V
.end method

.method public abstract unsetAln()V
.end method

.method public abstract unsetBrk()V
.end method

.method public abstract unsetLit()V
.end method

.method public abstract unsetNor()V
.end method

.method public abstract unsetScr()V
.end method

.method public abstract unsetSty()V
.end method
