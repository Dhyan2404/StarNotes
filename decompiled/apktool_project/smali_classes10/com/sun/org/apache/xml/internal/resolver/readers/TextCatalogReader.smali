.class public Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/resolver/readers/CatalogReader;


# instance fields
.field protected caseSensitive:Z

.field protected catfile:Ljava/io/InputStream;

.field protected stack:[I

.field protected tokenStack:Ljava/util/Stack;

.field protected top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->stack:[I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->top:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    return-void
.end method

.method public getCaseSensitive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return p0
.end method

.method public nextChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->top:I

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->stack:[I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->top:I

    aget p0, v1, v0

    return p0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x20

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    return-object v1

    :cond_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_3

    return-object v1

    :cond_3
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_7

    if-ne v3, v1, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v0

    :goto_1
    if-ne v2, v1, :cond_4

    if-eq v0, v1, :cond_5

    :cond_4
    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v2

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_1

    :cond_5
    if-ltz v0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    const/16 v0, 0x8

    const-string v1, "Unterminated comment in catalog file; EOF treated as end-of-comment."

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_7
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->stack:[I

    iget v5, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->top:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aput v3, v4, v5

    add-int/2addr v5, v6

    iput v5, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->top:I

    aput v0, v4, v5

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v0

    const/16 v3, 0x22

    const/4 v4, 0x0

    const-string v5, ""

    if-eq v0, v3, :cond_b

    const/16 v3, 0x27

    if-ne v0, v3, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    if-le v0, v2, :cond_a

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v3

    if-ne v0, v1, :cond_9

    if-ne v3, v1, :cond_9

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->stack:[I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->top:I

    add-int/2addr v2, v6

    aput v0, v1, v2

    add-int/2addr v2, v6

    iput v2, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->top:I

    aput v3, v1, v2

    return-object v5

    :cond_9
    new-array v7, v6, [C

    int-to-char v0, v0

    aput-char v0, v7, v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v0, v3

    goto :goto_2

    :cond_a
    return-object v5

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v1

    if-eq v1, v0, :cond_c

    new-array v2, v6, [C

    int-to-char v1, v1

    aput-char v1, v2, v4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_c
    return-object v5
.end method

.method public readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v0, p2

    :cond_1
    :goto_1
    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 10
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    return-void

    .line 11
    :cond_3
    iget-boolean v4, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->caseSensitive:Z

    if-eqz v4, :cond_4

    move-object v4, v3

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :goto_2
    :try_start_1
    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v5

    .line 14
    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v5

    .line 15
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    move-object v0, p2

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 18
    :cond_6
    new-instance v5, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {v5, v4, v6}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p1, v5}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 19
    :try_start_2
    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    if-nez v0, :cond_7

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 21
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 23
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v4, "Invalid catalog entry"

    invoke-virtual {v0, v2, v4, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_9
    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p0

    .line 26
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p2

    if-ne p2, v1, :cond_a

    .line 27
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    .line 4
    :try_start_1
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->readCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5
    :catch_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p1, "Failed to load catalog, file not found"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return-void
.end method
