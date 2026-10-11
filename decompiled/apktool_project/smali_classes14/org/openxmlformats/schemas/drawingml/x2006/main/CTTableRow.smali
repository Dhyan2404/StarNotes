.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;",
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

    const-string v2, "cttablerow4ac7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewTc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getH()Ljava/lang/Object;
.end method

.method public abstract getTcArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
.end method

.method public abstract getTcArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
.end method

.method public abstract getTcList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTc(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeTc(I)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setH(Ljava/lang/Object;)V
.end method

.method public abstract setTcArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;)V
.end method

.method public abstract setTcArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;)V
.end method

.method public abstract sizeOfTcArray()I
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetH()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;
.end method

.method public abstract xsetH(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)V
.end method
