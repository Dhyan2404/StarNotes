.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;",
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

    const-string v2, "primarykeytyped3dctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PrimaryKeyType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRowKeyValue()Lcom/microsoft/schemas/office/visio/x2012/main/RowKeyValueType;
.end method

.method public abstract getColumnNameID()Ljava/lang/String;
.end method

.method public abstract getRowKeyValueArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/RowKeyValueType;
.end method

.method public abstract getRowKeyValueArray()[Lcom/microsoft/schemas/office/visio/x2012/main/RowKeyValueType;
.end method

.method public abstract getRowKeyValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RowKeyValueType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewRowKeyValue(I)Lcom/microsoft/schemas/office/visio/x2012/main/RowKeyValueType;
.end method

.method public abstract removeRowKeyValue(I)V
.end method

.method public abstract setColumnNameID(Ljava/lang/String;)V
.end method

.method public abstract setRowKeyValueArray(ILcom/microsoft/schemas/office/visio/x2012/main/RowKeyValueType;)V
.end method

.method public abstract setRowKeyValueArray([Lcom/microsoft/schemas/office/visio/x2012/main/RowKeyValueType;)V
.end method

.method public abstract sizeOfRowKeyValueArray()I
.end method

.method public abstract xgetColumnNameID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetColumnNameID(Lorg/apache/xmlbeans/XmlString;)V
.end method
