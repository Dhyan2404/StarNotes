.class public final Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:I

.field public c:Z

.field public final d:Lorg/w3c/dom/Element;

.field public final e:Lorg/apache/xerces/util/SymbolTable;

.field public final f:Lorg/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->b:I

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->c:Z

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->f:Lorg/apache/xerces/xni/QName;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->d:Lorg/w3c/dom/Element;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->e:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->b:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->a:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->a:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->b:I

    add-int/lit8 v2, v1, 0x1

    aput-object p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->b:I

    aput-object p2, v0, v2

    return-void
.end method

.method public b()V
    .locals 9

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->d:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_7

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_3
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->f:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, v6, v4}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->c(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->f:Lorg/apache/xerces/xni/QName;

    iget-object v6, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v6, v7, :cond_6

    iget-object v6, v4, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_4

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_4
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->e:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_5
    invoke-virtual {p0, v4, v8}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method public final c(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V
    .locals 4

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->e:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iput-object v0, p1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->e:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iput-object v0, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->e:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iput-object v0, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->e:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    iput-object p0, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->b:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport$a;->a:[Ljava/lang/String;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-object p0, v1, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
