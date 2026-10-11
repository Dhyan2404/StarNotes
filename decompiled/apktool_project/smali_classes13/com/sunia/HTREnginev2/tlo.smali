.class public final Lcom/sunia/HTREnginev2/tlo;
.super Lorg/apache/xerces/util/ParserConfigurationSettings;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field public static final A0:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field public static final J:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field public static final O:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field public static final Q:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field public static final Z:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final k0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field public static final q0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final s:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field public static final t:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final t0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final u:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field public static final u0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field public static final v:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field public static final v0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field public static final w:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field public static final w0:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field public static final x:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field public static final x0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final y:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field public static final y0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final z:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field public static final z0:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field public e:Z

.field public f:Z

.field public final g:Ljava/util/HashMap;

.field public final h:Lorg/apache/xerces/impl/XMLEntityManager;

.field public final i:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public final j:Lorg/apache/xerces/xni/NamespaceContext;

.field public final k:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field public final l:Lorg/apache/xerces/impl/validation/ValidationManager;

.field public final m:Ljava/util/HashMap;

.field public final n:Ljava/util/HashMap;

.field public final o:Lorg/apache/xerces/util/SecurityManager;

.field public p:Lorg/xml/sax/ErrorHandler;

.field public q:Lorg/w3c/dom/ls/LSResourceResolver;

.field public r:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 12

    invoke-direct {p0}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/tlo;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tlo;->m:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tlo;->n:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tlo;->p:Lorg/xml/sax/ErrorHandler;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tlo;->q:Lorg/w3c/dom/ls/LSResourceResolver;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/tlo;->r:Ljava/util/Locale;

    new-instance v2, Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v2}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/tlo;->h:Lorg/apache/xerces/impl/XMLEntityManager;

    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v3}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v3, p0, Lcom/sunia/HTREnginev2/tlo;->i:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-direct {v4}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v4, p0, Lcom/sunia/HTREnginev2/tlo;->j:Lorg/apache/xerces/xni/NamespaceContext;

    const-string v5, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v4, p0, Lcom/sunia/HTREnginev2/tlo;->k:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const-string v5, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v5}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v5, p0, Lcom/sunia/HTREnginev2/tlo;->l:Lorg/apache/xerces/impl/validation/ValidationManager;

    const-string v6, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v6}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    const-string v7, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-result-object v6

    const-string v7, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->isFullyComposed()Z

    move-result v6

    iput-boolean v6, p0, Lcom/sunia/HTREnginev2/tlo;->f:Z

    new-instance v6, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v6}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    const-string v7, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v3, v7, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    const-string v6, "http://apache.org/xml/features/disallow-doctype-decl"

    const-string v7, "http://apache.org/xml/features/validation/schema/normalized-value"

    const-string v8, "http://apache.org/xml/features/validation/schema/element-default"

    const-string v9, "http://apache.org/xml/features/validation/schema/augment-psvi"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v10, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, p1}, Lcom/sunia/HTREnginev2/tlo;->a(Lorg/apache/xerces/xni/parser/XMLComponent;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    invoke-virtual {p0, v3, p1}, Lcom/sunia/HTREnginev2/tlo;->a(Lorg/apache/xerces/xni/parser/XMLComponent;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    invoke-virtual {p0, v4, p1}, Lcom/sunia/HTREnginev2/tlo;->a(Lorg/apache/xerces/xni/parser/XMLComponent;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-interface {p1, v2}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getFeature(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/xerces/util/SecurityManager;

    invoke-direct {p1}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tlo;->o:Lorg/apache/xerces/util/SecurityManager;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/sunia/HTREnginev2/tlo;->o:Lorg/apache/xerces/util/SecurityManager;

    :goto_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/tlo;->o:Lorg/apache/xerces/util/SecurityManager;

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-virtual {p1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-virtual {p1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string v0, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-virtual {p1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    const-string p1, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-virtual {p0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xerces/xni/parser/XMLComponent;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/sunia/HTREnginev2/tlo;->f(Lorg/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    invoke-virtual {p0, p1, v1}, Lcom/sunia/HTREnginev2/tlo;->g(Lorg/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;)V

    return-void
.end method

.method public b()Lorg/xml/sax/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tlo;->p:Lorg/xml/sax/ErrorHandler;

    return-object p0
.end method

.method public c()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tlo;->q:Lorg/w3c/dom/ls/LSResourceResolver;

    return-object p0
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/tlo;->e:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->g:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->g:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->g:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/security-manager"

    iget-object v3, p0, Lcom/sunia/HTREnginev2/tlo;->o:Lorg/apache/xerces/util/SecurityManager;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/sunia/HTREnginev2/tlo;->setLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->g:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-super {p0, v2, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tlo;->n:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, v2, v1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public e(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tlo;->p:Lorg/xml/sax/ErrorHandler;

    new-instance v0, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/ehf;->a()Lcom/sunia/HTREnginev2/ehf;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    :goto_0
    const-string p1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/tlo;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lorg/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 4

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p2, v0

    invoke-interface {p3, v1}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getFeature(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/tlo;->e:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final g(Lorg/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/tlo;->e:Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/tlo;->e:Z

    return p0

    :cond_0
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    const-string v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/tlo;->f:Z

    return p0

    :cond_2
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_4
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tlo;->r:Ljava/util/Locale;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public h(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tlo;->q:Lorg/w3c/dom/ls/LSResourceResolver;

    new-instance v0, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-direct {v0, p1}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    const-string p1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/tlo;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->j:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lorg/apache/xerces/xni/NamespaceContext;->reset()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->l:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->h:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->i:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->k:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/tlo;->e:Z

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    if-nez p2, :cond_1

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v1, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/tlo;->f:Z

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v1, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    new-instance p1, Lorg/apache/xerces/util/SecurityManager;

    invoke-direct {p1}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    const-string p2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, p2, p1}, Lcom/sunia/HTREnginev2/tlo;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/tlo;->e:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->h:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLEntityManager;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->i:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->k:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tlo;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void

    :cond_8
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v1, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tlo;->r:Ljava/util/Locale;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tlo;->i:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/sunia/HTREnginev2/tlo;->e:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->h:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->i:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->k:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/tlo;->setLocale(Ljava/util/Locale;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/tlo;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tlo;->n:Ljava/util/HashMap;

    invoke-super {p0, p1}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-super {p0, p1, p2}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {p0, v1, p1}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw p0
.end method
