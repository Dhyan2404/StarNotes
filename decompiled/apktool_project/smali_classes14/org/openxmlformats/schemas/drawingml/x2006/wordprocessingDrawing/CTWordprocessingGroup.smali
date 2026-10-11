.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;",
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

    const-string v2, "ctwordprocessinggroup0ca7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGroupDrawingShapeProps;
.end method

.method public abstract addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.end method

.method public abstract addNewContentPart()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingContentPart;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTGraphicFrame;
.end method

.method public abstract addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;
.end method

.method public abstract addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
.end method

.method public abstract addNewWsp()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;
.end method

.method public abstract getCNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGroupDrawingShapeProps;
.end method

.method public abstract getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.end method

.method public abstract getContentPartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingContentPart;
.end method

.method public abstract getContentPartArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingContentPart;
.end method

.method public abstract getContentPartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingContentPart;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGraphicFrameArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTGraphicFrame;
.end method

.method public abstract getGraphicFrameArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTGraphicFrame;
.end method

.method public abstract getGraphicFrameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTGraphicFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpSpArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;
.end method

.method public abstract getGrpSpArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;
.end method

.method public abstract getGrpSpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
.end method

.method public abstract getPicArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
.end method

.method public abstract getPicArray()[Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
.end method

.method public abstract getPicList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWspArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;
.end method

.method public abstract getWspArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;
.end method

.method public abstract getWspList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewContentPart(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingContentPart;
.end method

.method public abstract insertNewGraphicFrame(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTGraphicFrame;
.end method

.method public abstract insertNewGrpSp(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;
.end method

.method public abstract insertNewPic(I)Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
.end method

.method public abstract insertNewWsp(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;
.end method

.method public abstract isSetCNvPr()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeContentPart(I)V
.end method

.method public abstract removeGraphicFrame(I)V
.end method

.method public abstract removeGrpSp(I)V
.end method

.method public abstract removePic(I)V
.end method

.method public abstract removeWsp(I)V
.end method

.method public abstract setCNvGrpSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGroupDrawingShapeProps;)V
.end method

.method public abstract setCNvPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;)V
.end method

.method public abstract setContentPartArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingContentPart;)V
.end method

.method public abstract setContentPartArray([Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingContentPart;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGraphicFrameArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTGraphicFrame;)V
.end method

.method public abstract setGraphicFrameArray([Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTGraphicFrame;)V
.end method

.method public abstract setGrpSpArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;)V
.end method

.method public abstract setGrpSpArray([Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;)V
.end method

.method public abstract setGrpSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;)V
.end method

.method public abstract setPicArray(ILorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;)V
.end method

.method public abstract setPicArray([Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;)V
.end method

.method public abstract setWspArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;)V
.end method

.method public abstract setWspArray([Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;)V
.end method

.method public abstract sizeOfContentPartArray()I
.end method

.method public abstract sizeOfGraphicFrameArray()I
.end method

.method public abstract sizeOfGrpSpArray()I
.end method

.method public abstract sizeOfPicArray()I
.end method

.method public abstract sizeOfWspArray()I
.end method

.method public abstract unsetCNvPr()V
.end method

.method public abstract unsetExtLst()V
.end method
