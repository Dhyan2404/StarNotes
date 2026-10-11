.class public Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fCountSchemaName:I

.field fCurrentSchemaPointer:Ljava/lang/String;

.field fDefaultXPointerSchema:Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

.field fSchemaNotAvailable:Ljava/util/Stack;

.field fSchemaPointer:Ljava/lang/String;

.field fSchemaPointerName:[Ljava/lang/String;

.field fSchemaPointerURI:[Ljava/lang/String;

.field fXPointerSchema:[Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

.field schemaLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;-><init>([Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;)V

    return-void
.end method

.method public constructor <init>([Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fCountSchemaName:I

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->schemaLength:I

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fXPointerSchema:[Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    .line 6
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaNotAvailable:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public getCurrentPointer()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fCountSchemaName:I

    return p0
.end method

.method public getDefaultSchema()Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fDefaultXPointerSchema:Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerElementHandler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fDefaultXPointerSchema:Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fDefaultXPointerSchema:Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    return-object p0
.end method

.method public getEscapedURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getNextXPointerSchema()Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fCountSchemaName:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerName:[Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->getSchemaNames()V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fDefaultXPointerSchema:Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->getDefaultSchema()Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fDefaultXPointerSchema:Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;->getXpointerSchemaName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fDefaultXPointerSchema:Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;->reset()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fDefaultXPointerSchema:Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerURI:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;->setXPointerSchemaPointer(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fCountSchemaName:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->getDefaultSchema()Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fXPointerSchema:[Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fCountSchemaName:I

    return-object v2

    :cond_3
    array-length v1, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerName:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerName:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fXPointerSchema:[Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;->getXpointerSchemaName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fXPointerSchema:[Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerURI:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;->setXPointerSchemaPointer(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fCountSchemaName:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fXPointerSchema:[Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    aget-object p0, p0, v3

    return-object p0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaNotAvailable:Ljava/util/Stack;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaNotAvailable:Ljava/util/Stack;

    :cond_6
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaNotAvailable:Ljava/util/Stack;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method public getSchemaCount()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->schemaLength:I

    return p0
.end method

.method public getSchemaNames()V
    .locals 12

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerName:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerURI:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointer:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointer:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    const/4 v1, 0x1

    move v4, v1

    move v7, v4

    move v3, v5

    :goto_0
    if-ge v5, v0, :cond_5

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointer:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    const/16 v9, 0x29

    if-ne v8, v9, :cond_2

    add-int/lit8 v4, v4, -0x1

    :cond_2
    if-nez v4, :cond_4

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointer:Ljava/lang/String;

    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerURI:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->getEscapedURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v6

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointer:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerName:[Ljava/lang/String;

    add-int/lit8 v8, v7, 0x1

    iget-object v10, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointer:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v3, 0x1

    move v7, v8

    move v6, v9

    move v11, v5

    move v5, v3

    move v3, v11

    goto :goto_1

    :cond_3
    move v3, v5

    move v6, v9

    :cond_4
    :goto_1
    add-int/2addr v5, v1

    goto :goto_0

    :cond_5
    sub-int/2addr v6, v1

    iput v6, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->schemaLength:I

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fXPointerSchema:[Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fCountSchemaName:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->schemaLength:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointerURI:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fDefaultXPointerSchema:Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fCurrentSchemaPointer:Ljava/lang/String;

    return-void
.end method

.method public setSchemaPointer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fSchemaPointer:Ljava/lang/String;

    return-void
.end method

.method public setXPointerSchema([Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/xinclude/XPointerFramework;->fXPointerSchema:[Lcom/sun/org/apache/xerces/internal/xinclude/XPointerSchema;

    return-void
.end method
