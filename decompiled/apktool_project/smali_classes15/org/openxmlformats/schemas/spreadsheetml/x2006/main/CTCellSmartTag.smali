.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;",
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

    const-string v2, "ctcellsmarttag931ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTag;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCellSmartTagPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTagPr;
.end method

.method public abstract getCellSmartTagPrArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTagPr;
.end method

.method public abstract getCellSmartTagPrArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTagPr;
.end method

.method public abstract getCellSmartTagPrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTagPr;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeleted()Z
.end method

.method public abstract getType()J
.end method

.method public abstract getXmlBased()Z
.end method

.method public abstract insertNewCellSmartTagPr(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTagPr;
.end method

.method public abstract isSetDeleted()Z
.end method

.method public abstract isSetXmlBased()Z
.end method

.method public abstract removeCellSmartTagPr(I)V
.end method

.method public abstract setCellSmartTagPrArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTagPr;)V
.end method

.method public abstract setCellSmartTagPrArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellSmartTagPr;)V
.end method

.method public abstract setDeleted(Z)V
.end method

.method public abstract setType(J)V
.end method

.method public abstract setXmlBased(Z)V
.end method

.method public abstract sizeOfCellSmartTagPrArray()I
.end method

.method public abstract unsetDeleted()V
.end method

.method public abstract unsetXmlBased()V
.end method

.method public abstract xgetDeleted()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetType()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetXmlBased()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetDeleted(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetType(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetXmlBased(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
