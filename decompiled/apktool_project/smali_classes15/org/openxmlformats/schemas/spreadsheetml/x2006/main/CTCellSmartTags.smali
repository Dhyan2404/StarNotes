.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTags;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTags;",
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

    const-string v2, "ctcellsmarttagsb05ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTags;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTags;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCellSmartTag()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;
.end method

.method public abstract getCellSmartTagArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;
.end method

.method public abstract getCellSmartTagArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;
.end method

.method public abstract getCellSmartTagList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getR()Ljava/lang/String;
.end method

.method public abstract insertNewCellSmartTag(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;
.end method

.method public abstract removeCellSmartTag(I)V
.end method

.method public abstract setCellSmartTagArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;)V
.end method

.method public abstract setCellSmartTagArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;)V
.end method

.method public abstract setR(Ljava/lang/String;)V
.end method

.method public abstract sizeOfCellSmartTagArray()I
.end method

.method public abstract xgetR()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xsetR(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method
