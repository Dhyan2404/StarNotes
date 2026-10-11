.class public Lorg/apache/xerces/impl/XML11EntityScanner;
.super Lorg/apache/xerces/impl/XMLEntityScanner;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/XMLEntityScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public peekChar()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v0, v1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xd

    if-eq v0, p0, :cond_1

    const/16 p0, 0x85

    if-eq v0, p0, :cond_1

    const/16 p0, 0x2028

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    :cond_2
    :goto_0
    return v0
.end method

.method public scanChar()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v1, v4

    const/16 v4, 0x85

    const/16 v5, 0xd

    const/16 v6, 0xa

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    const/16 v7, 0x2028

    if-ne v1, v7, :cond_5

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr v8, v3

    iput v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v3, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v9, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v8, v9, :cond_3

    iget-object v7, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v8, v1

    aput-char v8, v7, v2

    invoke-virtual {p0, v3, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_3
    if-ne v1, v5, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v1, v2

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_4

    sub-int/2addr v5, v3

    iput v5, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_4
    move v1, v6

    :cond_5
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v1
.end method

.method public scanContent(Lorg/apache/xerces/xni/XMLString;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v2, -0x1

    if-ne v1, v5, :cond_1

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    sub-int/2addr v2, v4

    aget-char v1, v0, v2

    aput-char v1, v0, v3

    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v2, v2, v1

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    const/4 v5, -0x1

    const/16 v6, 0xd

    const/16 v7, 0x2028

    const/16 v8, 0x85

    const/16 v9, 0xa

    if-eq v2, v9, :cond_4

    if-eq v2, v6, :cond_2

    if-eq v2, v8, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v12, v3

    move v3, v1

    goto/16 :goto_9

    :cond_4
    :goto_1
    move v2, v3

    :cond_5
    iget-object v10, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v12, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v11, v11, v12

    if-ne v11, v6, :cond_a

    if-eqz v0, :cond_a

    add-int/lit8 v2, v2, 0x1

    iget v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr v11, v4

    iput v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v4, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v13, v11, :cond_7

    iget v1, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v13, v11

    add-int/2addr v1, v13

    iput v1, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iput v2, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v2, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v3

    :cond_7
    iget-object v10, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v12, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v11, v11, v12

    if-eq v11, v9, :cond_9

    if-ne v11, v8, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    :goto_2
    add-int/lit8 v12, v12, 0x1

    iput v12, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    if-eq v11, v9, :cond_d

    if-eq v11, v8, :cond_b

    if-ne v11, v7, :cond_c

    :cond_b
    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    sub-int/2addr v13, v4

    iput v13, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_6

    :cond_d
    :goto_3
    add-int/lit8 v2, v2, 0x1

    iget v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr v11, v4

    iput v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v4, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v13, v11, :cond_f

    iget v1, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v13, v11

    add-int/2addr v1, v13

    iput v1, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iput v2, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v2, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_4
    move v11, v2

    move v10, v3

    goto :goto_7

    :cond_e
    move v1, v3

    :cond_f
    :goto_5
    iget-object v10, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v11, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v10, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v10, v4

    if-lt v11, v10, :cond_5

    :goto_6
    move v10, v1

    move v11, v2

    :goto_7
    move v1, v10

    :goto_8
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v1, v3, :cond_18

    sub-int v1, v3, v10

    iget v12, v2, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v12, v4

    if-ne v3, v12, :cond_10

    iget-object p0, v2, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, p0, v10, v1}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    return v5

    :cond_10
    move v3, v10

    move v12, v11

    :goto_9
    if-eqz v0, :cond_13

    :cond_11
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v10, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v2, v10, :cond_12

    goto :goto_b

    :cond_12
    iget-object v10, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v11, v2, 0x1

    iput v11, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v10, v2

    invoke-static {v1}, Lorg/apache/xerces/util/XML11Char;->isXML11Content(I)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eq v1, v8, :cond_15

    if-ne v1, v7, :cond_11

    goto :goto_a

    :cond_13
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v10, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v2, v10, :cond_14

    goto :goto_b

    :cond_14
    iget-object v10, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v11, v2, 0x1

    iput v11, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v10, v2

    invoke-static {v1}, Lorg/apache/xerces/util/XML11Char;->isXML11InternalEntityContent(I)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_15
    :goto_a
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v2, v4

    iput v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :goto_b
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v2, v3

    iget v4, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v10, v2, v12

    add-int/2addr v4, v10

    iput v4, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, v1, v3, v2}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq p1, v1, :cond_17

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v5, p0, p1

    if-eq v5, v6, :cond_16

    if-eq v5, v8, :cond_16

    if-ne v5, v7, :cond_17

    :cond_16
    if-eqz v0, :cond_17

    move v5, v9

    :cond_17
    return v5

    :cond_18
    iget-object v2, v2, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v9, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public scanData(Ljava/lang/String;Lorg/apache/xerces/util/XMLStringBuffer;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v6

    move v7, v4

    :goto_0
    iget-object v8, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v8, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v10, 0x1

    if-ne v9, v8, :cond_0

    invoke-virtual {v0, v4, v10}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    move v8, v4

    :goto_1
    iget-object v9, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v11, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v12, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int v13, v12, v3

    if-lt v11, v13, :cond_2

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    iget-object v8, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    sub-int/2addr v12, v11

    invoke-static {v8, v11, v8, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget v8, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v9, v8

    invoke-virtual {v0, v9, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v8

    iget-object v9, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v4, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_1

    :cond_2
    :goto_2
    sub-int v8, v12, v3

    if-lt v11, v8, :cond_3

    sub-int/2addr v12, v11

    iget-object v1, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v2, v1, v11, v12}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v3, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v5, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v6, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iput v3, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v3, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {v0, v4, v10}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    return v4

    :cond_3
    iget-object v8, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v8, v8, v11

    const/16 v9, 0x2028

    const/16 v12, 0xd

    const/16 v13, 0x85

    const/16 v14, 0xa

    if-eq v8, v14, :cond_6

    if-eq v8, v12, :cond_4

    if-eq v8, v13, :cond_4

    if-ne v8, v9, :cond_5

    :cond_4
    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v15, v4

    move v14, v11

    goto/16 :goto_c

    :cond_6
    :goto_3
    move v8, v4

    :goto_4
    iget-object v15, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v13, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v9, v9, v13

    if-ne v9, v12, :cond_b

    if-eqz v6, :cond_b

    add-int/lit8 v8, v8, 0x1

    iget v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr v9, v10

    iput v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v10, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v14, v9, :cond_8

    iget v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v11, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v14, v11

    add-int/2addr v9, v14

    iput v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iput v8, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v8, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {v0, v8, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_7

    :cond_7
    move v11, v4

    :cond_8
    iget-object v9, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v14, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v13, v13, v14

    const/16 v15, 0xa

    if-eq v13, v15, :cond_a

    const/16 v15, 0x85

    if-ne v13, v15, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    iput v14, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_b
    const/16 v13, 0xa

    if-eq v9, v13, :cond_e

    const/16 v13, 0x85

    if-eq v9, v13, :cond_c

    const/16 v13, 0x2028

    if-ne v9, v13, :cond_d

    :cond_c
    if-eqz v6, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v14, v14, -0x1

    iput v14, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_9

    :cond_e
    :goto_6
    add-int/lit8 v8, v8, 0x1

    iget v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr v9, v10

    iput v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v10, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v14, v9, :cond_10

    iget v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v11, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v14, v11

    add-int/2addr v9, v14

    iput v9, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iput v8, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v8, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iput v8, v15, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    invoke-virtual {v0, v8, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v9

    if-eqz v9, :cond_f

    :goto_7
    move v13, v4

    move v9, v8

    goto :goto_a

    :cond_f
    move v11, v4

    :cond_10
    :goto_8
    iget-object v9, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v9, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v9, v10

    if-lt v13, v9, :cond_25

    :goto_9
    move v9, v8

    move v13, v11

    :goto_a
    move v8, v13

    :goto_b
    iget-object v11, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v11, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v8, v14, :cond_24

    sub-int v8, v14, v13

    iget v15, v11, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v15, v10

    if-ne v14, v15, :cond_11

    iget-object v0, v11, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v2, v0, v13, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    return v10

    :cond_11
    move v15, v9

    move v14, v13

    :goto_c
    if-eqz v6, :cond_1b

    :goto_d
    iget-object v8, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v11, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v9, v11, :cond_12

    goto/16 :goto_14

    :cond_12
    iget-object v11, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v13, v9, 0x1

    iput v13, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v9, v11, v9

    if-ne v9, v5, :cond_17

    add-int/lit8 v11, v13, -0x1

    move v8, v10

    :goto_e
    if-lt v8, v3, :cond_13

    goto :goto_f

    :cond_13
    iget-object v9, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v4, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v13, v4, :cond_14

    sub-int/2addr v13, v8

    iput v13, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_14

    :cond_14
    iget-object v4, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v12, v13, 0x1

    iput v12, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v4, v13

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v4, :cond_16

    iget-object v4, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v8, v10

    iput v8, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :goto_f
    iget-object v4, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v11, v3

    if-ne v4, v11, :cond_15

    goto/16 :goto_13

    :cond_15
    const/4 v4, 0x0

    const/16 v12, 0xd

    goto :goto_d

    :cond_16
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/16 v12, 0xd

    goto :goto_e

    :cond_17
    const/16 v4, 0xa

    if-eq v9, v4, :cond_1a

    const/16 v4, 0xd

    if-eq v9, v4, :cond_1a

    const/16 v12, 0x85

    if-eq v9, v12, :cond_1a

    const/16 v11, 0x2028

    if-ne v9, v11, :cond_18

    goto :goto_10

    :cond_18
    invoke-static {v9}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v8

    if-nez v8, :cond_19

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v10

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v14

    iget v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v4, v1, v15

    add-int/2addr v3, v4

    iput v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v2, v0, v14, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    return v10

    :cond_19
    move v12, v4

    const/4 v4, 0x0

    goto :goto_d

    :cond_1a
    :goto_10
    add-int/lit8 v13, v13, -0x1

    iput v13, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_14

    :cond_1b
    iget-object v4, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v9, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v8, v9, :cond_1c

    goto :goto_14

    :cond_1c
    iget-object v9, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v11, v8, 0x1

    iput v11, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v8, v9, v8

    if-ne v8, v5, :cond_20

    add-int/lit8 v9, v11, -0x1

    move v4, v10

    :goto_11
    if-lt v4, v3, :cond_1d

    goto :goto_12

    :cond_1d
    iget-object v8, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v11, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v12, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v11, v12, :cond_1e

    sub-int/2addr v11, v4

    iput v11, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_14

    :cond_1e
    iget-object v12, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v13, v11, 0x1

    iput v13, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v8, v12, v11

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v8, :cond_1f

    iget-object v4, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v8, v10

    iput v8, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :goto_12
    iget-object v4, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v9, v3

    if-ne v4, v9, :cond_1b

    :goto_13
    move v7, v10

    goto :goto_14

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_20
    const/16 v12, 0xa

    if-ne v8, v12, :cond_23

    add-int/lit8 v11, v11, -0x1

    iput v11, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :goto_14
    iget-object v4, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v8, v14

    iget v9, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v11, v8, v15

    add-int/2addr v9, v11

    iput v9, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    if-eqz v7, :cond_21

    sub-int/2addr v8, v3

    :cond_21
    iget-object v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v2, v4, v14, v8}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    if-eqz v7, :cond_22

    xor-int/lit8 v0, v7, 0x1

    return v0

    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_23
    invoke-static {v8}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v10

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v14

    iget v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v4, v1, v15

    add-int/2addr v3, v4

    iput v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v2, v0, v14, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    return v10

    :cond_24
    move v4, v12

    const/16 v12, 0x85

    const/16 v16, 0x2028

    iget-object v11, v11, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v14, 0xa

    aput-char v14, v11, v8

    add-int/lit8 v8, v8, 0x1

    move v12, v4

    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_25
    const/16 v16, 0x2028

    move/from16 v9, v16

    const/16 v13, 0x85

    const/16 v14, 0xa

    goto/16 :goto_4
.end method

.method public scanLiteral(ILorg/apache/xerces/xni/XMLString;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v5, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v6, v7}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v5, -0x1

    if-ne v4, v8, :cond_1

    iget-object v3, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    sub-int/2addr v5, v7

    aget-char v4, v3, v5

    aput-char v4, v3, v6

    invoke-virtual {v0, v7, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v6, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iput v6, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_1
    :goto_0
    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v5, v5, v4

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v3

    const/16 v8, 0xd

    const/16 v10, 0x2028

    const/16 v11, 0x85

    const/16 v12, 0xa

    if-eq v5, v12, :cond_4

    if-eq v5, v8, :cond_2

    if-eq v5, v11, :cond_2

    if-ne v5, v10, :cond_3

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v14, -0x1

    goto/16 :goto_9

    :cond_4
    :goto_1
    move v5, v6

    :cond_5
    iget-object v13, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v14, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v15, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v9, v15, 0x1

    iput v9, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v14, v14, v15

    if-ne v14, v8, :cond_a

    if-eqz v3, :cond_a

    add-int/lit8 v5, v5, 0x1

    iget v14, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr v14, v7

    iput v14, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v7, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v14, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v9, v14, :cond_7

    iget v4, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v14, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v14

    add-int/2addr v4, v9

    iput v4, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iput v5, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v5, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {v0, v5, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v6

    :cond_7
    iget-object v9, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v14, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v13, v13, v14

    if-eq v13, v12, :cond_9

    if-ne v13, v11, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    :goto_2
    add-int/lit8 v14, v14, 0x1

    iput v14, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    if-eq v14, v12, :cond_d

    if-eq v14, v11, :cond_b

    if-ne v14, v10, :cond_c

    :cond_b
    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    sub-int/2addr v9, v7

    iput v9, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_6

    :cond_d
    :goto_3
    add-int/lit8 v5, v5, 0x1

    iget v14, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr v14, v7

    iput v14, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v7, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v14, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v9, v14, :cond_f

    iget v4, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget v14, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v14

    add-int/2addr v4, v9

    iput v4, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iput v5, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v5, v13, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    invoke-virtual {v0, v5, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    :goto_4
    move v13, v5

    move v9, v6

    goto :goto_7

    :cond_e
    move v4, v6

    :cond_f
    :goto_5
    iget-object v9, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v9, v9, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v9, v7

    if-lt v13, v9, :cond_5

    :goto_6
    move v9, v4

    move v13, v5

    :goto_7
    move v4, v9

    :goto_8
    iget-object v5, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v4, v6, :cond_19

    sub-int v4, v6, v9

    iget v8, v5, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v8, v7

    if-ne v6, v8, :cond_10

    iget-object v0, v5, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v2, v0, v9, v4}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    const/4 v14, -0x1

    return v14

    :cond_10
    const/4 v14, -0x1

    move v4, v9

    move v6, v13

    :goto_9
    const/16 v5, 0x25

    if-eqz v3, :cond_13

    :cond_11
    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v9, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v8, v9, :cond_12

    goto :goto_b

    :cond_12
    iget-object v9, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v12, v8, 0x1

    iput v12, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v3, v9, v8

    if-eq v3, v1, :cond_16

    if-eq v3, v5, :cond_16

    invoke-static {v3}, Lorg/apache/xerces/util/XML11Char;->isXML11Content(I)Z

    move-result v8

    if-eqz v8, :cond_16

    if-eq v3, v11, :cond_16

    if-ne v3, v10, :cond_11

    goto :goto_a

    :cond_13
    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v9, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v8, v9, :cond_14

    goto :goto_b

    :cond_14
    iget-object v9, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v10, v8, 0x1

    iput v10, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v8, v9, v8

    if-ne v8, v1, :cond_15

    iget-boolean v3, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-eqz v3, :cond_16

    :cond_15
    if-eq v8, v5, :cond_16

    invoke-static {v8}, Lorg/apache/xerces/util/XML11Char;->isXML11InternalEntityContent(I)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_16
    :goto_a
    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v5, v7

    iput v5, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :goto_b
    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v5, v4

    iget v7, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v6, v5, v6

    add-int/2addr v7, v6

    iput v7, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v3, v3, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v2, v3, :cond_18

    iget-object v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v2, v3, v2

    if-ne v2, v1, :cond_17

    iget-boolean v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    move v9, v2

    goto :goto_d

    :cond_18
    :goto_c
    move v9, v14

    :goto_d
    return v9

    :cond_19
    const/4 v14, -0x1

    iget-object v5, v5, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v12, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8
.end method

.method public scanNCName()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v3, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v6, v2

    iput v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_6

    iget-object v1, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v6, v2

    iput v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_4

    iget-object v1, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    return-object v5

    :cond_3
    move v1, v3

    :cond_4
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v6, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v0, v4}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v6, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v7, v2

    iput v7, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v8, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_6

    iget-object v1, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v1, v3

    aput-char v4, v1, v2

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v2, v0

    iput v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v4, v0

    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v4, v2

    iput v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v6, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v6, :cond_6

    sub-int/2addr v4, v1

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v0

    if-ne v4, v6, :cond_7

    invoke-virtual {p0, v1, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_1

    :cond_7
    invoke-static {v0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_8
    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v6, v2

    iput v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_b

    sub-int/2addr v6, v1

    iget-object v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v7, v4

    if-ne v6, v7, :cond_9

    invoke-virtual {p0, v1, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_2

    :cond_9
    invoke-static {v4, v1, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    invoke-virtual {p0, v6, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_5

    :cond_a
    move v1, v3

    :cond_b
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v6, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v0, v4}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v4, v2

    iput v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v6, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v6, :cond_6

    sub-int/2addr v4, v1

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v0

    if-ne v4, v6, :cond_d

    invoke-virtual {p0, v1, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_3

    :cond_d
    invoke-static {v0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_e
    :goto_4
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v3, v2

    iput v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_f
    move v3, v1

    :goto_5
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v3

    iget v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    if-lez v1, :cond_10

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p0, v0, v3, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v5

    :cond_10
    return-object v5

    :cond_11
    :goto_6
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_12
    return-object v5
.end method

.method public scanName()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v3, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v6, v2

    iput v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_6

    iget-object v1, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v6, v2

    iput v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_4

    iget-object v1, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    return-object v5

    :cond_3
    move v1, v3

    :cond_4
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v6, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v0, v4}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v6, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v7, v2

    iput v7, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v8, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_6

    iget-object v1, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v1, v3

    aput-char v4, v1, v2

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v2, v0

    iput v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v4, v0

    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v4, v2

    iput v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v6, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v6, :cond_6

    sub-int/2addr v4, v1

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v0

    if-ne v4, v6, :cond_7

    invoke-virtual {p0, v1, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_1

    :cond_7
    invoke-static {v0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_8
    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v6, v2

    iput v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_b

    sub-int/2addr v6, v1

    iget-object v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v7, v4

    if-ne v6, v7, :cond_9

    invoke-virtual {p0, v1, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_2

    :cond_9
    invoke-static {v4, v1, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    invoke-virtual {p0, v6, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_5

    :cond_a
    move v1, v3

    :cond_b
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v6, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v0, v4}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v4, v2

    iput v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v6, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v6, :cond_6

    sub-int/2addr v4, v1

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v0

    if-ne v4, v6, :cond_d

    invoke-virtual {p0, v1, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_3

    :cond_d
    invoke-static {v0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_e
    :goto_4
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v3, v2

    iput v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_f
    move v3, v1

    :goto_5
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v3

    iget v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    if-lez v1, :cond_10

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p0, v0, v3, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v5

    :cond_10
    return-object v5

    :cond_11
    :goto_6
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_12
    return-object v5
.end method

.method public scanNmtoken()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v3, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v1, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v4, v1

    invoke-static {v1}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v4, v2

    iput v4, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v5, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v5, :cond_1

    sub-int/2addr v4, v0

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v5, v1

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v0, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_1

    :cond_2
    invoke-static {v1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v5, v2

    iput v5, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_7

    sub-int/2addr v5, v0

    iget-object v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v4

    if-ne v5, v6, :cond_5

    invoke-virtual {p0, v0, v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_2

    :cond_5
    invoke-static {v4, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    invoke-virtual {p0, v5, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_5

    :cond_6
    move v0, v3

    :cond_7
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v5, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v1, v4}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v1

    invoke-static {v1}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v4, v2

    iput v4, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v5, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v5, :cond_1

    sub-int/2addr v4, v0

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v5, v1

    if-ne v4, v5, :cond_9

    invoke-virtual {p0, v0, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_3

    :cond_9
    invoke-static {v1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    invoke-virtual {p0, v4, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_a
    :goto_4
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v3, v2

    iput v3, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_b
    move v3, v0

    :goto_5
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v1, v3

    iget v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    if-lez v1, :cond_c

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p0, v0, v3, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_c
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method public scanQName(Lorg/apache/xerces/xni/QName;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v3, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v7, v2

    iput v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v8, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_6

    iget-object v1, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, v6, p0, p0, v6}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v7, v2

    iput v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v8, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_4

    iget-object v1, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    :goto_1
    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    return v3

    :cond_3
    move v1, v3

    :cond_4
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v7, v4

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-static {v0, v4}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_c

    :cond_5
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v8, v2

    iput v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v9, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v8, v9, :cond_6

    iget-object v1, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v1, v3

    aput-char v4, v1, v2

    invoke-virtual {p0, v5, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v1, v5

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p0, v0, v3, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    :goto_2
    const/4 v0, -0x1

    move v4, v0

    :cond_7
    :goto_3
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v7, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v7, v8, v7

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_9

    if-eq v4, v0, :cond_8

    goto/16 :goto_9

    :cond_8
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_9
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v8, v2

    iput v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v9, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v8, v9, :cond_7

    sub-int/2addr v8, v1

    iget-object v7, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v9, v7

    if-ne v8, v9, :cond_a

    invoke-virtual {p0, v1, v8}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_4

    :cond_a
    invoke-static {v7, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-eq v4, v0, :cond_b

    sub-int/2addr v4, v1

    :cond_b
    invoke-virtual {p0, v8, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_5
    move v1, v3

    move v7, v1

    goto/16 :goto_a

    :cond_c
    move v1, v3

    goto :goto_3

    :cond_d
    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v9, v2

    iput v9, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v10, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v9, v10, :cond_11

    sub-int/2addr v9, v1

    iget-object v8, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v10, v8

    if-ne v9, v10, :cond_e

    invoke-virtual {p0, v1, v9}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_6

    :cond_e
    invoke-static {v8, v1, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    if-eq v4, v0, :cond_f

    sub-int/2addr v4, v1

    :cond_f
    invoke-virtual {p0, v9, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v7, v2

    iput v7, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget v7, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v7, v2

    iput v7, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move v7, v2

    move v1, v3

    goto :goto_a

    :cond_10
    move v1, v3

    :cond_11
    iget-object v8, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v9, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v8, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v8, v9, v8

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-static {v7, v8}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_8

    :cond_12
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v8, v2

    iput v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v9, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v8, v9, :cond_7

    sub-int/2addr v8, v1

    iget-object v7, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v9, v7

    if-ne v8, v9, :cond_13

    invoke-virtual {p0, v1, v8}, Lorg/apache/xerces/impl/XMLEntityScanner;->b(II)V

    goto :goto_7

    :cond_13
    invoke-static {v7, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    if-eq v4, v0, :cond_14

    sub-int/2addr v4, v1

    :cond_14
    invoke-virtual {p0, v8, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_15
    :goto_8
    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v8, v2

    iput v8, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move v7, v2

    goto :goto_a

    :cond_16
    :goto_9
    move v7, v3

    :goto_a
    iget-object v8, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v9, v1

    iget v10, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v10, v9

    iput v10, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    if-lez v9, :cond_1a

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v8, v8, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v3, v8, v1, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v3

    if-eq v4, v0, :cond_19

    sub-int v0, v4, v1

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object v10, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v10, v10, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v8, v10, v1, v0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v1

    sub-int/2addr v9, v0

    sub-int/2addr v9, v2

    add-int/2addr v4, v2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v0, v4

    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v0, v4

    invoke-static {v0}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz v7, :cond_18

    :cond_17
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "IllegalQName"

    invoke-virtual {v0, v7, v8, v6, v5}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_18
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v0, p0, v4, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_19
    move-object p0, v3

    move-object v1, v6

    :goto_b
    invoke-virtual {p1, v1, p0, v3, v6}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1a
    return v3

    :cond_1b
    :goto_c
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    goto/16 :goto_1

    :cond_1c
    return v3
.end method

.method public skipChar(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v1, v4

    const/16 v5, 0xa

    if-ne v1, p1, :cond_2

    add-int/2addr v4, v3

    iput v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ne p1, v5, :cond_1

    iget p0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr p0, v3

    iput p0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_0

    :cond_1
    iget p0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr p0, v3

    iput p0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    :goto_0
    return v3

    :cond_2
    const/16 v4, 0x85

    if-ne p1, v5, :cond_5

    const/16 v6, 0x2028

    if-eq v1, v6, :cond_3

    if-ne v1, v4, :cond_5

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_4
    :goto_1
    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v3, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v3

    :cond_5
    if-ne p1, v5, :cond_8

    const/16 p1, 0xd

    if-ne v1, p1, :cond_8

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v0, p1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v6, p1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v0, v6, :cond_6

    iget-object p1, p1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v0, v1

    aput-char v0, p1, v2

    invoke-virtual {p0, v3, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_6
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char p1, p1, v0

    if-eq p1, v5, :cond_7

    if-ne p1, v4, :cond_4

    :cond_7
    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_1

    :cond_8
    return v2
.end method

.method public skipSpaces()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v1, v4

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v0

    const/16 v4, 0xa

    if-eqz v0, :cond_9

    invoke-static {v1}, Lorg/apache/xerces/util/XML11Char;->isXML11Space(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_1
    const/16 v0, 0x85

    const/16 v5, 0xd

    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_3

    if-eq v1, v0, :cond_3

    const/16 v6, 0x2028

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move v6, v2

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v6, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr v7, v3

    iput v7, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v3, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v7, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v8, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v8, v3

    if-ne v7, v8, :cond_4

    iget-object v6, v6, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v7, v1

    aput-char v7, v6, v2

    invoke-virtual {p0, v3, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v7, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v2, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iput v2, v7, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_1

    :cond_4
    move v6, v2

    :cond_5
    :goto_1
    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v7, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v7, v3

    iput v7, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v5, v5, v7

    if-eq v5, v4, :cond_6

    if-eq v5, v0, :cond_6

    add-int/lit8 v7, v7, -0x1

    iput v7, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_6
    :goto_2
    if-nez v6, :cond_7

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_7
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v1, v0, :cond_8

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XML11Char;->isXML11Space(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_9
    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_a
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-ne v1, v4, :cond_b

    iget v5, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v3, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget v5, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v6, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v6, v3

    if-ne v5, v6, :cond_c

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v1, v1

    aput-char v1, v0, v2

    invoke-virtual {p0, v3, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iput v2, v1, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_3

    :cond_b
    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    :cond_c
    move v0, v2

    :cond_d
    :goto_3
    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_e
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v1, v0, :cond_f

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_f
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    if-nez v0, :cond_a

    return v3

    :cond_10
    return v2
.end method

.method public skipString(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v3

    :cond_1
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v4, v5, v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/2addr v1, v3

    sub-int/2addr p1, v1

    :goto_1
    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    return v2

    :cond_2
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget v6, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_3

    iget-object v4, v4, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v5, v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->a(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr p1, v5

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr p1, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
