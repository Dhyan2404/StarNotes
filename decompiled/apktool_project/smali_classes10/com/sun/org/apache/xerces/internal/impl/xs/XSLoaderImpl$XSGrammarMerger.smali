.class final Lcom/sun/org/apache/xerces/internal/impl/xs/XSLoaderImpl$XSGrammarMerger;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSGrammarPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/XSLoaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XSGrammarMerger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSGrammarPool;-><init>()V

    return-void
.end method

.method private mergeSchemaGrammars(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V
    .locals 5

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getComponents(S)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getComponents(S)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->getLength()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x3

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getComponents(S)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->getLength()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    invoke-interface {p0, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x5

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getComponents(S)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->getLength()I

    move-result v0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_7

    invoke-interface {p0, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const/4 p0, 0x7

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getComponents(S)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->getLength()I

    move-result v0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_9

    invoke-interface {p0, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSGroupDecl;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    const/16 p0, 0xb

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getComponents(S)Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->getLength()I

    move-result v0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_b

    invoke-interface {p0, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSNamedMap;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSNotationDecl;)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->getAnnotations()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result p2

    :goto_6
    if-ge v1, p2, :cond_c

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method private toSchemaGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
    .locals 0

    instance-of p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public containsGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public putGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V
    .locals 1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;->getGrammarDescription()Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->getGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSLoaderImpl$XSGrammarMerger;->toSchemaGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSLoaderImpl$XSGrammarMerger;->toSchemaGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSLoaderImpl$XSGrammarMerger;->mergeSchemaGrammars(Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->putGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public retrieveGrammar(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;)Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    return-object p0
.end method
