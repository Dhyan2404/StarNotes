.class public Lnet/sf/saxon/lib/ResourceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DTD_NATURE:Ljava/lang/String; = "https://www.iana.org/assignments/media-types/application/xml-dtd"

.field public static final EXTERNAL_ENTITY_NATURE:Ljava/lang/String; = "https://www.iana.org/assignments/media-types/application/xml-external-parsed-entity"

.field public static final TEXT_NATURE:Ljava/lang/String; = "https://www.iana.org/assignments/media-types/text/plain"

.field public static final XML_NATURE:Ljava/lang/String; = "https://www.iana.org/assignments/media-types/application/xml"

.field public static final XQUERY_NATURE:Ljava/lang/String; = "https://www.iana.org/assignments/media-types/application/xquery"

.field public static final XSD_NATURE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final XSLT_NATURE:Ljava/lang/String; = "http://www.w3.org/1999/XSL/Transform"


# instance fields
.field public baseUri:Ljava/lang/String;

.field public entityName:Ljava/lang/String;

.field public nature:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public purpose:Ljava/lang/String;

.field public relativeUri:Ljava/lang/String;

.field public streamable:Z

.field public uri:Ljava/lang/String;

.field public uriIsNamespace:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lnet/sf/saxon/lib/ResourceRequest;
    .locals 2

    new-instance v0, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    iget-boolean v1, p0, Lnet/sf/saxon/lib/ResourceRequest;->uriIsNamespace:Z

    iput-boolean v1, v0, Lnet/sf/saxon/lib/ResourceRequest;->uriIsNamespace:Z

    iget-object v1, p0, Lnet/sf/saxon/lib/ResourceRequest;->publicId:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/lib/ResourceRequest;->publicId:Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/lib/ResourceRequest;->entityName:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/lib/ResourceRequest;->entityName:Ljava/lang/String;

    iget-boolean p0, p0, Lnet/sf/saxon/lib/ResourceRequest;->streamable:Z

    iput-boolean p0, v0, Lnet/sf/saxon/lib/ResourceRequest;->streamable:Z

    return-object v0
.end method

.method public varargs resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v3, p0}, Lnet/sf/saxon/lib/ResourceResolver;->resolve(Lnet/sf/saxon/lib/ResourceRequest;)Ljavax/xml/transform/Source;

    move-result-object v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/net/URISyntaxException;

    if-nez v3, :cond_0

    :goto_1
    if-eqz v2, :cond_2

    return-object v2

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    throw v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method
