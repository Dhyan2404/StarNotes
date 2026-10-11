.class public interface abstract Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;",
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

    const-string v2, "ctgroupshape48cbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGrpSp()Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;
.end method

.method public abstract addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract addNewNvGrpSpPr()Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShapeNonVisual;
.end method

.method public abstract addNewSp()Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTShape;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGrpSpArray(I)Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;
.end method

.method public abstract getGrpSpArray()[Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;
.end method

.method public abstract getGrpSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract getNvGrpSpPr()Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShapeNonVisual;
.end method

.method public abstract getSpArray(I)Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTShape;
.end method

.method public abstract getSpArray()[Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTShape;
.end method

.method public abstract getSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewGrpSp(I)Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;
.end method

.method public abstract insertNewSp(I)Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTShape;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeGrpSp(I)V
.end method

.method public abstract removeSp(I)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGrpSpArray(ILcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;)V
.end method

.method public abstract setGrpSpArray([Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShape;)V
.end method

.method public abstract setGrpSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;)V
.end method

.method public abstract setNvGrpSpPr(Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTGroupShapeNonVisual;)V
.end method

.method public abstract setSpArray(ILcom/microsoft/schemas/office/drawing/x2008/diagram/CTShape;)V
.end method

.method public abstract setSpArray([Lcom/microsoft/schemas/office/drawing/x2008/diagram/CTShape;)V
.end method

.method public abstract sizeOfGrpSpArray()I
.end method

.method public abstract sizeOfSpArray()I
.end method

.method public abstract unsetExtLst()V
.end method
