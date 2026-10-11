.class public final Lorg/apache/xerces/impl/xs/XSLoaderImpl$a;
.super Lorg/apache/xerces/impl/xs/util/XSGrammarPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/XSLoaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/util/XSGrammarPool;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 5

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_b

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v4

    move p0, v1

    :goto_1
    if-lt p0, v4, :cond_9

    const/4 p0, 0x3

    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    move p0, v1

    :goto_2
    if-lt p0, v2, :cond_7

    const/4 p0, 0x5

    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v4

    move p0, v1

    :goto_3
    if-lt p0, v4, :cond_5

    const/4 p0, 0x7

    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v2

    move p0, v1

    :goto_4
    if-lt p0, v2, :cond_3

    const/16 p0, 0xb

    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getComponents(S)Lorg/apache/xerces/xs/XSNamedMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v4

    move p0, v1

    :goto_5
    if-lt p0, v4, :cond_1

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getAnnotations()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    :goto_6
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v1}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addAnnotation(Lorg/apache/xerces/impl/xs/XSAnnotationImpl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1
    invoke-interface {v3, p0}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSNotationDecl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSNotationDecl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lorg/apache/xerces/impl/xs/XSNotationDecl;)V

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_3
    invoke-interface {v0, p0}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XSGroupDecl;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSGroupDecl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p1, v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lorg/apache/xerces/impl/xs/XSGroupDecl;)V

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_5
    invoke-interface {v3, p0}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v0, p0}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {p1, v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    :cond_9
    invoke-interface {v3, p0}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lorg/apache/xerces/impl/xs/XSAttributeDecl;)V

    :cond_a
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-interface {p0, v2}, Lorg/apache/xerces/xs/XSNamedMap;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    if-nez v4, :cond_c

    invoke-virtual {p1, v3}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lorg/apache/xerces/impl/xs/XSElementDecl;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public final b(Lorg/apache/xerces/xni/grammars/Grammar;)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 0

    instance-of p0, p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public containsGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public putGrammar(Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/XSLoaderImpl$a;->b(Lorg/apache/xerces/xni/grammars/Grammar;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSLoaderImpl$a;->b(Lorg/apache/xerces/xni/grammars/Grammar;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/xs/XSLoaderImpl$a;->a(Lorg/apache/xerces/impl/xs/SchemaGrammar;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->putGrammar(Lorg/apache/xerces/xni/grammars/Grammar;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/xerces/xni/grammars/Grammar;

    return-object p0
.end method
