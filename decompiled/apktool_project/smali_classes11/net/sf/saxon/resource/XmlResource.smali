.class public Lnet/sf/saxon/resource/XmlResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/Resource;


# static fields
.field public static final FACTORY:Lnet/sf/saxon/lib/ResourceFactory;


# instance fields
.field public a:Lnet/sf/saxon/om/NodeInfo;

.field public final b:Lnet/sf/saxon/expr/XPathContext;

.field public final c:Lnet/sf/saxon/Configuration;

.field public d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/two;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/two;-><init>()V

    sput-object v0, Lnet/sf/saxon/resource/XmlResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lnet/sf/saxon/resource/XmlResource;->b:Lnet/sf/saxon/expr/XPathContext;

    .line 7
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/resource/XmlResource;->c:Lnet/sf/saxon/Configuration;

    .line 8
    iput-object p2, p0, Lnet/sf/saxon/resource/XmlResource;->a:Lnet/sf/saxon/om/NodeInfo;

    .line 9
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    if-ne p1, p0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied node belongs to wrong configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/XmlResource;->c:Lnet/sf/saxon/Configuration;

    .line 13
    iput-object p1, p0, Lnet/sf/saxon/resource/XmlResource;->b:Lnet/sf/saxon/expr/XPathContext;

    .line 14
    iput-object p2, p0, Lnet/sf/saxon/resource/XmlResource;->d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/XmlResource;->c:Lnet/sf/saxon/Configuration;

    .line 3
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getConversionContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/XmlResource;->b:Lnet/sf/saxon/expr/XPathContext;

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/resource/XmlResource;->a:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/resource/XmlResource;->b(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

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

    new-instance v0, Lnet/sf/saxon/resource/XmlResource;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/resource/XmlResource;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    const-string p0, "application/xml"

    return-object p0
.end method

.method public getItem()Lnet/sf/saxon/om/Item;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/resource/XmlResource;->a:Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/resource/XmlResource;->d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object v1, v0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    iget-object v0, v0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->parseOptions:Lnet/sf/saxon/lib/ParseOptions;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/resource/XmlResource;->c:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/resource/XmlResource;->d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object v3, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->characterContent:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, ": "

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v3, Ljava/io/StringReader;

    iget-object v8, p0, Lnet/sf/saxon/resource/XmlResource;->d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object v8, v8, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->characterContent:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    if-eqz v3, :cond_2

    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Lnet/sf/saxon/resource/XmlResource;->d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object v8, v8, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    invoke-direct {v3, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v3, v2, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    :goto_0
    :try_start_1
    iget-object v1, p0, Lnet/sf/saxon/resource/XmlResource;->c:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/XmlResource;->a:Lnet/sf/saxon/om/NodeInfo;
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lnet/sf/saxon/resource/XmlResource;->d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget v1, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->onError:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "collection(): failed to parse XML file "

    if-eq v1, v5, :cond_4

    if-ne v1, v4, :cond_3

    :try_start_4
    iget-object v1, p0, Lnet/sf/saxon/resource/XmlResource;->b:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v7}, Lnet/sf/saxon/Controller;->warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_3
    iput-object v7, p0, Lnet/sf/saxon/resource/XmlResource;->a:Lnet/sf/saxon/om/NodeInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_4
    :try_start_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :cond_5
    throw p0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lnet/sf/saxon/resource/XmlResource;->d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget v1, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->onError:I

    if-eq v1, v5, :cond_7

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lnet/sf/saxon/resource/XmlResource;->b:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collection(): failed to read XML file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/resource/XmlResource;->d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FODC0005"

    invoke-virtual {v1, p0, v0, v7}, Lnet/sf/saxon/Controller;->warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_6
    return-object v7

    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catch_3
    :cond_8
    :goto_3
    iget-object p0, p0, Lnet/sf/saxon/resource/XmlResource;->a:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public getResourceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/resource/XmlResource;->a:Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/resource/XmlResource;->d:Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
