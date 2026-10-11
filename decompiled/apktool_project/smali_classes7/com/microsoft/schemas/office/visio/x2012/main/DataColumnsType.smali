.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnsType;",
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

    const-string v2, "datacolumnstype35f8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDataColumn()Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;
.end method

.method public abstract getDataColumnArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;
.end method

.method public abstract getDataColumnArray()[Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;
.end method

.method public abstract getDataColumnList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSortAsc()Z
.end method

.method public abstract getSortColumn()Ljava/lang/String;
.end method

.method public abstract insertNewDataColumn(I)Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;
.end method

.method public abstract isSetSortAsc()Z
.end method

.method public abstract isSetSortColumn()Z
.end method

.method public abstract removeDataColumn(I)V
.end method

.method public abstract setDataColumnArray(ILcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;)V
.end method

.method public abstract setDataColumnArray([Lcom/microsoft/schemas/office/visio/x2012/main/DataColumnType;)V
.end method

.method public abstract setSortAsc(Z)V
.end method

.method public abstract setSortColumn(Ljava/lang/String;)V
.end method

.method public abstract sizeOfDataColumnArray()I
.end method

.method public abstract unsetSortAsc()V
.end method

.method public abstract unsetSortColumn()V
.end method

.method public abstract xgetSortAsc()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSortColumn()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetSortAsc(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSortColumn(Lorg/apache/xmlbeans/XmlString;)V
.end method
