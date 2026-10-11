.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOfPieChart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOfPieChart;",
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

    const-string v2, "ctofpiechartbbb3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOfPieChart;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOfPieChart;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCustSplit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCustSplit;
.end method

.method public abstract addNewDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewGapWidth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;
.end method

.method public abstract addNewOfPieType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOfPieType;
.end method

.method public abstract addNewSecondPieSize()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSecondPieSize;
.end method

.method public abstract addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;
.end method

.method public abstract addNewSerLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract addNewSplitPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract addNewSplitType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSplitType;
.end method

.method public abstract addNewVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getCustSplit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCustSplit;
.end method

.method public abstract getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getGapWidth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;
.end method

.method public abstract getOfPieType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOfPieType;
.end method

.method public abstract getSecondPieSize()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSecondPieSize;
.end method

.method public abstract getSerArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;
.end method

.method public abstract getSerArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;
.end method

.method public abstract getSerLinesArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract getSerLinesArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract getSerLinesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSplitPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract getSplitType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSplitType;
.end method

.method public abstract getVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;
.end method

.method public abstract insertNewSerLines(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract isSetCustSplit()Z
.end method

.method public abstract isSetDLbls()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGapWidth()Z
.end method

.method public abstract isSetSecondPieSize()Z
.end method

.method public abstract isSetSplitPos()Z
.end method

.method public abstract isSetSplitType()Z
.end method

.method public abstract isSetVaryColors()Z
.end method

.method public abstract removeSer(I)V
.end method

.method public abstract removeSerLines(I)V
.end method

.method public abstract setCustSplit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCustSplit;)V
.end method

.method public abstract setDLbls(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setGapWidth(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGapAmount;)V
.end method

.method public abstract setOfPieType(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTOfPieType;)V
.end method

.method public abstract setSecondPieSize(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSecondPieSize;)V
.end method

.method public abstract setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;)V
.end method

.method public abstract setSerArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieSer;)V
.end method

.method public abstract setSerLinesArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
.end method

.method public abstract setSerLinesArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
.end method

.method public abstract setSplitPos(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;)V
.end method

.method public abstract setSplitType(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSplitType;)V
.end method

.method public abstract setVaryColors(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract sizeOfSerArray()I
.end method

.method public abstract sizeOfSerLinesArray()I
.end method

.method public abstract unsetCustSplit()V
.end method

.method public abstract unsetDLbls()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGapWidth()V
.end method

.method public abstract unsetSecondPieSize()V
.end method

.method public abstract unsetSplitPos()V
.end method

.method public abstract unsetSplitType()V
.end method

.method public abstract unsetVaryColors()V
.end method
