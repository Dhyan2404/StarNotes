.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;",
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

    const-string v2, "ctwordprocessingshape9945type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWordprocessingShape;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
.end method

.method public abstract addNewCNvCnPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;
.end method

.method public abstract addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.end method

.method public abstract addNewCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewLinkedTxbx()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTLinkedTextboxInformation;
.end method

.method public abstract addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract addNewStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
.end method

.method public abstract addNewTxbx()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTTextboxInfo;
.end method

.method public abstract getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
.end method

.method public abstract getCNvCnPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;
.end method

.method public abstract getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.end method

.method public abstract getCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getLinkedTxbx()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTLinkedTextboxInformation;
.end method

.method public abstract getNormalEastAsianFlow()Z
.end method

.method public abstract getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract getStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
.end method

.method public abstract getTxbx()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTTextboxInfo;
.end method

.method public abstract isSetCNvCnPr()Z
.end method

.method public abstract isSetCNvPr()Z
.end method

.method public abstract isSetCNvSpPr()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetLinkedTxbx()Z
.end method

.method public abstract isSetNormalEastAsianFlow()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract isSetTxbx()Z
.end method

.method public abstract setBodyPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)V
.end method

.method public abstract setCNvCnPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;)V
.end method

.method public abstract setCNvPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;)V
.end method

.method public abstract setCNvSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setLinkedTxbx(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTLinkedTextboxInformation;)V
.end method

.method public abstract setNormalEastAsianFlow(Z)V
.end method

.method public abstract setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
.end method

.method public abstract setStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;)V
.end method

.method public abstract setTxbx(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTTextboxInfo;)V
.end method

.method public abstract unsetCNvCnPr()V
.end method

.method public abstract unsetCNvPr()V
.end method

.method public abstract unsetCNvSpPr()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetLinkedTxbx()V
.end method

.method public abstract unsetNormalEastAsianFlow()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract unsetTxbx()V
.end method

.method public abstract xgetNormalEastAsianFlow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetNormalEastAsianFlow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
