.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTopBottom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTopBottom;",
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

    const-string v2, "ctwraptopbottom5e13type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTopBottom;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTWrapTopBottom;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewEffectExtent()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTEffectExtent;
.end method

.method public abstract getDistB()J
.end method

.method public abstract getDistT()J
.end method

.method public abstract getEffectExtent()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTEffectExtent;
.end method

.method public abstract isSetDistB()Z
.end method

.method public abstract isSetDistT()Z
.end method

.method public abstract isSetEffectExtent()Z
.end method

.method public abstract setDistB(J)V
.end method

.method public abstract setDistT(J)V
.end method

.method public abstract setEffectExtent(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTEffectExtent;)V
.end method

.method public abstract unsetDistB()V
.end method

.method public abstract unsetDistT()V
.end method

.method public abstract unsetEffectExtent()V
.end method

.method public abstract xgetDistB()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistT()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xsetDistB(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistT(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method
