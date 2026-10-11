.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;",
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

    const-string v2, "ctgvmlgroupshape6aabtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlConnector;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGraphicalObjectFrame;
.end method

.method public abstract addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;
.end method

.method public abstract addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract addNewNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShapeNonVisual;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlPicture;
.end method

.method public abstract addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlShape;
.end method

.method public abstract addNewTxSp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;
.end method

.method public abstract getCxnSpArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlConnector;
.end method

.method public abstract getCxnSpArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlConnector;
.end method

.method public abstract getCxnSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlConnector;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGraphicFrameArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGraphicalObjectFrame;
.end method

.method public abstract getGraphicFrameArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGraphicalObjectFrame;
.end method

.method public abstract getGraphicFrameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGraphicalObjectFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpSpArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;
.end method

.method public abstract getGrpSpArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;
.end method

.method public abstract getGrpSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract getNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShapeNonVisual;
.end method

.method public abstract getPicArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlPicture;
.end method

.method public abstract getPicArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlPicture;
.end method

.method public abstract getPicList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlPicture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlShape;
.end method

.method public abstract getSpArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlShape;
.end method

.method public abstract getSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTxSpArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;
.end method

.method public abstract getTxSpArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;
.end method

.method public abstract getTxSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCxnSp(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlConnector;
.end method

.method public abstract insertNewGraphicFrame(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGraphicalObjectFrame;
.end method

.method public abstract insertNewGrpSp(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;
.end method

.method public abstract insertNewPic(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlPicture;
.end method

.method public abstract insertNewSp(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlShape;
.end method

.method public abstract insertNewTxSp(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeCxnSp(I)V
.end method

.method public abstract removeGraphicFrame(I)V
.end method

.method public abstract removeGrpSp(I)V
.end method

.method public abstract removePic(I)V
.end method

.method public abstract removeSp(I)V
.end method

.method public abstract removeTxSp(I)V
.end method

.method public abstract setCxnSpArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlConnector;)V
.end method

.method public abstract setCxnSpArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlConnector;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGraphicFrameArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGraphicalObjectFrame;)V
.end method

.method public abstract setGraphicFrameArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGraphicalObjectFrame;)V
.end method

.method public abstract setGrpSpArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;)V
.end method

.method public abstract setGrpSpArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShape;)V
.end method

.method public abstract setGrpSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;)V
.end method

.method public abstract setNvGrpSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlGroupShapeNonVisual;)V
.end method

.method public abstract setPicArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlPicture;)V
.end method

.method public abstract setPicArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlPicture;)V
.end method

.method public abstract setSpArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlShape;)V
.end method

.method public abstract setSpArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlShape;)V
.end method

.method public abstract setTxSpArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;)V
.end method

.method public abstract setTxSpArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGvmlTextShape;)V
.end method

.method public abstract sizeOfCxnSpArray()I
.end method

.method public abstract sizeOfGraphicFrameArray()I
.end method

.method public abstract sizeOfGrpSpArray()I
.end method

.method public abstract sizeOfPicArray()I
.end method

.method public abstract sizeOfSpArray()I
.end method

.method public abstract sizeOfTxSpArray()I
.end method

.method public abstract unsetExtLst()V
.end method
