.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;",
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

    const-string v2, "ctanimationelementchoice9db4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewChart()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationChartElement;
.end method

.method public abstract addNewDgm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationDgmElement;
.end method

.method public abstract getChart()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationChartElement;
.end method

.method public abstract getDgm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationDgmElement;
.end method

.method public abstract isSetChart()Z
.end method

.method public abstract isSetDgm()Z
.end method

.method public abstract setChart(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationChartElement;)V
.end method

.method public abstract setDgm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationDgmElement;)V
.end method

.method public abstract unsetChart()V
.end method

.method public abstract unsetDgm()V
.end method
