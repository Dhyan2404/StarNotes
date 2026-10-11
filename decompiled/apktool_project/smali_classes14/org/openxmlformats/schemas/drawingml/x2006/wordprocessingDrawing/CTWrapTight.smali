.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTight;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTight;",
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

    const-string v2, "ctwraptightae95type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTight;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTight;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewWrapPolygon()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapPath;
.end method

.method public abstract getDistL()J
.end method

.method public abstract getDistR()J
.end method

.method public abstract getWrapPolygon()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapPath;
.end method

.method public abstract getWrapText()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;
.end method

.method public abstract isSetDistL()Z
.end method

.method public abstract isSetDistR()Z
.end method

.method public abstract setDistL(J)V
.end method

.method public abstract setDistR(J)V
.end method

.method public abstract setWrapPolygon(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapPath;)V
.end method

.method public abstract setWrapText(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText$Enum;)V
.end method

.method public abstract unsetDistL()V
.end method

.method public abstract unsetDistR()V
.end method

.method public abstract xgetDistL()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistR()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetWrapText()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;
.end method

.method public abstract xsetDistL(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistR(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetWrapText(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapText;)V
.end method
