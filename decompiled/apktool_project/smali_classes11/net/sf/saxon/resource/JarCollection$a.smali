.class public Lnet/sf/saxon/resource/JarCollection$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/resource/JarCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/sf/saxon/lib/Resource;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field public final e:Ljava/io/FilenameFilter;

.field public f:Lnet/sf/saxon/lib/Resource;

.field public final g:Lnet/sf/saxon/expr/XPathContext;

.field public final h:Ljava/util/zip/ZipInputStream;

.field public i:Ljava/lang/String;

.field public final j:Lnet/sf/saxon/lib/ParseOptions;

.field public final k:Z

.field public final synthetic l:Lnet/sf/saxon/resource/JarCollection;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/resource/JarCollection;Lnet/sf/saxon/expr/XPathContext;Ljava/util/zip/ZipInputStream;Ljava/io/FilenameFilter;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/resource/JarCollection$a;->l:Lnet/sf/saxon/resource/JarCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;

    const-string v0, ""

    iput-object v0, p0, Lnet/sf/saxon/resource/JarCollection$a;->i:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/resource/JarCollection$a;->g:Lnet/sf/saxon/expr/XPathContext;

    iput-object p4, p0, Lnet/sf/saxon/resource/JarCollection$a;->e:Ljava/io/FilenameFilter;

    iput-object p3, p0, Lnet/sf/saxon/resource/JarCollection$a;->h:Ljava/util/zip/ZipInputStream;

    iget-object p3, p1, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {p1, p3, p2}, Lnet/sf/saxon/resource/AbstractResourceCollection;->optionsFromQueryParameters(Lnet/sf/saxon/functions/URIQueryParameters;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/resource/JarCollection$a;->j:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {p1}, Lnet/sf/saxon/resource/JarCollection;->b(Lnet/sf/saxon/resource/JarCollection;)Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    iget-object p1, p1, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getMetaData()Ljava/util/Optional;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lnet/sf/saxon/resource/JarCollection$a;->k:Z

    invoke-virtual {p0}, Lnet/sf/saxon/resource/JarCollection$a;->f()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/resource/JarCollection$a;->h:Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    return-void
.end method

.method public final f()V
    .locals 7

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/resource/JarCollection$a;->h:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/JarCollection$a;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->e:Ljava/io/FilenameFilter;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->i:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->i:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object v5, p0, Lnet/sf/saxon/resource/JarCollection$a;->i:Ljava/lang/String;

    :cond_4
    :goto_1
    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->e:Ljava/io/FilenameFilter;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lnet/sf/saxon/resource/JarCollection$a;->i:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5, v2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v2, p0, Lnet/sf/saxon/resource/JarCollection$a;->h:Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v5, 0x1000

    :try_start_2
    new-array v5, v5, [B

    :goto_2
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v3, v5, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_4
    new-instance v4, Lnet/sf/saxon/resource/FailedResource;

    new-instance v5, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v5, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v4, v0, v5}, Lnet/sf/saxon/resource/FailedResource;-><init>(Ljava/lang/String;Lnet/sf/saxon/trans/XPathException;)V

    iput-object v4, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;

    :goto_3
    new-instance v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    invoke-direct {v2}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;-><init>()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->l:Lnet/sf/saxon/resource/JarCollection;

    iget-object v3, v3, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lnet/sf/saxon/functions/URIQueryParameters;->getContentType()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->l:Lnet/sf/saxon/resource/JarCollection;

    iget-object v3, v3, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {v3}, Lnet/sf/saxon/functions/URIQueryParameters;->getContentType()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->l:Lnet/sf/saxon/resource/JarCollection;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/resource/AbstractResourceCollection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    :goto_4
    iget-object v3, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    if-nez v3, :cond_8

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v4, p0, Lnet/sf/saxon/resource/JarCollection$a;->l:Lnet/sf/saxon/resource/JarCollection;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/resource/AbstractResourceCollection;->guessContentTypeFromContent(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;
    :try_end_4
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_1
    :try_start_6
    iput-object v0, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    :cond_8
    :goto_5
    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->j:Lnet/sf/saxon/lib/ParseOptions;

    iput-object v3, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->parseOptions:Lnet/sf/saxon/lib/ParseOptions;

    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->l:Lnet/sf/saxon/resource/JarCollection;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/sf/saxon/resource/JarCollection;->c(Lnet/sf/saxon/resource/JarCollection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->l:Lnet/sf/saxon/resource/JarCollection;

    iget-object v4, p0, Lnet/sf/saxon/resource/JarCollection$a;->g:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v3, v4, v2}, Lnet/sf/saxon/resource/AbstractResourceCollection;->makeResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;

    iget-boolean v2, p0, Lnet/sf/saxon/resource/JarCollection$a;->k:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lnet/sf/saxon/resource/JarCollection$a;->l:Lnet/sf/saxon/resource/JarCollection;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/resource/JarCollection;->makeProperties(Ljava/util/zip/ZipEntry;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/resource/MetadataResource;

    iget-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;

    iget-object v4, p0, Lnet/sf/saxon/resource/JarCollection$a;->g:Lnet/sf/saxon/expr/XPathContext;

    invoke-direct {v2, v0, v3, v1, v4}, Lnet/sf/saxon/resource/MetadataResource;-><init>(Ljava/lang/String;Lnet/sf/saxon/lib/Resource;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    iput-object v2, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;
    :try_end_6
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_9
    return-void

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    :try_start_7
    new-instance v2, Lnet/sf/saxon/trans/UncheckedXPathException;

    new-instance v4, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v4, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v4}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_3
    move-exception v2

    :try_start_9
    new-instance v3, Lnet/sf/saxon/resource/FailedResource;

    new-instance v4, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v4, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v3, v0, v4}, Lnet/sf/saxon/resource/FailedResource;-><init>(Ljava/lang/String;Lnet/sf/saxon/trans/XPathException;)V

    iput-object v3, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;

    :goto_7
    throw v1
    :try_end_9
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception v1

    new-instance v2, Lnet/sf/saxon/resource/FailedResource;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/resource/FailedResource;-><init>(Ljava/lang/String;Lnet/sf/saxon/trans/XPathException;)V

    iput-object v2, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;

    goto/16 :goto_0

    :catch_5
    move-exception v1

    new-instance v2, Lnet/sf/saxon/resource/FailedResource;

    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v3, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v0, v3}, Lnet/sf/saxon/resource/FailedResource;-><init>(Ljava/lang/String;Lnet/sf/saxon/trans/XPathException;)V

    iput-object v2, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/resource/JarCollection$a;->h:Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_1
    :goto_1
    return v0
.end method

.method public j()Lnet/sf/saxon/lib/Resource;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/resource/JarCollection$a;->f:Lnet/sf/saxon/lib/Resource;

    invoke-virtual {p0}, Lnet/sf/saxon/resource/JarCollection$a;->f()V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/resource/JarCollection$a;->j()Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
