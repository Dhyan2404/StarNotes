.class public Lnet/sf/saxon/resource/UnparsedTextResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/Resource;


# static fields
.field public static final FACTORY:Lnet/sf/saxon/lib/ResourceFactory;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bun;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bun;-><init>()V

    sput-object v0, Lnet/sf/saxon/resource/UnparsedTextResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->c:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->d:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    iput-object v1, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->c:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    iput-object v1, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->a:Ljava/lang/String;

    .line 5
    iget-object v1, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    iput-object v1, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->b:Ljava/lang/String;

    .line 6
    iget-object v2, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->characterContent:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7
    iput-object v2, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->d:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_0
    iget-object v2, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    .line 9
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    invoke-static {v1, v0}, Lnet/sf/saxon/resource/EncodingDetector;->inferStreamEncoding(Ljava/io/InputStream;Lnet/sf/saxon/lib/Logger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    iget-object p1, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/resource/UnparsedTextResource;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->d:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/resource/UnparsedTextResource;->b(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/resource/UnparsedTextResource;

    invoke-direct {p0, p1}, Lnet/sf/saxon/resource/UnparsedTextResource;-><init>(Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V

    return-object p0
.end method


# virtual methods
.method public final c([BLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/sf/saxon/resource/ResourceLoader;->urlStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {v0}, Lnet/sf/saxon/query/InputStreamMarker;->ensureMarkSupported(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/sf/saxon/resource/EncodingDetector;->inferStreamEncoding(Ljava/io/InputStream;Lnet/sf/saxon/lib/Logger;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v0, v1}, Lnet/sf/saxon/resource/CatalogCollection;->makeStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "text/plain"

    :cond_0
    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getItem()Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/resource/UnparsedTextResource;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getResourceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/UnparsedTextResource;->c:Ljava/lang/String;

    return-object p0
.end method
