.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;",
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

    const-string v2, "cttlshapetargetelement2763type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewGraphicEl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;
.end method

.method public abstract addNewOleChartEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleChartTargetElement;
.end method

.method public abstract addNewSubSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract addNewTxEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTextTargetElement;
.end method

.method public abstract getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getGraphicEl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;
.end method

.method public abstract getOleChartEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleChartTargetElement;
.end method

.method public abstract getSpid()J
.end method

.method public abstract getSubSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract getTxEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTextTargetElement;
.end method

.method public abstract isSetBg()Z
.end method

.method public abstract isSetGraphicEl()Z
.end method

.method public abstract isSetOleChartEl()Z
.end method

.method public abstract isSetSubSp()Z
.end method

.method public abstract isSetTxEl()Z
.end method

.method public abstract setBg(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setGraphicEl(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;)V
.end method

.method public abstract setOleChartEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleChartTargetElement;)V
.end method

.method public abstract setSpid(J)V
.end method

.method public abstract setSubSp(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;)V
.end method

.method public abstract setTxEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTextTargetElement;)V
.end method

.method public abstract unsetBg()V
.end method

.method public abstract unsetGraphicEl()V
.end method

.method public abstract unsetOleChartEl()V
.end method

.method public abstract unsetSubSp()V
.end method

.method public abstract unsetTxEl()V
.end method

.method public abstract xgetSpid()Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;
.end method

.method public abstract xsetSpid(Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;)V
.end method
