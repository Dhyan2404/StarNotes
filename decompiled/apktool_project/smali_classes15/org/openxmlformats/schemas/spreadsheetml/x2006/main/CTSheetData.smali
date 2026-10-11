.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;",
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

    const-string v2, "ctsheetdata8408type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
.end method

.method public abstract getRowArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
.end method

.method public abstract getRowArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
.end method

.method public abstract getRowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewRow(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
.end method

.method public abstract removeRow(I)V
.end method

.method public abstract setRowArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;)V
.end method

.method public abstract setRowArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;)V
.end method

.method public abstract sizeOfRowArray()I
.end method
