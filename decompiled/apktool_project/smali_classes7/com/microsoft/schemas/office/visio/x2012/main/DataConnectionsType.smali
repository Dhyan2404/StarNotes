.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionsType;",
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

    const-string v2, "dataconnectionstypec600type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDataConnection()Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;
.end method

.method public abstract getDataConnectionArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;
.end method

.method public abstract getDataConnectionArray()[Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;
.end method

.method public abstract getDataConnectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNextID()J
.end method

.method public abstract insertNewDataConnection(I)Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;
.end method

.method public abstract removeDataConnection(I)V
.end method

.method public abstract setDataConnectionArray(ILcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;)V
.end method

.method public abstract setDataConnectionArray([Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;)V
.end method

.method public abstract setNextID(J)V
.end method

.method public abstract sizeOfDataConnectionArray()I
.end method

.method public abstract xgetNextID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetNextID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
