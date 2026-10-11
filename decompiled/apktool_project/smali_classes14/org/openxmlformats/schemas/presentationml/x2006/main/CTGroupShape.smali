.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;",
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

    const-string v2, "ctgroupshape5b43type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewContentPart()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTRel;
.end method

.method public abstract addNewCxnSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract addNewGraphicFrame()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
.end method

.method public abstract addNewGrpSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
.end method

.method public abstract addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract addNewNvGrpSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
.end method

.method public abstract addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
.end method

.method public abstract getContentPartArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTRel;
.end method

.method public abstract getContentPartArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTRel;
.end method

.method public abstract getContentPartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTRel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCxnSpArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;
.end method

.method public abstract getCxnSpArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;
.end method

.method public abstract getCxnSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getGraphicFrameArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
.end method

.method public abstract getGraphicFrameArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
.end method

.method public abstract getGraphicFrameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpSpArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
.end method

.method public abstract getGrpSpArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
.end method

.method public abstract getGrpSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract getNvGrpSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;
.end method

.method public abstract getPicArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
.end method

.method public abstract getPicArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
.end method

.method public abstract getPicList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
.end method

.method public abstract getSpArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
.end method

.method public abstract getSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewContentPart(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTRel;
.end method

.method public abstract insertNewCxnSp(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;
.end method

.method public abstract insertNewGraphicFrame(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
.end method

.method public abstract insertNewGrpSp(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
.end method

.method public abstract insertNewPic(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
.end method

.method public abstract insertNewSp(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeContentPart(I)V
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

.method public abstract setContentPartArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTRel;)V
.end method

.method public abstract setContentPartArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTRel;)V
.end method

.method public abstract setCxnSpArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;)V
.end method

.method public abstract setCxnSpArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setGraphicFrameArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;)V
.end method

.method public abstract setGraphicFrameArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;)V
.end method

.method public abstract setGrpSpArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V
.end method

.method public abstract setGrpSpArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V
.end method

.method public abstract setGrpSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;)V
.end method

.method public abstract setNvGrpSpPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;)V
.end method

.method public abstract setPicArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)V
.end method

.method public abstract setPicArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)V
.end method

.method public abstract setSpArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;)V
.end method

.method public abstract setSpArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;)V
.end method

.method public abstract sizeOfContentPartArray()I
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

.method public abstract unsetExtLst()V
.end method
