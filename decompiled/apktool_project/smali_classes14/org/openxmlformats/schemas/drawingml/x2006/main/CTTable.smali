.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;",
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

    const-string v2, "cttable5f3ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;
.end method

.method public abstract addNewTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;
.end method

.method public abstract addNewTr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
.end method

.method public abstract getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;
.end method

.method public abstract getTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;
.end method

.method public abstract getTrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
.end method

.method public abstract getTrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
.end method

.method public abstract getTrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
.end method

.method public abstract isSetTblPr()Z
.end method

.method public abstract removeTr(I)V
.end method

.method public abstract setTblGrid(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;)V
.end method

.method public abstract setTblPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;)V
.end method

.method public abstract setTrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;)V
.end method

.method public abstract setTrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;)V
.end method

.method public abstract sizeOfTrArray()I
.end method

.method public abstract unsetTblPr()V
.end method
