.class public Lcom/sun/org/apache/xalan/internal/templates/ElemUse;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x50e886227b73bd18L


# instance fields
.field private m_attributeSetsNames:[Lcom/sun/org/apache/xml/internal/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->m_attributeSetsNames:[Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method private applyAttrSets(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;[Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 2
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    aget-object v2, p3, v1

    .line 4
    invoke-virtual {p2, v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getAttributeSetComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;

    .line 7
    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_NO_ATTRIB_SET"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public applyAttrSets(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->m_attributeSetsNames:[Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->applyAttrSets(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;[Lcom/sun/org/apache/xml/internal/utils/QName;)V

    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->m_attributeSetsNames:[Lcom/sun/org/apache/xml/internal/utils/QName;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->m_attributeSetsNames:[Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->applyAttrSets(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;[Lcom/sun/org/apache/xml/internal/utils/QName;)V

    :cond_0
    return-void
.end method

.method public getUseAttributeSets()[Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->m_attributeSetsNames:[Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public setUseAttributeSets(Ljava/util/Vector;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [Lcom/sun/org/apache/xml/internal/utils/QName;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->m_attributeSetsNames:[Lcom/sun/org/apache/xml/internal/utils/QName;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->m_attributeSetsNames:[Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/utils/QName;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseAttributeSets([Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->m_attributeSetsNames:[Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method
