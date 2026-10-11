.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;",
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

    const-string v2, "connectstype8750type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewConnect()Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
.end method

.method public abstract getConnectArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
.end method

.method public abstract getConnectArray()[Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
.end method

.method public abstract getConnectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewConnect(I)Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
.end method

.method public abstract removeConnect(I)V
.end method

.method public abstract setConnectArray(ILcom/microsoft/schemas/office/visio/x2012/main/ConnectType;)V
.end method

.method public abstract setConnectArray([Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;)V
.end method

.method public abstract sizeOfConnectArray()I
.end method
