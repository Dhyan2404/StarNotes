.class public Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;
.super Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x2fcbcd7627ab1243L


# instance fields
.field private m_endImportCountComposed:I

.field private m_importCountComposed:I

.field private m_importNumber:I

.field private transient m_includesComposed:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;-><init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_importNumber:I

    return-void
.end method


# virtual methods
.method public getEndImportCountComposed()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_endImportCountComposed:I

    return p0
.end method

.method public getImportComposed(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_importNumber:I

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object p0

    return-object p0
.end method

.method public getImportCountComposed()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_importCountComposed:I

    return p0
.end method

.method public getIncludeComposed(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getIncludeCountComposed()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAggregatedType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public recompose(Ljava/util/Vector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    if-ge v1, v0, :cond_9

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getIncludeComposed(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getOutputCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_0

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getOutput(I)Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getAttributeSetCount()I

    move-result v3

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getAttributeSet(I)Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v3

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_2

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getDecimalFormat(I)Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getKeyCount()I

    move-result v3

    move v5, v4

    :goto_4
    if-ge v5, v3, :cond_3

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getKey(I)Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getNamespaceAliasCount()I

    move-result v3

    move v5, v4

    :goto_5
    if-ge v5, v3, :cond_4

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getNamespaceAlias(I)Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getTemplateCount()I

    move-result v3

    move v5, v4

    :goto_6
    if-ge v5, v3, :cond_5

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getTemplate(I)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v3

    move v5, v4

    :goto_7
    if-ge v5, v3, :cond_6

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParam(I)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_6
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStripSpaceCount()I

    move-result v3

    move v5, v4

    :goto_8
    if-ge v5, v3, :cond_7

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStripSpace(I)Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getPreserveSpaceCount()I

    move-result v3

    :goto_9
    if-ge v4, v3, :cond_8

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getPreserveSpace(I)Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public recomposeImports()V
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getImportNumber(Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_importNumber:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_importNumber:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_importCountComposed:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getImportCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_endImportCountComposed:I

    :goto_0
    if-lez v0, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_endImportCountComposed:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getIncludeComposed(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getImportCount()I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_endImportCountComposed:I

    :goto_1
    if-lez v1, :cond_1

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_endImportCountComposed:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getIncludeComposed(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_endImportCountComposed:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public recomposeIncludes(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getIncludeCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getInclude(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->recomposeIncludes(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public recomposeTemplates(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method
