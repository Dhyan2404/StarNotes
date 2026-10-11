.class public Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/resource/AbstractResourceCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputDetails"
.end annotation


# instance fields
.field public binaryContent:[B

.field public characterContent:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public encoding:Ljava/lang/String;

.field public onError:I

.field public parseOptions:Lnet/sf/saxon/lib/ParseOptions;

.field public resourceUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->onError:I

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/sf/saxon/resource/ResourceLoader;->urlStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public obtainBinaryContent()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->characterContent:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "UTF-8"

    :goto_0
    invoke-static {v0, p0}, Lnet/sf/saxon/resource/BinaryResource;->encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    invoke-static {v0, p0}, Lnet/sf/saxon/resource/BinaryResource;->readBinaryFromStream(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public obtainCharacterContent()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->characterContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Lnet/sf/saxon/resource/BinaryResource;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {v1}, Lnet/sf/saxon/query/InputStreamMarker;->ensureMarkSupported(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/resource/EncodingDetector;->inferStreamEncoding(Ljava/io/InputStream;Lnet/sf/saxon/lib/Logger;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v1, v2}, Lnet/sf/saxon/resource/CatalogCollection;->makeStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->characterContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    iget p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->onError:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method
