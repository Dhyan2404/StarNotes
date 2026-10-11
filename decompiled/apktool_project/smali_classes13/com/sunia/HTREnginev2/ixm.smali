.class public final Lcom/sunia/HTREnginev2/ixm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/yzn;
.implements Lorg/apache/xerces/impl/validation/EntityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/ixm$c;,
        Lcom/sunia/HTREnginev2/ixm$a;,
        Lcom/sunia/HTREnginev2/ixm$b;
    }
.end annotation


# static fields
.field public static final O:Ljava/lang/String; = "javax.xml.stream.isInterning"

.field public static final Q:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final Z:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field public static final k0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final q0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field public final J:Lorg/apache/xerces/util/XMLStringBuffer;

.field public final e:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public final f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field public final g:Lorg/apache/xerces/util/SymbolTable;

.field public final h:Lorg/apache/xerces/impl/validation/ValidationManager;

.field public final i:Lcom/sunia/HTREnginev2/tlo;

.field public final j:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

.field public final k:Lorg/apache/xerces/util/StAXLocationWrapper;

.field public final l:Lcom/sunia/HTREnginev2/ixm$c;

.field public m:Ljava/util/HashMap;

.field public n:Z

.field public o:Lcom/sunia/HTREnginev2/ixm$b;

.field public p:Lcom/sunia/HTREnginev2/ixm$a;

.field public q:Lcom/sunia/HTREnginev2/dxm;

.field public r:Lcom/sunia/HTREnginev2/hxm;

.field public s:Lcom/sunia/HTREnginev2/fxm;

.field public t:I

.field public u:Ljavax/xml/stream/events/XMLEvent;

.field public final v:Lorg/apache/xerces/xni/QName;

.field public final w:Lorg/apache/xerces/xni/QName;

.field public final x:Lorg/apache/xerces/util/XMLAttributesImpl;

.field public final y:Ljava/util/ArrayList;

