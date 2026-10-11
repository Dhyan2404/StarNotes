.class public Lcom/sunia/HTREnginev2/tmo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

.field public b:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

.field public c:Ljava/util/Stack;

.field public d:Z

.field public e:Z

.field public f:S

.field public g:S

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Lorg/w3c/dom/Element;

.field public k:Ljava/util/Vector;

.field public l:Lorg/apache/xerces/impl/validation/ValidationState;

.field public m:Lorg/apache/xerces/util/SymbolTable;

.field public n:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field public o:[Ljava/lang/Object;

.field public p:Lcom/sunia/HTREnginev2/mmo;

.field public q:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;Lorg/apache/xerces/util/SymbolTable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->c:Ljava/util/Stack;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->k:Ljava/util/Vector;

    new-instance v0, Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lorg/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->m:Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->p:Lcom/sunia/HTREnginev2/mmo;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->q:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    new-instance v1, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v1, p1, p3}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lorg/w3c/dom/Element;Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v1}, Lorg/apache/xerces/util/NamespaceSupport;->reset()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/tmo;->i:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/tmo;->m:Lorg/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tmo;->n:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, p0}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sunia/HTREnginev2/tmo;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->o:[Ljava/lang/Object;

    if-eqz p1, :cond_3

    sget p2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    aget-object p1, p1, p2

    check-cast p1, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/tmo;->d:Z

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->o:[Ljava/lang/Object;

    sget p2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    aget-object p1, p1, p2

    check-cast p1, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/tmo;->e:Z

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->o:[Ljava/lang/Object;

    sget p2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    aget-object p1, p1, p2

    check-cast p1, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result p1

    iput-short p1, p0, Lcom/sunia/HTREnginev2/tmo;->f:S

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->o:[Ljava/lang/Object;

    sget p2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    aget-object p1, p1, p2

    check-cast p1, Lorg/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result p1

    iput-short p1, p0, Lcom/sunia/HTREnginev2/tmo;->g:S

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->o:[Ljava/lang/Object;

    sget p2, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    aget-object p1, p1, p2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p3, p1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    :cond_2
    new-instance p1, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {p1, p2}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->b:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p0, p3}, Lorg/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/xerces/impl/xs/XMLSchemaException;

    invoke-direct {p0, v0, v0}, Lorg/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->k:Ljava/util/Vector;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/sunia/HTREnginev2/mmo;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->p:Lcom/sunia/HTREnginev2/mmo;

    iput-object v0, p1, Lcom/sunia/HTREnginev2/mmo;->e:Lcom/sunia/HTREnginev2/mmo;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->p:Lcom/sunia/HTREnginev2/mmo;

    return-void
.end method

.method public c(Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->c:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tmo;->b:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v0, p1}, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    return-void
.end method

.method public d()Lcom/sunia/HTREnginev2/mmo;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->p:Lcom/sunia/HTREnginev2/mmo;

    return-object p0
.end method

.method public e()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->o:[Ljava/lang/Object;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->k:Ljava/util/Vector;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->q:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->q:Ljava/util/Vector;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->q:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->p:Lcom/sunia/HTREnginev2/mmo;

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->a:Lorg/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->l:Lorg/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lorg/apache/xerces/xni/NamespaceContext;)V

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tmo;->n:Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tmo;->o:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sunia/HTREnginev2/tmo;)V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/tmo;->o:[Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "no targetNamspace"

    goto :goto_0

    :cond_0
    const-string v1, "targetNamespace is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tmo;->h:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmo;->j:Lorg/w3c/dom/Element;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    instance-of v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentURI()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " :: schemaLocation is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
