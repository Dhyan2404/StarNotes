.class public final Lcom/sunia/HTREnginev2/tqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/yzn;
.implements Lorg/apache/xerces/impl/validation/EntityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/tqe$a;
    }
.end annotation


# static fields
.field public static final J:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field public static final O:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field public static final Q:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final Z:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final x:I = 0x400

.field public static final y:I = 0x3ff

.field public static final z:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"


# instance fields
.field public final e:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public final f:Lorg/apache/xerces/util/NamespaceSupport;

.field public final g:Lcom/sunia/HTREnginev2/tqe$a;

.field public final h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field public final i:Lorg/apache/xerces/util/SymbolTable;

.field public final j:Lorg/apache/xerces/impl/validation/ValidationManager;

.field public final k:Lcom/sunia/HTREnginev2/tlo;

.field public final l:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

.field public m:Lcom/sunia/HTREnginev2/pqe;

.field public final n:Lcom/sunia/HTREnginev2/rqe;

.field public final o:Lcom/sunia/HTREnginev2/sqe;

.field public p:Lorg/w3c/dom/NamedNodeMap;

.field public final q:[C

.field public r:Lorg/w3c/dom/Node;

.field public s:Lorg/w3c/dom/Node;

.field public final t:Lorg/apache/xerces/xni/QName;

.field public final u:Lorg/apache/xerces/xni/QName;

.field public final v:Lorg/apache/xerces/util/XMLAttributesImpl;

.field public final w:Lorg/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/tlo;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/tqe$a;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tqe$a;-><init>(Lcom/sunia/HTREnginev2/tqe;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->g:Lcom/sunia/HTREnginev2/tqe$a;

    new-instance v0, Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->l:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    new-instance v0, Lcom/sunia/HTREnginev2/rqe;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rqe;-><init>(Lcom/sunia/HTREnginev2/tqe;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->n:Lcom/sunia/HTREnginev2/rqe;

    new-instance v0, Lcom/sunia/HTREnginev2/sqe;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sqe;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->o:Lcom/sunia/HTREnginev2/sqe;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->p:Lorg/w3c/dom/NamedNodeMap;

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->q:[C

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->t:Lorg/apache/xerces/xni/QName;

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->u:Lorg/apache/xerces/xni/QName;

    new-instance v0, Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->v:Lorg/apache/xerces/util/XMLAttributesImpl;

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->w:Lorg/apache/xerces/xni/XMLString;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->k:Lcom/sunia/HTREnginev2/tlo;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->e:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/util/NamespaceSupport;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->f:Lorg/apache/xerces/util/NamespaceSupport;

    const-string v0, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->i:Lorg/apache/xerces/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->j:Lorg/apache/xerces/impl/validation/ValidationManager;

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/NamespaceSupport;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->f:Lorg/apache/xerces/util/NamespaceSupport;

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/tqe;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->r:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public static synthetic c(Lcom/sunia/HTREnginev2/tqe;Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/tqe;->f(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public static synthetic d(Lcom/sunia/HTREnginev2/tqe;)Lorg/apache/xerces/util/SymbolTable;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->i:Lorg/apache/xerces/util/SymbolTable;

    return-object p0
.end method


# virtual methods
.method public final e(Lorg/w3c/dom/Node;)V
    .locals 5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/16 v3, 0xa

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    if-eqz p0, :cond_8

    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/pqe;->comment(Lorg/w3c/dom/Comment;)V

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    if-eqz p0, :cond_8

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/pqe;->processingInstruction(Lorg/w3c/dom/ProcessingInstruction;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/pqe;->setIgnoringCharacters(Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/tqe;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    invoke-interface {v0, v4}, Lcom/sunia/HTREnginev2/pqe;->setIgnoringCharacters(Z)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    check-cast p1, Lorg/w3c/dom/CDATASection;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/pqe;->cdata(Lorg/w3c/dom/CDATASection;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/tqe;->j(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/pqe;->setIgnoringCharacters(Z)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/tqe;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    invoke-interface {v0, v4}, Lcom/sunia/HTREnginev2/pqe;->setIgnoringCharacters(Z)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/pqe;->characters(Lorg/w3c/dom/Text;)V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/tqe;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    if-eqz p0, :cond_8

    check-cast p1, Lorg/w3c/dom/DocumentType;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/pqe;->doctypeDecl(Lorg/w3c/dom/DocumentType;)V

    goto :goto_0

    :cond_7
    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->s:Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->f:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->t:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/tqe;->f(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/tqe;->i(Lorg/w3c/dom/NamedNodeMap;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->t:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->v:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p1, v0, p0, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final f(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V
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

    iget-object v3, p0, Lcom/sunia/HTREnginev2/tqe;->i:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    iput-object v0, p1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->i:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iput-object v0, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->i:Lorg/apache/xerces/util/SymbolTable;

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

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->i:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    iput-object p0, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public final g(Lorg/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->s:Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->t:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/tqe;->f(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->t:Lorg/apache/xerces/xni/QName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->f:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {p0}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_0
    return-void
.end method

.method public h()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->s:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public final i(Lorg/w3c/dom/NamedNodeMap;)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->v:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/sunia/HTREnginev2/tqe;->u:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p0, v4, v2}, Lcom/sunia/HTREnginev2/tqe;->f(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/tqe;->v:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/tqe;->u:Lorg/apache/xerces/xni/QName;

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/tqe;->v:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v2

    invoke-virtual {v4, v1, v2}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/tqe;->u:Lorg/apache/xerces/xni/QName;

    iget-object v4, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v4, v5, :cond_5

    iget-object v4, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/tqe;->f:Lorg/apache/xerces/util/NamespaceSupport;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sunia/HTREnginev2/tqe;->i:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-virtual {v4, v2, v6}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sunia/HTREnginev2/tqe;->f:Lorg/apache/xerces/util/NamespaceSupport;

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sunia/HTREnginev2/tqe;->i:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    invoke-virtual {v2, v4, v6}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->p:Lorg/w3c/dom/NamedNodeMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Entity;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit16 v1, v0, 0x3ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/sunia/HTREnginev2/tqe;->q:[C

    invoke-virtual {p1, v3, v1, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/tqe;->w:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/tqe;->q:[C

    invoke-virtual {v4, v5, v3, v1}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v4, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/tqe;->w:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 v4, v1, 0x400

    iget-object v5, p0, Lcom/sunia/HTREnginev2/tqe;->q:[C

    invoke-virtual {p1, v1, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->w:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/tqe;->q:[C

    const/16 v6, 0x400

    invoke-virtual {v1, v5, v3, v6}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/tqe;->w:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v5, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    move v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final k(Ljavax/xml/transform/dom/DOMSource;Ljavax/xml/transform/dom/DOMResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->n:Lcom/sunia/HTREnginev2/rqe;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/rqe;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->n:Lcom/sunia/HTREnginev2/rqe;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_2

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->o:Lcom/sunia/HTREnginev2/sqe;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/sqe;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->o:Lcom/sunia/HTREnginev2/sqe;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    return-void
.end method

.method public final l(Lorg/w3c/dom/Document;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->p:Lorg/w3c/dom/NamedNodeMap;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final m(Lorg/w3c/dom/Node;)Z
    .locals 2

    instance-of p0, p1, Lorg/apache/xerces/dom/NodeImpl;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    const-string p1, "Core"

    const-string v1, "3.0"

    invoke-interface {p0, p1, v1}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final n(Lorg/w3c/dom/Node;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/tqe;->m(Lorg/w3c/dom/Node;)Z

    move-result v0

    move-object v1, p1

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/tqe;->e(Lorg/w3c/dom/Node;)V

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/tqe;->g(Lorg/w3c/dom/Node;)V

    if-ne p1, v1, :cond_3

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    goto :goto_2

    :cond_4
    if-ne p1, v1, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/tqe;->g(Lorg/w3c/dom/Node;)V

    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljavax/xml/transform/dom/DOMResult;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->k:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SourceResultMismatch"

    invoke-static {p0, p2, p1}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    check-cast p2, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tqe;->r:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->k:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tlo;->reset()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->j:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1, p0}, Lorg/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lorg/apache/xerces/impl/validation/EntityState;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->g:Lcom/sunia/HTREnginev2/tqe$a;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tqe$a;->reset()V

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/tqe;->l:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/tqe;->l:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v2, v1}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->e:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/tqe;->l:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Document;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/sunia/HTREnginev2/tqe;->l(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/tqe;->k(Ljavax/xml/transform/dom/DOMSource;Ljavax/xml/transform/dom/DOMResult;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/tqe;->l:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/tqe;->g:Lcom/sunia/HTREnginev2/tqe$a;

    invoke-virtual {p1, p2, v1, v2, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/tqe;->n(Lorg/w3c/dom/Node;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tqe;->h:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p1, v1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->r:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->s:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->p:Lorg/w3c/dom/NamedNodeMap;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    if-eqz p0, :cond_4

    invoke-interface {p0, v1}, Lcom/sunia/HTREnginev2/pqe;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/sunia/HTREnginev2/fzn;->a(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/fzn;->b(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->r:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->s:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tqe;->p:Lorg/w3c/dom/NamedNodeMap;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tqe;->m:Lcom/sunia/HTREnginev2/pqe;

    if-eqz p0, :cond_3

    invoke-interface {p0, v1}, Lcom/sunia/HTREnginev2/pqe;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    :cond_3
    throw p1

    :cond_4
    :goto_3
    return-void
.end method
