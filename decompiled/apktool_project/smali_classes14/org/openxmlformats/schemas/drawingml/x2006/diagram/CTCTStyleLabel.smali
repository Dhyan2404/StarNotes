.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCTStyleLabel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCTStyleLabel;",
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

    const-string v2, "ctctstylelabela0bdtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCTStyleLabel;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCTStyleLabel;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewEffectClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewFillClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract addNewLinClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract addNewTxEffectClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract addNewTxFillClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract addNewTxLinClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract getEffectClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFillClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract getLinClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTxEffectClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract getTxFillClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract getTxLinClrLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;
.end method

.method public abstract isSetEffectClrLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFillClrLst()Z
.end method

.method public abstract isSetLinClrLst()Z
.end method

.method public abstract isSetTxEffectClrLst()Z
.end method

.method public abstract isSetTxFillClrLst()Z
.end method

.method public abstract isSetTxLinClrLst()Z
.end method

.method public abstract setEffectClrLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFillClrLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;)V
.end method

.method public abstract setLinClrLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setTxEffectClrLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;)V
.end method

.method public abstract setTxFillClrLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;)V
.end method

.method public abstract setTxLinClrLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTColors;)V
.end method

.method public abstract unsetEffectClrLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFillClrLst()V
.end method

.method public abstract unsetLinClrLst()V
.end method

.method public abstract unsetTxEffectClrLst()V
.end method

.method public abstract unsetTxFillClrLst()V
.end method

.method public abstract unsetTxLinClrLst()V
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method
