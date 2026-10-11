.class public Lnet/sf/saxon/style/XSLGlobalContextItem;
.super Lnet/sf/saxon/style/XSLContextItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLContextItem;-><init>()V

    return-void
.end method


# virtual methods
.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLContextItem;->prepareAttributes()V

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLContextItem;->isMayBeOmitted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setMayBeOmitted(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLContextItem;->isAbsentFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setAbsentFocus(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLContextItem;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->addRequiredItemType(Lnet/sf/saxon/type/ItemType;)V

    :try_start_0
    invoke-virtual {p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setContextItemRequirements(Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p1, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "xsl:global-context-item must not appear twice within the same stylesheet module"

    const-string v0, "XTSE3087"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
