.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationChartElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationChartElement;",
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

    const-string v2, "ctanimationchartelemente953type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationChartElement;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationChartElement;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getBldStep()Lorg/openxmlformats/schemas/drawingml/x2006/main/STChartBuildStep$Enum;
.end method

.method public abstract getCategoryIdx()I
.end method

.method public abstract getSeriesIdx()I
.end method

.method public abstract isSetCategoryIdx()Z
.end method

.method public abstract isSetSeriesIdx()Z
.end method

.method public abstract setBldStep(Lorg/openxmlformats/schemas/drawingml/x2006/main/STChartBuildStep$Enum;)V
.end method

.method public abstract setCategoryIdx(I)V
.end method

.method public abstract setSeriesIdx(I)V
.end method

.method public abstract unsetCategoryIdx()V
.end method

.method public abstract unsetSeriesIdx()V
.end method

.method public abstract xgetBldStep()Lorg/openxmlformats/schemas/drawingml/x2006/main/STChartBuildStep;
.end method

.method public abstract xgetCategoryIdx()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetSeriesIdx()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xsetBldStep(Lorg/openxmlformats/schemas/drawingml/x2006/main/STChartBuildStep;)V
.end method

.method public abstract xsetCategoryIdx(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetSeriesIdx(Lorg/apache/xmlbeans/XmlInt;)V
.end method
