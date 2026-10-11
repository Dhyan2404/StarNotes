.class public interface abstract Lcom/microsoft/schemas/office/office/CTR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTR;",
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

    const-string v2, "ctr0eabtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTR;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTR;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewProxy()Lcom/microsoft/schemas/office/office/CTProxy;
.end method

.method public abstract getHow()Lcom/microsoft/schemas/office/office/STHow$Enum;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdref()Ljava/lang/String;
.end method

.method public abstract getProxyArray(I)Lcom/microsoft/schemas/office/office/CTProxy;
.end method

.method public abstract getProxyArray()[Lcom/microsoft/schemas/office/office/CTProxy;
.end method

.method public abstract getProxyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTProxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Lcom/microsoft/schemas/office/office/STRType$Enum;
.end method

.method public abstract insertNewProxy(I)Lcom/microsoft/schemas/office/office/CTProxy;
.end method

.method public abstract isSetHow()Z
.end method

.method public abstract isSetIdref()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract removeProxy(I)V
.end method

.method public abstract setHow(Lcom/microsoft/schemas/office/office/STHow$Enum;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setIdref(Ljava/lang/String;)V
.end method

.method public abstract setProxyArray(ILcom/microsoft/schemas/office/office/CTProxy;)V
.end method

.method public abstract setProxyArray([Lcom/microsoft/schemas/office/office/CTProxy;)V
.end method

.method public abstract setType(Lcom/microsoft/schemas/office/office/STRType$Enum;)V
.end method

.method public abstract sizeOfProxyArray()I
.end method

.method public abstract unsetHow()V
.end method

.method public abstract unsetIdref()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetHow()Lcom/microsoft/schemas/office/office/STHow;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetIdref()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetType()Lcom/microsoft/schemas/office/office/STRType;
.end method

.method public abstract xsetHow(Lcom/microsoft/schemas/office/office/STHow;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetIdref(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetType(Lcom/microsoft/schemas/office/office/STRType;)V
.end method
