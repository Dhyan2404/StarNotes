.class public Lnet/sf/saxon/style/Compilation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/style/Compilation$a;
    }
.end annotation


# static fields
.field public static TIMING:Z


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;

.field public final b:Lnet/sf/saxon/trans/CompilerInfo;

.field public c:Lnet/sf/saxon/style/PrincipalStylesheetModule;

.field public d:I

.field public e:Z

.field public final f:Lnet/sf/saxon/om/QNameParser;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/style/Compilation$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/DocumentKey;",
            "Lnet/sf/saxon/om/TreeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lnet/sf/saxon/expr/PackageData;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lnet/sf/saxon/trans/packages/VersionedPackageName;

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/packages/UsePack;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/packages/VersionedPackageName;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

.field public r:Z

.field public timer:Lnet/sf/saxon/trans/Timer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/trans/CompilerInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/style/Compilation;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/Compilation;->g:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/Compilation;->h:Ljava/util/Map;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/Compilation;->i:Ljava/util/Stack;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/style/Compilation;->k:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/Compilation;->l:Z

    iput-boolean v0, p0, Lnet/sf/saxon/style/Compilation;->m:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/sf/saxon/style/Compilation;->n:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lnet/sf/saxon/style/Compilation;->o:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lnet/sf/saxon/style/Compilation;->p:Ljava/util/List;

    iput-boolean v0, p0, Lnet/sf/saxon/style/Compilation;->r:Z

    iput-object v2, p0, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    iput-object p1, p0, Lnet/sf/saxon/style/Compilation;->a:Lnet/sf/saxon/Configuration;

    iput-object p2, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p2}, Lnet/sf/saxon/trans/CompilerInfo;->isSchemaAware()Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/style/Compilation;->e:Z

    invoke-virtual {p2}, Lnet/sf/saxon/trans/CompilerInfo;->isJustInTimeCompilation()Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/style/Compilation;->k:Z

    invoke-virtual {p2}, Lnet/sf/saxon/trans/CompilerInfo;->getParameters()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/Compilation;->q:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    new-instance p1, Lnet/sf/saxon/om/QNameParser;

    invoke-direct {p1, v2}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object p1

    const-string p2, "XTSE0020"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/om/QNameParser;->withErrorOnBadSyntax(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object p1

    const-string p2, "XTSE0280"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/om/QNameParser;->withErrorOnUnresolvedPrefix(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/Compilation;->f:Lnet/sf/saxon/om/QNameParser;

    sget-boolean p1, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/trans/Timer;

    invoke-direct {p1}, Lnet/sf/saxon/trans/Timer;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    :cond_0
    return-void
.end method

.method public static compileSingletonPackage(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/trans/CompilerInfo;Ljavax/xml/transform/Source;)Lnet/sf/saxon/PreparedStylesheet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lnet/sf/saxon/style/Compilation;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/style/Compilation;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/trans/CompilerInfo;)V

    invoke-static {p2, v0}, Lnet/sf/saxon/style/StylesheetModule;->loadStylesheet(Ljavax/xml/transform/Source;Lnet/sf/saxon/style/Compilation;)Lnet/sf/saxon/PreparedStylesheet;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {p2, p0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p1, p2}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_0
    throw p0
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/Compilation;->c:Lnet/sf/saxon/style/PrincipalStylesheetModule;

    return-void
.end method

.method public final b(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/GroundedValue;)Z
    .locals 5

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    invoke-interface {p2}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    instance-of p2, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz p2, :cond_2

    instance-of p2, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz p2, :cond_1

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/AtomicValue;->isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    instance-of p2, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_4

    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v1

    :cond_3
    return v2

    :cond_4
    if-ne p0, p1, :cond_5

    move v2, v1

    :cond_5
    return v2

    :cond_6
    move v0, v2

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_8

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object v3

    invoke-interface {p2, v0}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/Compilation;->b(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/GroundedValue;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return v1
.end method

.method public clearParameters()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/Compilation;->q:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    return-void
.end method

.method public compilePackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/style/PrincipalStylesheetModule;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->setMinimalPackageData()V

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    sget-object v4, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v0, v1, v4}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    instance-of v4, v0, Lnet/sf/saxon/style/XSLPackage;

    if-nez v4, :cond_2

    sget-object v0, Lnet/sf/saxon/value/NestedIntegerValue;->TWO:Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-static {p1, v2, p0, v0}, Lnet/sf/saxon/style/StylesheetModule;->loadStylesheetModule(Ljavax/xml/transform/Source;ZLnet/sf/saxon/style/Compilation;Lnet/sf/saxon/value/NestedIntegerValue;)Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    :cond_2
    instance-of p1, v0, Lnet/sf/saxon/style/LiteralResultElement;

    if-eqz p1, :cond_3

    check-cast v0, Lnet/sf/saxon/style/LiteralResultElement;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/LiteralResultElement;->makeStylesheet(Z)Lnet/sf/saxon/tree/linked/DocumentImpl;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    :cond_3
    :try_start_0
    instance-of p1, v0, Lnet/sf/saxon/style/XSLPackage;

    if-eqz p1, :cond_11

    check-cast v0, Lnet/sf/saxon/style/XSLPackage;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_5

    sget-boolean p1, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    const-string v1, "Built stylesheet documents"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/Compilation;->getStyleNodeFactory(Z)Lnet/sf/saxon/style/StyleNodeFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StyleNodeFactory;->newPrincipalModule(Lnet/sf/saxon/style/XSLPackage;)Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v4

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLPackage;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StylesheetPackage;->setLanguageVersion(I)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StylesheetPackage;->setPackageVersion(Lnet/sf/saxon/style/PackageVersion;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLPackage;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StylesheetPackage;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->isSchemaAware()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->isSchemaAware()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_1
    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/PackageData;->setSchemaAware(Z)V

    invoke-virtual {v4}, Lnet/sf/saxon/style/StylesheetPackage;->createFunctionLibrary()V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getXsltVersion()I

    move-result v2

    invoke-virtual {v4, v2}, Lnet/sf/saxon/style/StylesheetPackage;->setLanguageVersion(I)V

    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/trans/rules/RuleManager;->setCompilerInfo(Lnet/sf/saxon/trans/CompilerInfo;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/Compilation;->a(Lnet/sf/saxon/style/PrincipalStylesheetModule;)V

    iput-object v3, p0, Lnet/sf/saxon/style/Compilation;->j:Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/Compilation;->satisfyPackageDependencies(Lnet/sf/saxon/style/XSLPackage;)V

    sget-boolean v0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    const-string v2, "Preparing package"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_7
    :try_start_1
    invoke-virtual {v1, p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->preprocess(Lnet/sf/saxon/style/Compilation;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_4

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result p1

    if-nez p1, :cond_8

    :try_start_2
    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->fixup()V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->reportError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_8
    :goto_2
    sget-boolean p1, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    const-string v0, "Fixup"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result p1

    if-nez p1, :cond_a

    :try_start_3
    invoke-virtual {v1, p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->combineAttributeSets(Lnet/sf/saxon/style/Compilation;)V
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->reportError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_a
    :goto_3
    sget-boolean p1, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    const-string v0, "Combine attribute sets"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result p1

    if-nez p1, :cond_c

    :try_start_4
    invoke-virtual {v1, p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->compile(Lnet/sf/saxon/style/Compilation;)V
    :try_end_4
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->reportError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result p1

    if-nez p1, :cond_d

    :try_start_5
    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->complete()V
    :try_end_5
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->reportError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_d
    :goto_5
    sget-boolean p1, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    const-string v0, "Completion"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sf/saxon/style/Compilation;->l:Z

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setCreatesSecondaryResultDocuments(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->isFallbackToNonStreaming()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->setFallbackToNonStreaming()V

    :cond_f
    sget-boolean p1, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz p1, :cond_10

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    const-string p1, "Streaming fallback"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_10
    return-object v1

    :catch_4
    move-exception p0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p1, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    throw p0

    :cond_11
    :try_start_6
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Outermost element must be xsl:package, xsl:stylesheet, or xsl:transform"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_12
    throw p1
.end method

.method public declareStaticVariable(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/value/NestedIntegerValue;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/Compilation;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/Compilation$a;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lnet/sf/saxon/style/Compilation$a;->b:Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-virtual {v1, p3}, Lnet/sf/saxon/value/NestedIntegerValue;->compareTo(Lnet/sf/saxon/value/NestedIntegerValue;)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, v0, Lnet/sf/saxon/style/Compilation$a;->a:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/style/Compilation;->b(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/GroundedValue;)Z

    move-result v1

    const-string v2, "XTSE3450"

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lnet/sf/saxon/style/Compilation$a;->c:Z

    if-ne v0, p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Static variable "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be redeclared as a param"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incompatible values assigned for static variable "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->g:Ljava/util/Map;

    new-instance v0, Lnet/sf/saxon/style/Compilation$a;

    invoke-direct {v0, p2, p3, p4}, Lnet/sf/saxon/style/Compilation$a;-><init>(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/value/NestedIntegerValue;Z)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getErrorCount()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/style/Compilation;->d:I

    return p0
.end method

.method public getImportStack()Ljava/util/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/DocumentKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->i:Ljava/util/Stack;

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/Compilation;->j:Lnet/sf/saxon/expr/PackageData;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->c:Lnet/sf/saxon/style/PrincipalStylesheetModule;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getParameters()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->q:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    return-object p0
.end method

.method public getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->c:Lnet/sf/saxon/style/PrincipalStylesheetModule;

    return-object p0
.end method

.method public getQNameParser()Lnet/sf/saxon/om/QNameParser;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->f:Lnet/sf/saxon/om/QNameParser;

    return-object p0
.end method

.method public getStaticVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->g:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/Compilation$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/Compilation$a;->a:Lnet/sf/saxon/om/GroundedValue;

    :goto_0
    return-object p0
.end method

.method public getStaticVariablePrecedence(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/value/NestedIntegerValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->g:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/Compilation$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/Compilation$a;->b:Lnet/sf/saxon/value/NestedIntegerValue;

    :goto_0
    return-object p0
.end method

.method public getStyleNodeFactory(Z)Lnet/sf/saxon/style/StyleNodeFactory;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->makeStyleNodeFactory(Lnet/sf/saxon/style/Compilation;)Lnet/sf/saxon/style/StyleNodeFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleNodeFactory;->setTopLevelModule(Z)V

    return-object p0
.end method

.method public getStylesheetModules()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/DocumentKey;",
            "Lnet/sf/saxon/om/TreeInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->h:Ljava/util/Map;

    return-object p0
.end method

.method public isCreatesSecondaryResultDocuments()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/Compilation;->l:Z

    return p0
.end method

.method public isFallbackToNonStreaming()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/Compilation;->r:Z

    return p0
.end method

.method public isLibraryPackage()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/Compilation;->m:Z

    return p0
.end method

.method public isPreScan()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/Compilation;->k:Z

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/Compilation;->e:Z

    return p0
.end method

.method public registerPackageDependency(Lnet/sf/saxon/trans/packages/UsePack;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportError(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 3
    :cond_0
    iget v0, p0, Lnet/sf/saxon/style/Compilation;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/style/Compilation;->d:I

    .line 4
    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getTerminationMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XmlProcessingAbort;

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getTerminationMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XmlProcessingAbort;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reportError(Lnet/sf/saxon/trans/XPathException;)V
    .locals 3

    .line 6
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    .line 7
    iget-object v0, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 10
    iget v1, p0, Lnet/sf/saxon/style/Compilation;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lnet/sf/saxon/style/Compilation;->d:I

    .line 11
    :try_start_0
    new-instance p0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {v0, p0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 12
    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :cond_1
    iget p1, p0, Lnet/sf/saxon/style/Compilation;->d:I

    if-nez p1, :cond_2

    add-int/2addr p1, v2

    .line 14
    iput p1, p0, Lnet/sf/saxon/style/Compilation;->d:I

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public reportWarning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    .line 7
    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object p1

    .line 8
    sget-object p2, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    .line 9
    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public reportWarning(Lnet/sf/saxon/trans/XPathException;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;->setWarning(Z)V

    .line 6
    invoke-interface {v0, p0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_1
    return-void
.end method

.method public satisfyPackageDependencies(Lnet/sf/saxon/style/XSLPackage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getPackageLibrary()Lnet/sf/saxon/trans/packages/PackageLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/packages/PackageLibrary;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/CompilerInfo;->getTargetEdition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/CompilerInfo;->setTargetEdition(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/style/Compilation;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trans/packages/UsePack;

    iget-object v4, v3, Lnet/sf/saxon/trans/packages/UsePack;->packageName:Ljava/lang/String;

    iget-object v5, v3, Lnet/sf/saxon/trans/packages/UsePack;->ranges:Lnet/sf/saxon/style/PackageVersionRanges;

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/trans/packages/PackageLibrary;->findPackage(Ljava/lang/String;Lnet/sf/saxon/style/PackageVersionRanges;)Lnet/sf/saxon/trans/packages/PackageDetails;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v3, v4, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v3, :cond_2

    new-instance v5, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    invoke-virtual {v3}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lnet/sf/saxon/trans/packages/VersionedPackageName;-><init>(Ljava/lang/String;Lnet/sf/saxon/style/PackageVersion;)V

    iget-object v3, p0, Lnet/sf/saxon/style/Compilation;->p:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iget-object v1, v1, Lnet/sf/saxon/trans/packages/VersionedPackageName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string p0, "and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLPackage;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is a cycle of package dependencies involving "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE3005"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lnet/sf/saxon/style/Compilation;->p:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, v4, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4, v3}, Lnet/sf/saxon/trans/packages/PackageLibrary;->obtainLoadedPackage(Lnet/sf/saxon/trans/packages/PackageDetails;Ljava/util/List;)Lnet/sf/saxon/style/StylesheetPackage;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/Compilation;->reportError(Lnet/sf/saxon/trans/XPathException;)V

    goto/16 :goto_0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lnet/sf/saxon/trans/packages/UsePack;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (version "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lnet/sf/saxon/trans/packages/UsePack;->ranges:Lnet/sf/saxon/style/PackageVersionRanges;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE3000"

    iget-object v1, v3, Lnet/sf/saxon/trans/packages/UsePack;->location:Lnet/sf/saxon/s9api/Location;

    invoke-direct {p0, p1, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_4
    if-nez v2, :cond_5

    return-void

    :cond_5
    throw v2
.end method

.method public setCreatesSecondaryResultDocuments(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/Compilation;->l:Z

    return-void
.end method

.method public setExpectedNameAndVersion(Lnet/sf/saxon/trans/packages/VersionedPackageName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/Compilation;->n:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    return-void
.end method

.method public setFallbackToNonStreaming(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/Compilation;->r:Z

    return-void
.end method

.method public setLibraryPackage(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/Compilation;->m:Z

    return-void
.end method

.method public setMinimalPackageData()V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/PackageData;-><init>(Lnet/sf/saxon/Configuration;)V

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    iget-object v2, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/CompilerInfo;->getXsltVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/PackageData;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V

    iget-object v1, p0, Lnet/sf/saxon/style/Compilation;->b:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/CompilerInfo;->getTargetEdition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/PackageData;->setTargetEdition(Ljava/lang/String;)V

    iget-boolean v1, p0, Lnet/sf/saxon/style/Compilation;->e:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/PackageData;->setSchemaAware(Z)V

    iput-object v0, p0, Lnet/sf/saxon/style/Compilation;->j:Lnet/sf/saxon/expr/PackageData;

    :cond_0
    return-void
.end method

.method public setPackageData(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/Compilation;->j:Lnet/sf/saxon/expr/PackageData;

    return-void
.end method

.method public setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/Compilation;->q:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public setPreScan(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/Compilation;->k:Z

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/Compilation;->e:Z

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/PackageData;->setSchemaAware(Z)V

    return-void
.end method

.method public setUsingPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/trans/packages/VersionedPackageName;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/style/Compilation;->p:Ljava/util/List;

    return-void
.end method
