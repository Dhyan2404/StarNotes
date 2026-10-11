.class public Lnet/sf/saxon/style/XSLItemType;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/style/XSLItemType$a;
    }
.end annotation


# instance fields
.field public u:Lnet/sf/saxon/om/StructuredQName;

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLItemType;->v:Z

    return-void
.end method

.method public static synthetic Z(Lnet/sf/saxon/style/XSLItemType;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLItemType;->b0()V

    return-void
.end method


# virtual methods
.method public final a0(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/type/ItemType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "as"

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const-string v2, "XP"

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/om/QNameParser;

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object v2

    const-string v3, "XPST0003"

    invoke-virtual {v2, v3}, Lnet/sf/saxon/om/QNameParser;->withErrorOnBadSyntax(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v2

    const-string v3, "XPST0081"

    invoke-virtual {v2, v3}, Lnet/sf/saxon/om/QNameParser;->withErrorOnUnresolvedPrefix(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    const-string v2, "item()"

    :cond_0
    invoke-virtual {v1, v2, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExtendedSequenceType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_1

    const-string v0, "Item type must not include an occurrence indicator"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public final b0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLItemType;->v:Z

    return-void
.end method

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

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLItemType;->u:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLItemType;->prepareAttributes()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/XSLItemType;->u:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public indexTypeAlias(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLItemType;->prepareAttributes()V

    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getTypeAliasManager()Lnet/sf/saxon/trans/TypeAliasManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/TypeAliasManager;->processDeclaration(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 11

    iget-object v0, p0, Lnet/sf/saxon/style/XSLItemType;->u:Lnet/sf/saxon/om/StructuredQName;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "as"

    const-string v5, "name"

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v6

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v9, "visibility"

    const/4 v10, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    packed-switch v10, :pswitch_data_0

    invoke-virtual {p0, v6}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :pswitch_0
    const-string v4, "private"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Not implemented"

    const-string v4, "XTSE0010"

    invoke-virtual {p0, v3, v4, v9}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3, v1, v5}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/XSLItemType;->u:Lnet/sf/saxon/om/StructuredQName;

    goto :goto_0

    :pswitch_2
    move-object v2, v3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/style/XSLItemType;->u:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_6

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc32 -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tryToResolve()Lnet/sf/saxon/type/ItemType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/style/XSLItemType$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/style/XSLItemType$a;-><init>(Lnet/sf/saxon/style/XSLItemType;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/style/XSLItemType;->v:Z

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/XSLItemType;->a0(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-boolean p0, p0, Lnet/sf/saxon/style/XSLItemType;->v:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->checkEmpty()V

    const-string p1, "XTSE0010"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->checkTopLevel(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPackageData()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getLocalLicenseId()I

    move-result p0

    const/16 v0, 0x8

    const-string v1, "saxon:item-type"

    invoke-virtual {p1, v0, v1, p0}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    return-void
.end method
