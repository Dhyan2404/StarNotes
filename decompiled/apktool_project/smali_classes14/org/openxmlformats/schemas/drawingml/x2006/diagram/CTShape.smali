.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;",
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

    const-string v2, "ctshapebd1atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTShape;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAdjLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAdjLst;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getAdjLst()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAdjLst;
.end method

.method public abstract getBlip()Ljava/lang/String;
.end method

.method public abstract getBlipPhldr()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getHideGeom()Z
.end method

.method public abstract getLkTxEntry()Z
.end method

.method public abstract getRot()D
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getZOrderOff()I
.end method

.method public abstract isSetAdjLst()Z
.end method

.method public abstract isSetBlip()Z
.end method

.method public abstract isSetBlipPhldr()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHideGeom()Z
.end method

.method public abstract isSetLkTxEntry()Z
.end method

.method public abstract isSetRot()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetZOrderOff()Z
.end method

.method public abstract setAdjLst(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTAdjLst;)V
.end method

.method public abstract setBlip(Ljava/lang/String;)V
.end method

.method public abstract setBlipPhldr(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setHideGeom(Z)V
.end method

.method public abstract setLkTxEntry(Z)V
.end method

.method public abstract setRot(D)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract setZOrderOff(I)V
.end method

.method public abstract unsetAdjLst()V
.end method

.method public abstract unsetBlip()V
.end method

.method public abstract unsetBlipPhldr()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHideGeom()V
.end method

.method public abstract unsetLkTxEntry()V
.end method

.method public abstract unsetRot()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetZOrderOff()V
.end method

.method public abstract xgetBlip()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetBlipPhldr()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHideGeom()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLkTxEntry()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRot()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STLayoutShapeType;
.end method

.method public abstract xgetZOrderOff()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xsetBlip(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetBlipPhldr(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHideGeom(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLkTxEntry(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRot(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STLayoutShapeType;)V
.end method

.method public abstract xsetZOrderOff(Lorg/apache/xmlbeans/XmlInt;)V
.end method
