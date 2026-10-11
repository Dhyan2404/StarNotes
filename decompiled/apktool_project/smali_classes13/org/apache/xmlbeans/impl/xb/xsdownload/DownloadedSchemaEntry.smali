.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLTOOLS/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLTOOLS/TypeSystemHolder;

    const-string v2, "downloadedschemaentry1c75type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSchemaLocation()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract addSchemaLocation(Ljava/lang/String;)V
.end method

.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getSchemaLocationArray(I)Ljava/lang/String;
.end method

.method public abstract getSchemaLocationArray()[Ljava/lang/String;
.end method

.method public abstract getSchemaLocationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSha1()Ljava/lang/String;
.end method

.method public abstract insertNewSchemaLocation(I)Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract insertSchemaLocation(ILjava/lang/String;)V
.end method

.method public abstract isSetNamespace()Z
.end method

.method public abstract removeSchemaLocation(I)V
.end method

.method public abstract setFilename(Ljava/lang/String;)V
.end method

.method public abstract setNamespace(Ljava/lang/String;)V
.end method

.method public abstract setSchemaLocationArray(ILjava/lang/String;)V
.end method

.method public abstract setSchemaLocationArray([Ljava/lang/String;)V
.end method

.method public abstract setSha1(Ljava/lang/String;)V
.end method

.method public abstract sizeOfSchemaLocationArray()I
.end method

.method public abstract unsetNamespace()V
.end method

.method public abstract xgetFilename()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetNamespace()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetSchemaLocationArray(I)Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetSchemaLocationArray()[Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetSchemaLocationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlAnyURI;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetSha1()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xsetFilename(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetNamespace(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetSchemaLocationArray(ILorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetSchemaLocationArray([Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetSha1(Lorg/apache/xmlbeans/XmlToken;)V
.end method
