.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;",
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

    const-string v2, "ctexternalrowa22etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;
.end method

.method public abstract getCellArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;
.end method

.method public abstract getCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;
.end method

.method public abstract getCellList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getR()J
.end method

.method public abstract insertNewCell(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;
.end method

.method public abstract removeCell(I)V
.end method

.method public abstract setCellArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;)V
.end method

.method public abstract setCellArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;)V
.end method

.method public abstract setR(J)V
.end method

.method public abstract sizeOfCellArray()I
.end method

.method public abstract xgetR()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetR(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
