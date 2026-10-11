.class public Lnet/sf/saxon/resource/UnknownResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/Resource;


# static fields
.field public static final FACTORY:Lnet/sf/saxon/lib/ResourceFactory;


# instance fields
.field public final a:Lnet/sf/saxon/expr/XPathContext;

.field public final b:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ytn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ytn;-><init>()V

    sput-object v0, Lnet/sf/saxon/resource/UnknownResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/resource/UnknownResource;->a:Lnet/sf/saxon/expr/XPathContext;

    iput-object p2, p0, Lnet/sf/saxon/resource/UnknownResource;->b:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/resource/UnknownResource;->b(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/resource/UnknownResource;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/resource/UnknownResource;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    const-string p0, "application/xml"

    return-object p0
.end method

.method public getItem()Lnet/sf/saxon/om/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/resource/UnknownResource;->b:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object v1, v0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lnet/sf/saxon/resource/UnknownResource;->b:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object v1, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {v0}, Lnet/sf/saxon/query/InputStreamMarker;->ensureMarkSupported(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    if-nez v2, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/resource/UnknownResource;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getMediaTypeForFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "application/unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v2, "application/binary"

    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/resource/UnknownResource;->b:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iput-object v2, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    iget-object v3, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    invoke-static {v0, v3}, Lnet/sf/saxon/resource/BinaryResource;->readBinaryFromStream(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    iget-object v0, p0, Lnet/sf/saxon/resource/UnknownResource;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->getResourceFactoryForMediaType(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceFactory;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/resource/UnknownResource;->a:Lnet/sf/saxon/expr/XPathContext;

    iget-object p0, p0, Lnet/sf/saxon/resource/UnknownResource;->b:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    invoke-interface {v0, v1, p0}, Lnet/sf/saxon/lib/ResourceFactory;->makeResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/lib/Resource;->getItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to dereference resource URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/resource/UnknownResource;->b:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    iget-object p0, p0, Lnet/sf/saxon/resource/UnknownResource;->b:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->onError:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    return-object v2

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public getResourceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/UnknownResource;->b:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    return-object p0
.end method
