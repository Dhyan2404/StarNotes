.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;",
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

    const-string v2, "ctbuildlistede3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBuildList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBldDgm()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildDiagram;
.end method

.method public abstract addNewBldGraphic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;
.end method

.method public abstract addNewBldOleChart()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleBuildChart;
.end method

.method public abstract addNewBldP()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;
.end method

.method public abstract getBldDgmArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildDiagram;
.end method

.method public abstract getBldDgmArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildDiagram;
.end method

.method public abstract getBldDgmList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildDiagram;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBldGraphicArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;
.end method

.method public abstract getBldGraphicArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;
.end method

.method public abstract getBldGraphicList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBldOleChartArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleBuildChart;
.end method

.method public abstract getBldOleChartArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleBuildChart;
.end method

.method public abstract getBldOleChartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleBuildChart;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBldPArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;
.end method

.method public abstract getBldPArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;
.end method

.method public abstract getBldPList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewBldDgm(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildDiagram;
.end method

.method public abstract insertNewBldGraphic(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;
.end method

.method public abstract insertNewBldOleChart(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleBuildChart;
.end method

.method public abstract insertNewBldP(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;
.end method

.method public abstract removeBldDgm(I)V
.end method

.method public abstract removeBldGraphic(I)V
.end method

.method public abstract removeBldOleChart(I)V
.end method

.method public abstract removeBldP(I)V
.end method

.method public abstract setBldDgmArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildDiagram;)V
.end method

.method public abstract setBldDgmArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildDiagram;)V
.end method

.method public abstract setBldGraphicArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;)V
.end method

.method public abstract setBldGraphicArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLGraphicalObjectBuild;)V
.end method

.method public abstract setBldOleChartArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleBuildChart;)V
.end method

.method public abstract setBldOleChartArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleBuildChart;)V
.end method

.method public abstract setBldPArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;)V
.end method

.method public abstract setBldPArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLBuildParagraph;)V
.end method

.method public abstract sizeOfBldDgmArray()I
.end method

.method public abstract sizeOfBldGraphicArray()I
.end method

.method public abstract sizeOfBldOleChartArray()I
.end method

.method public abstract sizeOfBldPArray()I
.end method
