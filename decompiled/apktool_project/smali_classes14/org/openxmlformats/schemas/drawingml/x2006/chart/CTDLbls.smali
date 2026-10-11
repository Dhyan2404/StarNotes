.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;",
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

    const-string v2, "ctdlblsb585type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDLbl()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;
.end method

.method public abstract addNewDLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLblPos;
.end method

.method public abstract addNewDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract addNewNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
.end method

.method public abstract addNewShowBubbleSize()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewShowCatName()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewShowLegendKey()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewShowPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewShowSerName()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewShowVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract addNewTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getDLblArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;
.end method

.method public abstract getDLblArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;
.end method

.method public abstract getDLblList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLblPos;
.end method

.method public abstract getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
.end method

.method public abstract getSeparator()Ljava/lang/String;
.end method

.method public abstract getShowBubbleSize()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getShowCatName()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getShowLeaderLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getShowLegendKey()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getShowPercent()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getShowSerName()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getShowVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract insertNewDLbl(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;
.end method

.method public abstract isSetDLblPos()Z
.end method

.method public abstract isSetDelete()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetLeaderLines()Z
.end method

.method public abstract isSetNumFmt()Z
.end method

.method public abstract isSetSeparator()Z
.end method

.method public abstract isSetShowBubbleSize()Z
.end method

.method public abstract isSetShowCatName()Z
.end method

.method public abstract isSetShowLeaderLines()Z
.end method

.method public abstract isSetShowLegendKey()Z
.end method

.method public abstract isSetShowPercent()Z
.end method

.method public abstract isSetShowSerName()Z
.end method

.method public abstract isSetShowVal()Z
.end method

.method public abstract isSetSpPr()Z
.end method

.method public abstract isSetTxPr()Z
.end method

.method public abstract removeDLbl(I)V
.end method

.method public abstract setDLblArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;)V
.end method

.method public abstract setDLblArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbl;)V
.end method

.method public abstract setDLblPos(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLblPos;)V
.end method

.method public abstract setDelete(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setLeaderLines(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
.end method

.method public abstract setNumFmt(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;)V
.end method

.method public abstract setSeparator(Ljava/lang/String;)V
.end method

.method public abstract setShowBubbleSize(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setShowCatName(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setShowLeaderLines(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setShowLegendKey(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setShowPercent(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setShowSerName(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setShowVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
.end method

.method public abstract setTxPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
.end method

.method public abstract sizeOfDLblArray()I
.end method

.method public abstract unsetDLblPos()V
.end method

.method public abstract unsetDelete()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetLeaderLines()V
.end method

.method public abstract unsetNumFmt()V
.end method

.method public abstract unsetSeparator()V
.end method

.method public abstract unsetShowBubbleSize()V
.end method

.method public abstract unsetShowCatName()V
.end method

.method public abstract unsetShowLeaderLines()V
.end method

.method public abstract unsetShowLegendKey()V
.end method

.method public abstract unsetShowPercent()V
.end method

.method public abstract unsetShowSerName()V
.end method

.method public abstract unsetShowVal()V
.end method

.method public abstract unsetSpPr()V
.end method

.method public abstract unsetTxPr()V
.end method

.method public abstract xgetSeparator()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetSeparator(Lorg/apache/xmlbeans/XmlString;)V
.end method
