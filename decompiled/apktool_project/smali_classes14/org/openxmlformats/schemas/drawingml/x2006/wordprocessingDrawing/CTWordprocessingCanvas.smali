.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingCanvas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingCanvas;",
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

    const-string v2, "ctwordprocessingcanvas11aatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingCanvas;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingCanvas;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBg()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFormatting;
.end method

.method public abstract addNewContentPart()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingContentPart;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTGraphicFrame;
.end method

.method public abstract addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
.end method

.method public abstract addNewWgp()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;
.end method

.method public abstract addNewWhole()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTWholeE2OFormatting;
.end method

.method public abstract addNewWsp()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;
.end method

.method public abstract getBg()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFormatting;
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

.method public abstract getWgpArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;
.end method

.method public abstract getWgpArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;
.end method

.method public abstract getWgpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWhole()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTWholeE2OFormatting;
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

.method public abstract insertNewPic(I)Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
.end method

.method public abstract insertNewWgp(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;
.end method

.method public abstract insertNewWsp(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;
.end method

.method public abstract isSetBg()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetWhole()Z
.end method

.method public abstract removeContentPart(I)V
.end method

.method public abstract removeGraphicFrame(I)V
.end method

.method public abstract removePic(I)V
.end method

.method public abstract removeWgp(I)V
.end method

.method public abstract removeWsp(I)V
.end method

.method public abstract setBg(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFormatting;)V
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

.method public abstract setPicArray(ILorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;)V
.end method

.method public abstract setPicArray([Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;)V
.end method

.method public abstract setWgpArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;)V
.end method

.method public abstract setWgpArray([Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingGroup;)V
.end method

.method public abstract setWhole(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTWholeE2OFormatting;)V
.end method

.method public abstract setWspArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;)V
.end method

.method public abstract setWspArray([Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;)V
.end method

.method public abstract sizeOfContentPartArray()I
.end method

.method public abstract sizeOfGraphicFrameArray()I
.end method

.method public abstract sizeOfPicArray()I
.end method

.method public abstract sizeOfWgpArray()I
.end method

.method public abstract sizeOfWspArray()I
.end method

.method public abstract unsetBg()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetWhole()V
.end method
