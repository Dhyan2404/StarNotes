.class public Lnet/sf/saxon/style/XSLNamespaceAlias;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Ljava/lang/String;

.field public v:Lnet/sf/saxon/om/NamespaceBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResultNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLNamespaceAlias;->v:Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0
.end method

.method public getStylesheetURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLNamespaceAlias;->u:Ljava/lang/String;

    return-object p0
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->addNamespaceAlias(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "result-prefix"

    const-string v5, "stylesheet-prefix"

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v6

    invoke-interface {v6}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v6}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    if-nez v1, :cond_3

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    move-object v1, v0

    :cond_3
    const-string v3, "#default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v1, v0

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    move-object v2, v0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v2, v0

    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/saxon/style/XSLNamespaceAlias;->u:Ljava/lang/String;

    const-string v5, "XTSE0812"

    const-string v6, " has not been declared"

    if-nez v4, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stylesheet-prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNamespaceAlias;->u:Ljava/lang/String;

    sget-object v0, Lnet/sf/saxon/om/NamespaceBinding;->DEFAULT_UNDECLARATION:Lnet/sf/saxon/om/NamespaceBinding;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNamespaceAlias;->v:Lnet/sf/saxon/om/NamespaceBinding;

    return-void

    :cond_7
    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result-prefix "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLNamespaceAlias;->u:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move-object v0, v1

    :goto_1
    new-instance v1, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sf/saxon/style/XSLNamespaceAlias;->v:Lnet/sf/saxon/om/NamespaceBinding;

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p1, "XTSE0010"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    return-void
.end method
