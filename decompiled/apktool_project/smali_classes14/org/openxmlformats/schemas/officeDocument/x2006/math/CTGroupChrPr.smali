.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChrPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChrPr;",
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

    const-string v2, "ctgroupchrpr8022type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChrPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChrPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewChr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;
.end method

.method public abstract addNewCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract addNewPos()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTopBot;
.end method

.method public abstract addNewVertJc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTopBot;
.end method

.method public abstract getChr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;
.end method

.method public abstract getCtrlPr()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;
.end method

.method public abstract getPos()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTopBot;
.end method

.method public abstract getVertJc()Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTopBot;
.end method

.method public abstract isSetChr()Z
.end method

.method public abstract isSetCtrlPr()Z
.end method

.method public abstract isSetPos()Z
.end method

.method public abstract isSetVertJc()Z
.end method

.method public abstract setChr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTChar;)V
.end method

.method public abstract setCtrlPr(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTCtrlPr;)V
.end method

.method public abstract setPos(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTopBot;)V
.end method

.method public abstract setVertJc(Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTTopBot;)V
.end method

.method public abstract unsetChr()V
.end method

.method public abstract unsetCtrlPr()V
.end method

.method public abstract unsetPos()V
.end method

.method public abstract unsetVertJc()V
.end method
