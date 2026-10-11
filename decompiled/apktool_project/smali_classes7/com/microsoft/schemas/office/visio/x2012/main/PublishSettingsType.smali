.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/PublishSettingsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/PublishSettingsType;",
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

    const-string v2, "publishsettingstype90d9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PublishSettingsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PublishSettingsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPublishedPage()Lcom/microsoft/schemas/office/visio/x2012/main/PublishedPageType;
.end method

.method public abstract addNewRefreshableData()Lcom/microsoft/schemas/office/visio/x2012/main/RefreshableDataType;
.end method

.method public abstract getPublishedPageArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/PublishedPageType;
.end method

.method public abstract getPublishedPageArray()[Lcom/microsoft/schemas/office/visio/x2012/main/PublishedPageType;
.end method

.method public abstract getPublishedPageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/PublishedPageType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRefreshableDataArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/RefreshableDataType;
.end method

.method public abstract getRefreshableDataArray()[Lcom/microsoft/schemas/office/visio/x2012/main/RefreshableDataType;
.end method

.method public abstract getRefreshableDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RefreshableDataType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewPublishedPage(I)Lcom/microsoft/schemas/office/visio/x2012/main/PublishedPageType;
.end method

.method public abstract insertNewRefreshableData(I)Lcom/microsoft/schemas/office/visio/x2012/main/RefreshableDataType;
.end method

.method public abstract removePublishedPage(I)V
.end method

.method public abstract removeRefreshableData(I)V
.end method

.method public abstract setPublishedPageArray(ILcom/microsoft/schemas/office/visio/x2012/main/PublishedPageType;)V
.end method

.method public abstract setPublishedPageArray([Lcom/microsoft/schemas/office/visio/x2012/main/PublishedPageType;)V
.end method

.method public abstract setRefreshableDataArray(ILcom/microsoft/schemas/office/visio/x2012/main/RefreshableDataType;)V
.end method

.method public abstract setRefreshableDataArray([Lcom/microsoft/schemas/office/visio/x2012/main/RefreshableDataType;)V
.end method

.method public abstract sizeOfPublishedPageArray()I
.end method

.method public abstract sizeOfRefreshableDataArray()I
.end method
