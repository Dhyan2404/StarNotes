.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTDrawing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTDrawing;",
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

    const-string v2, "ctdrawingfb76type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTDrawing;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTDrawing;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAbsSizeAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;
.end method

.method public abstract addNewRelSizeAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTRelSizeAnchor;
.end method

.method public abstract getAbsSizeAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;
.end method

.method public abstract getAbsSizeAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;
.end method

.method public abstract getAbsSizeAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRelSizeAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTRelSizeAnchor;
.end method

.method public abstract getRelSizeAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTRelSizeAnchor;
.end method

.method public abstract getRelSizeAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTRelSizeAnchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAbsSizeAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;
.end method

.method public abstract insertNewRelSizeAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTRelSizeAnchor;
.end method

.method public abstract removeAbsSizeAnchor(I)V
.end method

.method public abstract removeRelSizeAnchor(I)V
.end method

.method public abstract setAbsSizeAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;)V
.end method

.method public abstract setAbsSizeAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTAbsSizeAnchor;)V
.end method

.method public abstract setRelSizeAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTRelSizeAnchor;)V
.end method

.method public abstract setRelSizeAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/chartDrawing/CTRelSizeAnchor;)V
.end method

.method public abstract sizeOfAbsSizeAnchorArray()I
.end method

.method public abstract sizeOfRelSizeAnchorArray()I
.end method
