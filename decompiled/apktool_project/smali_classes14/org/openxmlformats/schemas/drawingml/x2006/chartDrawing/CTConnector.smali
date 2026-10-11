.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnector;",
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

    const-string v2, "ctconnectorf0a5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnector;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnector;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewNvCxnSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnectorNonVisual;
.end method

.method public abstract addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract addNewStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
.end method

.method public abstract getFPublished()Z
.end method

.method public abstract getMacro()Ljava/lang/String;
.end method

.method public abstract getNvCxnSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnectorNonVisual;
.end method

.method public abstract getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract getStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
.end method

.method public abstract isSetFPublished()Z
.end method

.method public abstract isSetMacro()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract setFPublished(Z)V
.end method

.method public abstract setMacro(Ljava/lang/String;)V
.end method

.method public abstract setNvCxnSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTConnectorNonVisual;)V
.end method

.method public abstract setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
.end method

.method public abstract setStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;)V
.end method

.method public abstract unsetFPublished()V
.end method

.method public abstract unsetMacro()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract xgetFPublished()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMacro()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetFPublished(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMacro(Lorg/apache/xmlbeans/XmlString;)V
.end method
