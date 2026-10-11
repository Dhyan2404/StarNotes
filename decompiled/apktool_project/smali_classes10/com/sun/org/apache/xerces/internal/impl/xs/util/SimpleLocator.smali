.class public Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;


# instance fields
.field charOffset:I

.field column:I

.field esid:Ljava/lang/String;

.field line:I

.field lsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->line:I

    .line 5
    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->column:I

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->lsid:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->esid:Ljava/lang/String;

    .line 8
    iput p5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->charOffset:I

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCharacterOffset()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->charOffset:I

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->column:I

    return p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->esid:Ljava/lang/String;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->line:I

    return p0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->lsid:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setBaseSystemId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCharacterOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->charOffset:I

    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->column:I

    return-void
.end method

.method public setExpandedSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->esid:Ljava/lang/String;

    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->line:I

    return-void
.end method

.method public setLiteralSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->lsid:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->setValues(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->line:I

    .line 3
    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->column:I

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->lsid:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->esid:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;->charOffset:I

    return-void
.end method
