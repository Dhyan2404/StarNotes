.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;",
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

    const-string v2, "ctobjectanchor5a1dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
.end method

.method public abstract addNewTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
.end method

.method public abstract getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
.end method

.method public abstract getMoveWithCells()Z
.end method

.method public abstract getSizeWithCells()Z
.end method

.method public abstract getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;
.end method

.method public abstract isSetMoveWithCells()Z
.end method

.method public abstract isSetSizeWithCells()Z
.end method

.method public abstract setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
.end method

.method public abstract setMoveWithCells(Z)V
.end method

.method public abstract setSizeWithCells(Z)V
.end method

.method public abstract setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V
.end method

.method public abstract unsetMoveWithCells()V
.end method

.method public abstract unsetSizeWithCells()V
.end method

.method public abstract xgetMoveWithCells()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSizeWithCells()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetMoveWithCells(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSizeWithCells(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
