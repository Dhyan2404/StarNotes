.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPt;",
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

    const-string v2, "ctpt616dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPt;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTPt;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewPrSet()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTElemPropSet;
.end method

.method public abstract addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract addNewT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getCxnId()Ljava/lang/Object;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getModelId()Ljava/lang/Object;
.end method

.method public abstract getPrSet()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTElemPropSet;
.end method

.method public abstract getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract getT()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;
.end method

.method public abstract isSetCxnId()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetPrSet()Z
.end method

.method public abstract isSetSpPr()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setCxnId(Ljava/lang/Object;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setModelId(Ljava/lang/Object;)V
.end method

.method public abstract setPrSet(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTElemPropSet;)V
.end method

.method public abstract setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
.end method

.method public abstract setT(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType$Enum;)V
.end method

.method public abstract unsetCxnId()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetPrSet()V
.end method

.method public abstract unsetSpPr()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetCxnId()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;
.end method

.method public abstract xgetModelId()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;
.end method

.method public abstract xsetCxnId(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;)V
.end method

.method public abstract xsetModelId(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STPtType;)V
.end method
