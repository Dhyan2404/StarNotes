.class public Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient m_key_tables:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getNodeSetDTMByKey(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/XMLString;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object v0, p5

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getKeyTableName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getDocKey()I

    move-result v6

    if-ne p2, v6, :cond_1

    invoke-virtual {v5, p3, p4}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getNodeSetDTMByKey(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-nez v3, :cond_3

    new-instance v2, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    move-result-object v8

    move-object v4, v2

    move v5, p2

    move-object v6, p5

    move-object v7, p3

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;-><init>(ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/util/Vector;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getDocKey()I

    move-result p0

    if-ne p2, p0, :cond_3

    invoke-virtual {v2, p3, p4}, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getNodeSetDTMByKey(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    move-result-object v1

    :cond_3
    return-object v1
.end method
