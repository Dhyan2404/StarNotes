.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetsType;",
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

    const-string v2, "datarecordsetstype9cadtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDataRecordSet()Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;
.end method

.method public abstract getActiveRecordsetID()J
.end method

.method public abstract getDataRecordSetArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;
.end method

.method public abstract getDataRecordSetArray()[Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;
.end method

.method public abstract getDataRecordSetList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataWindowOrder()Ljava/lang/String;
.end method

.method public abstract getNextID()J
.end method

.method public abstract insertNewDataRecordSet(I)Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;
.end method

.method public abstract isSetActiveRecordsetID()Z
.end method

.method public abstract isSetDataWindowOrder()Z
.end method

.method public abstract removeDataRecordSet(I)V
.end method

.method public abstract setActiveRecordsetID(J)V
.end method

.method public abstract setDataRecordSetArray(ILcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;)V
.end method

.method public abstract setDataRecordSetArray([Lcom/microsoft/schemas/office/visio/x2012/main/DataRecordSetType;)V
.end method

.method public abstract setDataWindowOrder(Ljava/lang/String;)V
.end method

.method public abstract setNextID(J)V
.end method

.method public abstract sizeOfDataRecordSetArray()I
.end method

.method public abstract unsetActiveRecordsetID()V
.end method

.method public abstract unsetDataWindowOrder()V
.end method

.method public abstract xgetActiveRecordsetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDataWindowOrder()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNextID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetActiveRecordsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDataWindowOrder(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNextID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