.field public final z:Lorg/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/tlo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-direct {v0}, Lorg/apache/xerces/util/StAXLocationWrapper;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->k:Lorg/apache/xerces/util/StAXLocationWrapper;

    new-instance v0, Lcom/sunia/HTREnginev2/ixm$c;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ixm$c;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->l:Lcom/sunia/HTREnginev2/ixm$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->m:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/ixm;->n:Z

    iput v1, p0, Lcom/sunia/HTREnginev2/ixm;->t:I

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->u:Ljavax/xml/stream/events/XMLEvent;

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->v:Lorg/apache/xerces/xni/QName;

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->w:Lorg/apache/xerces/xni/QName;

    new-instance v0, Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->x:Lorg/apache/xerces/util/XMLAttributesImpl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->y:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->z:Lorg/apache/xerces/xni/XMLString;

    new-instance v1, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->J:Lorg/apache/xerces/util/XMLStringBuffer;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->i:Lcom/sunia/HTREnginev2/tlo;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->e:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->g:Lorg/apache/xerces/util/SymbolTable;

    const-string v2, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {p1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->h:Lorg/apache/xerces/impl/validation/ValidationManager;

    new-instance p1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-direct {p1, v1}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->j:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {p1, v0}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setDeclaredPrefixes(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/tlo;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->i:Lcom/sunia/HTREnginev2/tlo;

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/ixm$c;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->l:Lcom/sunia/HTREnginev2/ixm$c;

    return-object p0
.end method

.method public static synthetic c(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/StAXLocationWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->k:Lorg/apache/xerces/util/StAXLocationWrapper;

    return-object p0
.end method

.method public static synthetic d(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->j:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    return-object p0
.end method

.method public static synthetic e(Lcom/sunia/HTREnginev2/ixm;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    return-object p0
.end method

.method public static synthetic f(Lcom/sunia/HTREnginev2/ixm;)I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/ixm;->t:I

    return p0
.end method

.method public static synthetic g(Lcom/sunia/HTREnginev2/ixm;)I
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/ixm;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/ixm;->t:I

    return v0
.end method

.method public static synthetic h(Lcom/sunia/HTREnginev2/ixm;)I
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/ixm;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/ixm;->t:I

    return v0
.end method

.method public static synthetic i(Lcom/sunia/HTREnginev2/ixm;)Lcom/sunia/HTREnginev2/dxm;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->q:Lcom/sunia/HTREnginev2/dxm;

    return-object p0
.end method

.method public static synthetic j(Lcom/sunia/HTREnginev2/ixm;)Ljavax/xml/stream/events/XMLEvent;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->u:Ljavax/xml/stream/events/XMLEvent;

    return-object p0
.end method

.method public static synthetic k(Lcom/sunia/HTREnginev2/ixm;Ljavax/xml/stream/events/XMLEvent;)Ljavax/xml/stream/events/XMLEvent;
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->u:Ljavax/xml/stream/events/XMLEvent;

    return-object p1
.end method


# virtual methods
.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->m:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->m:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/events/EntityDeclaration;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/events/EntityDeclaration;->getNotationName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final l(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/ixm;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->g:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm;->g:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p2, p3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ixm;->g:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {p3, p4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    sget-object p3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    move-object p4, p3

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object p2, v1

    :cond_4
    if-nez p3, :cond_5

    sget-object p3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_5
    if-nez p4, :cond_6

    sget-object p4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_6
    move-object v1, p2

    move-object p2, p3

    :goto_2
    sget-object p3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq p4, p3, :cond_7

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ixm;->J:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p3}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ixm;->J:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p3, p4}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ixm;->J:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ixm;->J:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p3, p2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sunia/HTREnginev2/ixm;->g:Lorg/apache/xerces/util/SymbolTable;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->J:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v0, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p0, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget p0, p0, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p3, v0, v2, p0}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    move-object p0, p2

    :goto_3
    invoke-virtual {p1, p4, p2, p0, v1}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m()Ljavax/xml/stream/events/XMLEvent;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->u:Ljavax/xml/stream/events/XMLEvent;

    return-object p0
.end method

.method public final n(Ljava/lang/String;)Ljavax/xml/stream/events/EntityDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->m:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/events/EntityDeclaration;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final o(Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ixm;->m:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/ixm;->m:Ljava/util/HashMap;

    :cond_1
    :goto_1
    if-lt v0, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/events/EntityDeclaration;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ixm;->m:Ljava/util/HashMap;

    invoke-interface {v2}, Ljavax/xml/stream/events/EntityDeclaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final p(Ljavax/xml/stream/Location;Ljavax/xml/transform/stax/StAXResult;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/ixm;->t:I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->i:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/tlo;->reset()V

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/ixm;->q(Ljavax/xml/transform/stax/StAXResult;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm;->h:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lorg/apache/xerces/impl/validation/EntityState;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm;->m:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm;->m:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm;->k:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {p2, p1}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->e:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm;->k:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {p1, p2}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/ixm;->n:Z

    return-void
.end method

.method public final q(Ljavax/xml/transform/stax/StAXResult;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->q:Lcom/sunia/HTREnginev2/dxm;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->r:Lcom/sunia/HTREnginev2/hxm;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/hxm;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->j:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/hxm;-><init>(Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->r:Lcom/sunia/HTREnginev2/hxm;

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->r:Lcom/sunia/HTREnginev2/hxm;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->q:Lcom/sunia/HTREnginev2/dxm;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/hxm;->c(Ljavax/xml/transform/stax/StAXResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->s:Lcom/sunia/HTREnginev2/fxm;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sunia/HTREnginev2/fxm;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->j:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/fxm;-><init>(Lcom/sunia/HTREnginev2/ixm;Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->s:Lcom/sunia/HTREnginev2/fxm;

    :cond_3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->s:Lcom/sunia/HTREnginev2/fxm;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->q:Lcom/sunia/HTREnginev2/dxm;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/fxm;->c(Ljavax/xml/transform/stax/StAXResult;)V

    :goto_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->q:Lcom/sunia/HTREnginev2/dxm;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljavax/xml/transform/stax/StAXResult;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->i:Lcom/sunia/HTREnginev2/tlo;

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
    check-cast p1, Ljavax/xml/transform/stax/StAXSource;

    check-cast p2, Ljavax/xml/transform/stax/StAXResult;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->o:Lcom/sunia/HTREnginev2/ixm$b;

    if-nez p1, :cond_2

    new-instance p1, Lcom/sunia/HTREnginev2/ixm$b;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/ixm$b;-><init>(Lcom/sunia/HTREnginev2/ixm;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->o:Lcom/sunia/HTREnginev2/ixm$b;

    :cond_2
    iget-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->o:Lcom/sunia/HTREnginev2/ixm$b;

    invoke-virtual {p1, v1, p2}, Lcom/sunia/HTREnginev2/ixm$b;->c(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/transform/stax/StAXResult;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->p:Lcom/sunia/HTREnginev2/ixm$a;

    if-nez v1, :cond_4

    new-instance v1, Lcom/sunia/HTREnginev2/ixm$a;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ixm$a;-><init>(Lcom/sunia/HTREnginev2/ixm;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->p:Lcom/sunia/HTREnginev2/ixm$a;

    :cond_4
    iget-object v1, p0, Lcom/sunia/HTREnginev2/ixm;->p:Lcom/sunia/HTREnginev2/ixm$a;

    invoke-virtual {p1}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/sunia/HTREnginev2/ixm$a;->g(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/transform/stax/StAXResult;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->u:Ljavax/xml/stream/events/XMLEvent;

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->k:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {p1, v0}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ixm;->l:Lcom/sunia/HTREnginev2/ixm$c;

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/ixm$c;->b(Ljavax/xml/stream/XMLStreamReader;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->q:Lcom/sunia/HTREnginev2/dxm;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0}, Lcom/sunia/HTREnginev2/dxm;->c(Ljavax/xml/transform/stax/StAXResult;)V

    :cond_5
    return-void

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

    :catch_2
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v0, p0, Lcom/sunia/HTREnginev2/ixm;->u:Ljavax/xml/stream/events/XMLEvent;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm;->k:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {p2, v0}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object p2, p0, Lcom/sunia/HTREnginev2/ixm;->l:Lcom/sunia/HTREnginev2/ixm$c;

    invoke-virtual {p2, v0}, Lcom/sunia/HTREnginev2/ixm$c;->b(Ljavax/xml/stream/XMLStreamReader;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm;->q:Lcom/sunia/HTREnginev2/dxm;

    if-eqz p0, :cond_6

    invoke-interface {p0, v0}, Lcom/sunia/HTREnginev2/dxm;->c(Ljavax/xml/transform/stax/StAXResult;)V

    :cond_6
    throw p1
.end method
