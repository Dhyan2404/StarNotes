.class public abstract Lnet/sf/saxon/style/StyleElement;
.super Lnet/sf/saxon/tree/linked/ElementImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/style/StyleElement$OnFailure;
    }
.end annotation


# static fields
.field public static final ACTION_COMPILE:I = 0x2

.field public static final ACTION_FIXUP:I = 0x10

.field public static final ACTION_OPTIMIZE:I = 0x8

.field public static final ACTION_PROCESS_ATTRIBUTES:I = 0x20

.field public static final ACTION_TYPECHECK:I = 0x4

.field public static final ACTION_VALIDATE:I = 0x1

.field public static final YES_NO:[Ljava/lang/String;

.field public static final synthetic t:Z


# instance fields
.field protected actionsCompleted:I

.field protected defaultCollationName:Ljava/lang/String;

.field protected defaultMode:Lnet/sf/saxon/om/StructuredQName;

.field protected defaultXPathNamespace:Ljava/lang/String;

.field protected expandText:Z

.field protected extensionNamespaces:[Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:Lnet/sf/saxon/om/StructuredQName;

.field public p:Ljava/lang/String;

.field public q:Lnet/sf/saxon/style/Compilation;

.field public r:Lnet/sf/saxon/expr/parser/Loc;

.field protected reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

.field public s:I

.field protected staticContext:Lnet/sf/saxon/style/ExpressionContext;

.field protected validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

.field protected version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "false"

    const-string v3, "no"

    const-string v4, "true"

    const-string v5, "yes"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/style/StyleElement;->YES_NO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->extensionNamespaces:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->n:[Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    sget-object v1, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_ALWAYS:Lnet/sf/saxon/style/StyleElement$OnFailure;

    iput-object v1, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->defaultXPathNamespace:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->defaultCollationName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/saxon/style/StyleElement;->expandText:Z

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->r:Lnet/sf/saxon/expr/parser/Loc;

    iput v1, p0, Lnet/sf/saxon/style/StyleElement;->s:I

    iput v1, p0, Lnet/sf/saxon/style/StyleElement;->actionsCompleted:I

    return-void
.end method

.method private synthetic J(Lnet/sf/saxon/style/PrincipalStylesheetModule;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not declared in an xsl:mode declaration"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XTSE3085"

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public static isNo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isYes(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic l(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/style/PrincipalStylesheetModule;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->J(Lnet/sf/saxon/style/PrincipalStylesheetModule;Lnet/sf/saxon/om/StructuredQName;)V

    return-void
.end method

.method public static setInstructionLocation(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x14

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    return p0
.end method

.method public B()Lnet/sf/saxon/style/StyleElement;
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v2, v1, Lnet/sf/saxon/style/StyleElement;

    if-eqz v2, :cond_0

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public C()Lnet/sf/saxon/expr/Component;
    .locals 3

    instance-of v0, p0, Lnet/sf/saxon/style/StylesheetComponent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-interface {v0}, Lnet/sf/saxon/style/StylesheetComponent;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v0

    const/16 v2, 0xc0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/16 v2, 0xd6

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0
.end method

.method public D(Ljava/lang/String;)[Lnet/sf/saxon/om/StructuredQName;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t\n\r"

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v2, "XTSE0710"

    const-string v4, "use-attribute-sets"

    invoke-virtual {p0, p1, v2, v4}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v3, [Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;
    .locals 7

    invoke-static {}, Lnet/sf/saxon/trans/Visibility;->values()[Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "a"

    const-string v4, "h"

    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "hidden"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "absent"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "public|final|private|abstract"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_4

    const-string v0, "|hidden"

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string v1, "|absent"

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "visibility"

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/style/StyleElement;->invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    return-object p0
.end method

.method public F(I)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/style/StyleElement;->actionsCompleted:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public G()Z
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isInstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->isInstruction()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    check-cast p0, Lnet/sf/saxon/style/XSLGeneralVariable;

    const-string v0, "as"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/style/XSLElement;

    if-nez v0, :cond_5

    instance-of v0, p0, Lnet/sf/saxon/style/LiteralResultElement;

    if-nez v0, :cond_5

    instance-of v0, p0, Lnet/sf/saxon/style/XSLDocument;

    if-nez v0, :cond_5

    instance-of v0, p0, Lnet/sf/saxon/style/XSLCopy;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_0

    :cond_5
    :goto_1
    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public H(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->isExtensionNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :goto_0
    instance-of v0, p0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/StyleElement;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public I()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/StyleElement;->expandText:Z

    return p0
.end method

.method public K(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://saxon.sf.net/"

    const-string v2, "as"

    const-string v3, "saxon"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x28

    const-string v4, "XP"

    invoke-virtual {v1, v4, v2, v3}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/om/QNameParser;

    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {p0}, Lnet/sf/saxon/style/ExpressionContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p0

    invoke-direct {v2, p0}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object p0

    const-string v2, "XPST0003"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/om/QNameParser;->withErrorOnBadSyntax(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object p0

    const-string v2, "XPST0081"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/om/QNameParser;->withErrorOnUnresolvedPrefix(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExtendedSequenceType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2

    const-string v0, ""

    :try_start_0
    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v1, v0, v0, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->getStaticContext(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/ExpressionContext;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sf/saxon/pattern/Pattern;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/expr/PackageData;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "XTSE0340"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    const-string v0, "XPST0003"

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    new-instance p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object p1
.end method

.method public M(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/XSLSortOrMergeKey;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    move-object v5, v4

    check-cast v5, Lnet/sf/saxon/style/XSLSortOrMergeKey;

    invoke-virtual {v5, p1, p2}, Lnet/sf/saxon/style/XSLSortOrMergeKey;->compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;

    instance-of v5, v4, Lnet/sf/saxon/style/XSLSort;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    check-cast v4, Lnet/sf/saxon/style/XSLSort;

    invoke-virtual {v4}, Lnet/sf/saxon/style/XSLSort;->getStable()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "stable attribute may appear only on the first xsl:sort element"

    const-string v5, "XTSE1017"

    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_3

    new-array p1, v3, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    new-instance p2, Lcom/sunia/HTREnginev2/w2n;

    invoke-direct {p2, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p2}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    add-int/lit8 v0, v2, 0x1

    check-cast p2, Lnet/sf/saxon/style/XSLSortOrMergeKey;

    invoke-virtual {p2}, Lnet/sf/saxon/style/XSLSortOrMergeKey;->getSortKeyDefinition()Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    aput-object p2, p1, v2

    move v2, v0

    goto :goto_1

    :cond_2
    new-instance p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;-><init>([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public N()V
    .locals 12

    const-string v0, "; "

    const-string v1, "Collation "

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_0

    move-object v3, v4

    :cond_0
    const-string v2, "default-collation"

    invoke-virtual {p0, v3, v2}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_8

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " \t\n\r"

    const/4 v9, 0x0

    invoke-direct {v7, v5, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v8, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iput-object v5, p0, Lnet/sf/saxon/style/StyleElement;->defaultCollationName:Ljava/lang/String;

    return-void

    :cond_1
    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->isAbsolute()Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/net/URI;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v8, v5

    goto :goto_1

    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default collation \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is not a valid URI"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual {v5, v8}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-object v8, p0, Lnet/sf/saxon/style/StyleElement;->defaultCollationName:Ljava/lang/String;

    return-void

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not recognized"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not recognized ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, "No recognized collation URI found in default-collation attribute"

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, v4, v3, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XTSE0125"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public O()V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, ""

    :cond_0
    const-string v0, "default-mode"

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "#unnamed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->defaultMode:Lnet/sf/saxon/om/StructuredQName;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->defaultMode:Lnet/sf/saxon/om/StructuredQName;

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->q:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/StyleElement;->defaultMode:Lnet/sf/saxon/om/StructuredQName;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->isDeclaredModes()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sunia/HTREnginev2/x2n;

    invoke-direct {v2, p0, v0, v1}, Lcom/sunia/HTREnginev2/x2n;-><init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/style/PrincipalStylesheetModule;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->addFixupAction(Lnet/sf/saxon/om/Action;)V

    :cond_3
    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 2

    const-string v0, "default-validation"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "@default-validation must be preserve|strip"

    const-string v1, "XTSE0020"

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lnet/sf/saxon/style/StyleElement;->s:I

    :cond_2
    :goto_1
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "xpath-default-namespace"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/style/StyleElement;->defaultXPathNamespace:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 6

    const-string v0, "exclude-result-prefixes"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/style/StyleElement;->n:[Ljava/lang/String;

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, " \t\n\r"

    invoke-direct {v0, p1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move v4, v2

    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->n:[Ljava/lang/String;

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v3, "#default"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, ""

    goto :goto_3

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "In exclude-result-prefixes, cannot mix #all with other values"

    const-string v4, "XTSE0020"

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->n:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Namespace prefix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not declared"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE0808"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lnet/sf/saxon/style/StyleElement;->n:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aput-object v3, v4, v2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Cannot exclude the #default namespace when no default namespace is declared"

    const-string v2, "XTSE0809"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v2, v5

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 1

    const-string v0, "expand-text"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/style/StyleElement;->expandText:Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/style/StyleElement;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/style/StyleElement;

    iget-boolean p1, p1, Lnet/sf/saxon/style/StyleElement;->expandText:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnet/sf/saxon/style/StyleElement;->expandText:Z

    :goto_1
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 5

    const-string v0, "extension-element-prefixes"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\n\r"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->extensionNamespaces:[Ljava/lang/String;

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move p1, v2

    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "#default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    iput-object v3, p0, Lnet/sf/saxon/style/StyleElement;->extensionNamespaces:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Namespace prefix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is undeclared"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "XTSE1430"

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lnet/sf/saxon/lib/NamespaceConstant;->isReserved(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Namespace "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is reserved: it cannot be used for extension instructions (perhaps exclude-result-prefixes was intended)."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "XTSE0085"

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sf/saxon/style/StyleElement;->extensionNamespaces:[Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    aput-object v3, v1, p1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/style/StyleElement;->extensionNamespaces:[Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    aput-object v3, v1, p1

    :goto_2
    move p1, v4

    goto :goto_1

    :cond_4
    return-void
.end method

.method public U(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "streamable"

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SXST0068"

    if-nez v0, :cond_0

    const-string p1, "Request for streaming ignored: this Saxon configuration does not support streaming"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    sget-object v3, Lnet/sf/saxon/lib/Feature;->STREAMABILITY:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Request for streaming ignored: streaming is disabled in this Saxon configuration"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    return p1
.end method

.method public V(I)V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/style/StyleElement;->actionsCompleted:I

    or-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/style/StyleElement;->actionsCompleted:I

    return-void
.end method

.method public W()V
    .locals 1

    sget-object v0, Lnet/sf/saxon/style/StyleElement$OnFailure;->IGNORED_INSTRUCTION:Lnet/sf/saxon/style/StyleElement$OnFailure;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    return-void
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p2, "XTSE0280"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undeclared namespace prefix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Y()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result p0

    const/16 v0, 0x14

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public allocateLocation()Lnet/sf/saxon/s9api/Location;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->r:Lnet/sf/saxon/expr/parser/Loc;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/parser/Loc;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljavax/xml/transform/SourceLocator;)V

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->r:Lnet/sf/saxon/expr/parser/Loc;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->r:Lnet/sf/saxon/expr/parser/Loc;

    return-object p0
.end method

.method public arrayToSequence(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    :try_start_0
    invoke-static {}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    move-result-object p0

    const-string v0, "members"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    new-array v0, v1, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method

.method public bindLocalVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->hasImplicitBinding(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isTopLevel()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    instance-of v2, p0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/style/StyleElement;->hasImplicitBinding(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :goto_1
    instance-of v2, p0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v2}, Lnet/sf/saxon/style/StyleElement;->seesAvuncularVariables()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/style/XSLModuleRoot;

    if-eqz v2, :cond_4

    move-object v2, p0

    goto :goto_2

    :cond_4
    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    goto :goto_0

    :cond_5
    :goto_2
    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/style/XSLModuleRoot;

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    instance-of v3, v2, Lnet/sf/saxon/style/XSLGeneralVariable;

    if-eqz v3, :cond_1

    check-cast v2, Lnet/sf/saxon/style/XSLGeneralVariable;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/style/StyleElement;->getBindingInformation(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->bindLocalVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getGlobalVariableBinding(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/style/SourceBinding;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkEmpty()V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Element must be empty"

    const-string v1, "XTSE0260"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkTopLevel(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result v0

    const/16 v1, 0xc0

    const-string v2, "Element "

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed as a child of xsl:override"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isTopLevel()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be top-level (a child of xsl:stylesheet, xsl:transform, or xsl:package)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V
    .locals 5

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->x()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isInstruction()Z

    move-result v3

    const-string v4, "http://www.w3.org/1999/XSL/Transform"

    if-eqz v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "}default-collation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "}default-mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "}xpath-default-namespace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "}expand-text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "}extension-element-prefixes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "}exclude-result-prefixes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "}version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "}default-validation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "}use-when"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "default-collation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "default-mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "expand-text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "xpath-default-namespace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "extension-element-prefixes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "exclude-result-prefixes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "version"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "default-validation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "use-when"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return-void

    :cond_4
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "XTSE0090"

    if-nez v1, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, "http://saxon.sf.net/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized attribute in Saxon namespace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed on element "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v2}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
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

.method public compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public compileError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "XTSE0010"

    .line 12
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public compileError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    return-void
.end method

.method public compileError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    .line 17
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    return-void
.end method

.method public compileError(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 1

    .line 13
    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2, p0}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    .line 14
    sget-object p1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    .line 15
    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-static {p1, v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->maybeSetHostLanguage(Lnet/sf/saxon/s9api/XmlProcessingError;Lnet/sf/saxon/s9api/HostLanguage;)V

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/parser/Loc;

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_2

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/style/StylesheetComponent;

    if-nez v0, :cond_2

    .line 5
    :cond_1
    invoke-static {p1, p0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->maybeSetLocation(Lnet/sf/saxon/s9api/XmlProcessingError;Lnet/sf/saxon/s9api/Location;)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->reportError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public compileError(Lnet/sf/saxon/trans/XPathException;)V
    .locals 3

    .line 7
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 9
    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    .line 10
    sget-object p1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    .line 11
    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Lnet/sf/saxon/om/StructuredQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p3

    new-instance v0, Lnet/sf/saxon/tree/AttributeLocation;

    invoke-direct {v0, p0, p3}, Lnet/sf/saxon/tree/AttributeLocation;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p3, p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, p3}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    return-void
.end method

.method public compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p3}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v4, :cond_c

    .line 18
    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 19
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->I()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 20
    check-cast v4, Lnet/sf/saxon/tree/linked/TextImpl;

    invoke-virtual {p0, v4, v1}, Lnet/sf/saxon/style/StyleElement;->q(Lnet/sf/saxon/tree/linked/TextImpl;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x7

    .line 21
    invoke-interface {v4, v5}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v5

    .line 22
    invoke-interface {v5}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v5

    .line 23
    instance-of v6, v5, Lnet/sf/saxon/style/XSLLocalParam;

    if-nez v6, :cond_0

    instance-of v6, v5, Lnet/sf/saxon/style/XSLSort;

    if-nez v6, :cond_0

    instance-of v6, v5, Lnet/sf/saxon/style/XSLContextItem;

    if-nez v6, :cond_0

    instance-of v5, v5, Lnet/sf/saxon/style/XSLOnCompletion;

    if-nez v5, :cond_0

    .line 24
    new-instance v5, Lnet/sf/saxon/expr/instruct/ValueOf;

    new-instance v6, Lnet/sf/saxon/expr/StringLiteral;

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-direct {v6, v4}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-direct {v5, v6, v2, v2}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    .line 25
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 26
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_2
    instance-of v5, v4, Lnet/sf/saxon/style/XSLLocalVariable;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 28
    move-object v5, v4

    check-cast v5, Lnet/sf/saxon/style/XSLLocalVariable;

    .line 29
    invoke-virtual {v5}, Lnet/sf/saxon/style/XSLGeneralVariable;->getSourceBinding()Lnet/sf/saxon/style/SourceBinding;

    move-result-object v7

    .line 30
    invoke-virtual {v5, p1, p2}, Lnet/sf/saxon/style/XSLLocalVariable;->compileLocalVariable(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    .line 31
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 32
    invoke-static {v8}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    new-instance v0, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    .line 34
    invoke-virtual {v0, v6}, Lnet/sf/saxon/expr/LetExpression;->setInstruction(Z)V

    .line 35
    invoke-virtual {v5}, Lnet/sf/saxon/style/XSLLocalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    .line 36
    invoke-virtual {v7}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    .line 37
    invoke-virtual {v7}, Lnet/sf/saxon/style/SourceBinding;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    .line 38
    invoke-virtual {v0, v8}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    .line 39
    invoke-virtual {v7, v0}, Lnet/sf/saxon/style/SourceBinding;->fixupBinding(Lnet/sf/saxon/expr/Binding;)V

    .line 40
    check-cast v4, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v4}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    .line 41
    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 42
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v5}, Lnet/sf/saxon/style/StyleElement;->n()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 44
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_4
    move-object v0, v4

    goto/16 :goto_0

    .line 45
    :cond_5
    instance-of v5, v4, Lnet/sf/saxon/style/StyleElement;

    if-eqz v5, :cond_0

    .line 46
    check-cast v4, Lnet/sf/saxon/style/StyleElement;

    .line 47
    invoke-virtual {v4}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result v5

    const/16 v7, 0xbd

    if-eq v5, v7, :cond_6

    const/16 v7, 0xbe

    if-ne v5, v7, :cond_7

    :cond_6
    move v3, v6

    .line 48
    :cond_7
    iget-object v5, v4, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    if-eqz v5, :cond_9

    instance-of v5, v4, Lnet/sf/saxon/style/AbsentExtensionElement;

    if-nez v5, :cond_9

    .line 49
    iget-object v5, v4, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    sget-object v6, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_IF_INSTANTIATED:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-ne v5, v6, :cond_8

    .line 50
    new-instance v5, Lnet/sf/saxon/expr/ErrorExpression;

    iget-object v4, v4, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-direct {v5, v4}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto :goto_1

    .line 51
    :cond_8
    invoke-virtual {p0, p1, p2, v4}, Lnet/sf/saxon/style/StyleElement;->u(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    goto :goto_1

    .line 52
    :cond_9
    invoke-virtual {v4, p1, p2}, Lnet/sf/saxon/style/StyleElement;->compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 53
    invoke-virtual {v4}, Lnet/sf/saxon/style/StyleElement;->n()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 54
    invoke-virtual {v4}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    .line 55
    :cond_a
    invoke-static {v4, v5}, Lnet/sf/saxon/style/StyleElement;->setInstructionLocation(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/expr/Expression;)V

    :cond_b
    :goto_1
    if-eqz v5, :cond_0

    .line 56
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    if-eqz v3, :cond_d

    .line 57
    new-instance p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;

    invoke-direct {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;-><init>(Ljava/util/List;)V

    return-object p0

    .line 58
    :cond_d
    invoke-static {v1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    if-nez p2, :cond_e

    .line 60
    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 61
    :cond_e
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocalRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    if-nez p2, :cond_f

    .line 62
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_f
    return-object p1
.end method

.method public compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xbd

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    .line 2
    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v2

    if-eq v2, v3, :cond_1

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_7

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/NodeInfo;

    .line 7
    invoke-interface {v5}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v6

    const/16 v7, 0xda

    if-eq v6, v7, :cond_5

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    if-ne v6, v3, :cond_4

    .line 8
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_5
    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    new-instance v1, Lnet/sf/saxon/tree/iter/NodeListIterator;

    invoke-direct {v1, v0}, Lnet/sf/saxon/tree/iter/NodeListIterator;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, v1, p3}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 v0, 0x3

    .line 14
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public compileWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lnet/sf/saxon/style/Compilation;->reportWarning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public compileWarning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/style/Compilation;->reportWarning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public compileWarning(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p0}, Lnet/sf/saxon/style/Compilation;->reportWarning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public fixupReferences()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/StyleElement;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->fixupReferences()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public generateId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->generateId(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lnet/sf/saxon/om/FingerprintedQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->p:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->p:Ljava/lang/String;

    return-object p0
.end method

.method public getBindingInformation(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCompilation()Lnet/sf/saxon/style/Compilation;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->q:Lnet/sf/saxon/style/Compilation;

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->q:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getContainingSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/style/XSLModuleRoot;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result v1

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    :goto_1
    instance-of v0, p0, Lnet/sf/saxon/style/StylesheetComponent;

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-interface {p0}, Lnet/sf/saxon/style/StylesheetComponent;->getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;
    .locals 2

    const-string v0, "visibility"

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCollationName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lnet/sf/saxon/style/StyleElement;->defaultCollationName:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/style/StyleElement;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    goto :goto_0
.end method

.method public getDefaultXPathNamespace()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    :goto_0
    instance-of v1, v0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    iget-object v1, v1, Lnet/sf/saxon/style/StyleElement;->defaultXPathNamespace:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->q:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->o:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    return-object p0
.end method

.method public getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    return-object p0
.end method

.method public getProperties()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;
    .locals 8

    const-string v0, "XTSE1520"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Q{"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "type"

    invoke-virtual {p0, p1, v0, v2}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x0

    aget-object v6, v2, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getDefaultXPathNamespace()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_0

    :cond_2
    aget-object v2, v2, v5

    invoke-virtual {p0, v2, v5}, Lnet/sf/saxon/tree/linked/ElementImpl;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "Namespace prefix for type annotation is undeclared"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :goto_0
    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Lnet/sf/saxon/type/BuiltInType;->getSchemaTypeByLocalName(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown built-in type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    return-object v2

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->isImportedSchema(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no imported schema for the namespace of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    new-instance v5, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v5, v3, v4, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, v5}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no type named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in an imported schema"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-object v2

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type name. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/QNameException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getStaticContext()Lnet/sf/saxon/style/ExpressionContext;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/sf/saxon/style/ExpressionContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/style/ExpressionContext;-><init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/om/StructuredQName;)V

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    .line 3
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    return-object p0
.end method

.method public getStaticContext(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/ExpressionContext;
    .locals 1

    .line 4
    new-instance v0, Lnet/sf/saxon/style/ExpressionContext;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/style/ExpressionContext;-><init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)Lnet/sf/saxon/type/SimpleType;
    .locals 0

    check-cast p1, Lnet/sf/saxon/type/SimpleType;

    return-object p1
.end method

.method public getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibility()Lnet/sf/saxon/trans/Visibility;
    .locals 2

    const-string v0, "visibility"

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->E(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    return-object p0
.end method

.method public getWithParamInstructions(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/XSLWithParam;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    check-cast v4, Lnet/sf/saxon/style/XSLWithParam;

    invoke-virtual {v4}, Lnet/sf/saxon/style/XSLGeneralVariable;->getSourceBinding()Lnet/sf/saxon/style/SourceBinding;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v4

    if-ne v4, p4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    sget-object p0, Lnet/sf/saxon/expr/instruct/WithParam;->EMPTY_ARRAY:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0

    :cond_2
    new-array v0, v3, [Lnet/sf/saxon/expr/instruct/WithParam;

    new-instance v3, Lcom/sunia/HTREnginev2/w2n;

    invoke-direct {v3, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v3}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    check-cast v1, Lnet/sf/saxon/style/XSLWithParam;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLGeneralVariable;->getSourceBinding()Lnet/sf/saxon/style/SourceBinding;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->TUNNEL:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/style/SourceBinding;->hasProperty(Lnet/sf/saxon/style/SourceBinding$BindingProperty;)Z

    move-result v3

    if-ne v3, p4, :cond_3

    invoke-virtual {v1, p1, p2, p3}, Lnet/sf/saxon/style/XSLWithParam;->compileWithParam(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/style/XSLNextIteration;

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->hasChildNodes()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/XSLNextIteration;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLGeneralVariable;->getSourceBinding()Lnet/sf/saxon/style/SourceBinding;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/XSLNextIteration;->getDeclaredParamType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/style/XSLWithParam;->checkAgainstRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v4

    iget-object v1, v1, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/style/SourceBinding;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v4, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_4
    add-int/lit8 v1, v2, 0x1

    aput-object v3, v0, v2

    move v2, v1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public getXslOriginal(I)Lnet/sf/saxon/expr/instruct/Actor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getFingerprint()I

    move-result v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lnet/sf/saxon/style/StylesheetComponent;

    if-eqz v1, :cond_4

    move-object p0, v0

    check-cast p0, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-interface {p0}, Lnet/sf/saxon/style/StylesheetComponent;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p0

    const/16 p1, 0xc0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v0, 0xd6

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "The parent of xsl:override must be an xsl:use-package element"

    const-string v1, "XTSE0010"

    invoke-direct {p0, v0, v1, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A reference to xsl:original can be used only within an xsl:override element"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A reference to xsl:original appears within the wrong kind of component: in this case, it must be within xsl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/om/NamePool;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XTSE0650"

    invoke-direct {v0, p1, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw v0
.end method

.method public hasImplicitBinding(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XTSE0020"

    invoke-virtual {p0, p2, v0, p1}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExtensionAttributeAllowed(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is ignored because it requires a Saxon-PE license"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p0}, Lnet/sf/saxon/style/StyleElement;->issueWarning(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isExtensionNamespace(Ljava/lang/String;)Z
    .locals 1

    :goto_0
    instance-of v0, p0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/StyleElement;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPermittedChild(Lnet/sf/saxon/style/StyleElement;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->isSchemaAware()Z

    move-result p0

    return p0
.end method

.method public isTopLevel()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/style/XSLModuleRoot;

    return p0
.end method

.method public isWithinDeclaredStreamableConstruct()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "streamable"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->U(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isWithinDeclaredStreamableConstruct()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public issueWarning(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    .line 4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->issueWarning(Lnet/sf/saxon/trans/XPathException;)V

    return-void
.end method

.method public issueWarning(Lnet/sf/saxon/trans/XPathException;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->reportWarning(Lnet/sf/saxon/trans/XPathException;)V

    return-void
.end method

.method public m(Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getContainingSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v0

    invoke-static {p1, v0, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    move-result p1

    if-le p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->setNumberOfVariables(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Slot manager has not been allocated"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StyleElement;->getStaticContext(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-static {p1, v0}, Lnet/sf/saxon/style/AttributeValueTemplate;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    new-instance p0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public makeExpression(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StyleElement;->getStaticContext(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/trans/CompilerInfo;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;IILnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->isReportableStatically()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_1
    new-instance p2, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {p2, v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object p2
.end method

.method public makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object p0

    return-object p0
.end method

.method public final makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 5

    const-string v0, "error-name"

    const-string v1, "http://saxon.sf.net/"

    const-string v2, "saxon"

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p1, v3, v4, p0}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p2

    const-string v3, "FONS0004"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p2, "XTSE0280"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "FOCA0002"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "XTSE0020"

    if-eqz v3, :cond_1

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    invoke-virtual {p1, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    goto :goto_1

    :cond_4
    new-instance p2, Lnet/sf/saxon/tree/AttributeLocation;

    invoke-static {p3}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lnet/sf/saxon/tree/AttributeLocation;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1, p2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    :goto_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    new-instance p1, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {p1, v2, v1, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/lib/NamespaceConstant;->isReserved(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    const-string p3, "initial-template"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    instance-of p2, p0, Lnet/sf/saxon/style/XSLTemplate;

    if-nez p2, :cond_5

    instance-of p2, p0, Lnet/sf/saxon/style/XSLCallTemplate;

    if-eqz p2, :cond_6

    :cond_5
    return-object p1

    :cond_6
    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    const-string p3, "original"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0xc0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p1

    :cond_7
    new-instance p2, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Namespace prefix "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " refers to a reserved namespace"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "XTSE0080"

    invoke-direct {p2, p1, p3}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    new-instance p1, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {p1, v2, v1, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object p1
.end method

.method public makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/ExpressionContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    return-object p0
.end method

.method public makeSequenceType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/ExpressionContext;->getXPathVersion()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const/16 v0, 0x131

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    const-string v3, "XP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/om/QNameParser;

    iget-object v3, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {v3}, Lnet/sf/saxon/style/ExpressionContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    iget-object v3, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {v3}, Lnet/sf/saxon/style/ExpressionContext;->getXPathVersion()I

    move-result v3

    if-lt v3, v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {v2, v4}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    const-string v2, "XPST0003"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/QNameParser;->withErrorOnBadSyntax(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    const-string v2, "XPST0081"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/QNameParser;->withErrorOnUnresolvedPrefix(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public mapToSequence(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    :try_start_0
    invoke-static {}, Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;->getInstance()Lnet/sf/saxon/functions/registry/VendorFunctionSetHE;

    move-result-object p0

    const-string v0, "map-as-sequence-of-maps"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    new-array v0, v1, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method

.method public markTailCalls()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mayContainFallback()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->mayContainSequenceConstructor()Z

    move-result p0

    return p0
.end method

.method public mayContainParam()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public n()Z
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->equalOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/style/StyleElement;->defaultCollationName:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/style/StyleElement;->defaultXPathNamespace:Ljava/lang/String;

    if-nez v1, :cond_1

    instance-of v1, v0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result p0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    const-string p3, "{"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-static {p4, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x40

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Invalid value for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "@"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Value must be one of ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_0
    array-length p3, p4

    if-ge p1, p3, :cond_2

    if-nez p1, :cond_1

    const-string p3, ""

    goto :goto_1

    :cond_1
    const-string p3, "|"

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p4, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTSE0020"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public p(Z)V
    .locals 7

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "XTSE0010"

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NodeInfo;

    instance-of v5, v3, Lnet/sf/saxon/style/XSLSort;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-eqz v2, :cond_1

    check-cast v3, Lnet/sf/saxon/style/XSLSort;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Within "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", xsl:sort elements must come before other instructions"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v2, v6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    if-nez v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must have at least one xsl:sort child"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public postValidate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public abstract prepareAttributes()V
.end method

.method public processAllAttributes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->N()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->O()V

    new-instance v0, Lnet/sf/saxon/style/ExpressionContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/style/ExpressionContext;-><init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/om/StructuredQName;)V

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->processAttributes()V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v1, v0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->processAllAttributes()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/style/TextValueTemplateNode;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/style/TextValueTemplateNode;

    invoke-virtual {v0}, Lnet/sf/saxon/style/TextValueTemplateNode;->parse()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final processAttributes()V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->prepareAttributes()V

    return-void
.end method

.method public processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/style/StyleElement;->isYes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p2}, Lnet/sf/saxon/style/StyleElement;->isNo(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const-string p2, "yes|no | true|false | 1|0"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->invalidAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public processStandardAttributes(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->T(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->R(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->processVersionAttribute(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->Q(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->P(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->S(Ljava/lang/String;)V

    return-void
.end method

.method public processVersionAttribute(Ljava/lang/String;)V
    .locals 5

    const-string v0, "version"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/sf/saxon/value/BigDecimalValue;->makeDecimalValue(Ljava/lang/String;Z)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/type/ValidationFailure;

    const/16 v1, 0x1e

    if-eqz v0, :cond_0

    iput v1, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    const-string p1, "The version attribute must be a decimal literal"

    const-string v0, "XTSE0110"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v2, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    const-string v2, "Unrecognized version "

    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": treated as 1.0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p0}, Lnet/sf/saxon/style/StyleElement;->issueWarning(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    iput v4, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    goto :goto_0

    :cond_1
    if-le v0, v3, :cond_2

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": treated as 2.0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p0}, Lnet/sf/saxon/style/StyleElement;->issueWarning(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    iput v3, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    :cond_2
    :goto_0
    return-void
.end method

.method public q(Lnet/sf/saxon/tree/linked/TextImpl;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/tree/linked/TextImpl;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/style/TextValueTemplateNode;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/style/TextValueTemplateNode;

    invoke-virtual {p1}, Lnet/sf/saxon/style/TextValueTemplateNode;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/lib/Feature;->STRICT_STREAMABILITY:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lnet/sf/saxon/expr/Literal;

    if-nez p0, :cond_0

    new-instance p0, Lnet/sf/saxon/expr/instruct/SequenceInstr;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/instruct/SequenceInstr;-><init>(Lnet/sf/saxon/expr/Expression;)V

    move-object p1, p0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/TextImpl;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->n:[Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public reportAbsence(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element must have an "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attribute"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE0010"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requireXslt40(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->q:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getXsltVersion()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const-string v0, " is allowed only if XSLT 4.0 is enabled"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE0010"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XTSE0020"

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->extensionNamespaces:[Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public seesAvuncularVariables()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setCompilation(Lnet/sf/saxon/style/Compilation;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StyleElement;->q:Lnet/sf/saxon/style/Compilation;

    return-void
.end method

.method public setObjectName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StyleElement;->o:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setValidationError(Lnet/sf/saxon/trans/XmlProcessingIncident;Lnet/sf/saxon/style/StyleElement$OnFailure;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    iput-object p2, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    return-void
.end method

.method public substituteFor(Lnet/sf/saxon/style/StyleElement;)V
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getRawParent()Lnet/sf/saxon/tree/linked/ParentNodeImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->setRawParent(Lnet/sf/saxon/tree/linked/ParentNodeImpl;)V

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->setAttributes(Lnet/sf/saxon/om/AttributeMap;)V

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->setNamespaceMap(Lnet/sf/saxon/om/NamespaceMap;)V

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->setNodeName(Lnet/sf/saxon/om/NodeName;)V

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->getRawSequenceNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/ParentNodeImpl;->setRawSequenceNumber(I)V

    iget-object v0, p1, Lnet/sf/saxon/style/StyleElement;->extensionNamespaces:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->extensionNamespaces:[Ljava/lang/String;

    iget-object v0, p1, Lnet/sf/saxon/style/StyleElement;->n:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->n:[Ljava/lang/String;

    iget v0, p1, Lnet/sf/saxon/style/StyleElement;->version:I

    iput v0, p0, Lnet/sf/saxon/style/StyleElement;->version:I

    iget-object v0, p1, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->staticContext:Lnet/sf/saxon/style/ExpressionContext;

    iget-object v0, p1, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    iget-object v0, p1, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    iget-object p1, p1, Lnet/sf/saxon/style/StyleElement;->q:Lnet/sf/saxon/style/Compilation;

    iput-object p1, p0, Lnet/sf/saxon/style/StyleElement;->q:Lnet/sf/saxon/style/Compilation;

    return-void
.end method

.method public final t(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p1, Lnet/sf/saxon/style/TextValueTemplateNode;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/style/TextValueTemplateNode;

    invoke-virtual {p1}, Lnet/sf/saxon/style/TextValueTemplateNode;->validate()V

    invoke-virtual {p1}, Lnet/sf/saxon/style/TextValueTemplateNode;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/Literal;

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    .line 2
    sget-object v1, Lnet/sf/saxon/lib/Feature;->STRICT_STREAMABILITY:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resolveCallsToCurrentFunction(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->isReportableStatically()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lnet/sf/saxon/tree/AttributeLocation;

    invoke-static {p1}, Lnet/sf/saxon/om/StructuredQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lnet/sf/saxon/tree/AttributeLocation;-><init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 7
    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    return-object p2

    .line 8
    :cond_2
    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance p1, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 9
    invoke-static {p2, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public typeCheck(Ljava/lang/String;Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/Pattern;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    .line 11
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    .line 13
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    .line 14
    sget-object v4, Lnet/sf/saxon/functions/Current;->FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;

    invoke-static {v1, v4, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->callsFunction(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 15
    new-instance v0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;

    invoke-direct {v0, p2}, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;-><init>(Lnet/sf/saxon/pattern/Pattern;)V

    .line 16
    invoke-virtual {v0}, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->getCurrentBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/sf/saxon/pattern/Pattern;->bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :cond_3
    return-object p2

    :catch_0
    move-exception p2

    .line 17
    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->isReportableStatically()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    new-instance p1, Lnet/sf/saxon/pattern/BasePatternWithPredicate;

    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    .line 19
    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    new-instance v1, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v2, p2}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V

    .line 20
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object p1

    .line 21
    :cond_4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pattern"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 23
    invoke-virtual {p2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    .line 24
    throw v0
.end method

.method public u(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/XSLFallback;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    check-cast v2, Lnet/sf/saxon/style/XSLFallback;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v2

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->allocateLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    new-instance p0, Lnet/sf/saxon/expr/ErrorExpression;

    iget-object p1, p3, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-object p0
.end method

.method public v(I)Lnet/sf/saxon/style/StyleElement;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v0

    if-ne v0, p1, :cond_0

    check-cast p0, Lnet/sf/saxon/style/StyleElement;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public validateChildren(Lnet/sf/saxon/style/ComponentDeclaration;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->mayContainSequenceConstructor()Z

    move-result v0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/NodeInfo;

    instance-of v6, v5, Lnet/sf/saxon/style/StyleElement;

    if-eqz v6, :cond_3

    if-eqz p2, :cond_1

    instance-of v6, v5, Lnet/sf/saxon/style/XSLStylesheet;

    if-nez v6, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    move-object v2, v5

    check-cast v2, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v2}, Lnet/sf/saxon/style/StyleElement;->isInstruction()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/StyleElement;->isPermittedChild(Lnet/sf/saxon/style/StyleElement;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " element must not contain an "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " element"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "XTSE0010"

    invoke-virtual {v2, v4, v6}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    check-cast v5, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v5, p1, p2}, Lnet/sf/saxon/style/StyleElement;->validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V

    move v4, v3

    move-object v2, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lnet/sf/saxon/style/StyleElement;->t(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v4

    goto :goto_0

    :cond_4
    instance-of p1, v2, Lnet/sf/saxon/style/XSLLocalVariable;

    if-eqz p1, :cond_5

    instance-of p0, p0, Lnet/sf/saxon/style/XSLStylesheet;

    if-nez p0, :cond_5

    if-nez v4, :cond_5

    const-string p0, "A variable with no following sibling instructions has no effect"

    const-string p1, "SXWN9001"

    invoke-virtual {v2, p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->F(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->V(I)V

    iget-object v1, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    if-eqz v1, :cond_5

    iget-object p2, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    sget-object v2, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_ALWAYS:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-ne p2, v2, :cond_1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_UNLESS_FORWARDS_COMPATIBLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->x()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto/16 :goto_3

    :cond_2
    iget-object p2, p0, Lnet/sf/saxon/style/StyleElement;->reportingCircumstances:Lnet/sf/saxon/style/StyleElement$OnFailure;

    sget-object v1, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_STATICALLY_UNLESS_FALLBACK_AVAILABLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    const-class v2, Lnet/sf/saxon/style/XSLFallback;

    const/4 v3, 0x0

    if-ne p2, v1, :cond_4

    new-instance p2, Lcom/sunia/HTREnginev2/w2n;

    invoke-direct {p2, v2}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p2}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    check-cast v1, Lnet/sf/saxon/style/XSLFallback;

    invoke-virtual {v1, p1, v3}, Lnet/sf/saxon/style/StyleElement;->validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V

    move v1, v0

    goto :goto_0

    :cond_3
    if-nez v1, :cond_6

    iget-object p1, p0, Lnet/sf/saxon/style/StyleElement;->validationError:Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto :goto_3

    :cond_4
    sget-object v0, Lnet/sf/saxon/style/StyleElement$OnFailure;->REPORT_DYNAMICALLY_UNLESS_FALLBACK_AVAILABLE:Lnet/sf/saxon/style/StyleElement$OnFailure;

    if-ne p2, v0, :cond_6

    new-instance p2, Lcom/sunia/HTREnginev2/w2n;

    invoke-direct {p2, v2}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, p2}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    check-cast p2, Lnet/sf/saxon/style/XSLFallback;

    invoke-virtual {p2, p1, v3}, Lnet/sf/saxon/style/StyleElement;->validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/StyleElement;->validateChildren(Lnet/sf/saxon/style/ComponentDeclaration;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->postValidate()V

    :cond_6
    :goto_3
    return-void
.end method

.method public validateValidationAttribute(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/style/LiteralResultElement;

    if-eqz v0, :cond_0

    const-string v0, "xsl:"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "validation attribute: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTSE0020"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    const-string p1, "To perform validation, a schema-aware XSLT processor is needed"

    const-string v0, "XTSE1660"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x4

    :cond_3
    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    return-object p0
.end method

.method public x()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result p0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public y()Lnet/sf/saxon/om/StructuredQName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->defaultMode:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->O()V

    iget-object v0, p0, Lnet/sf/saxon/style/StyleElement;->defaultMode:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->y()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->defaultMode:Lnet/sf/saxon/om/StructuredQName;

    return-object v0

    :cond_0
    sget-object v0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/style/StyleElement;->defaultMode:Lnet/sf/saxon/om/StructuredQName;

    return-object v0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/style/StyleElement;->defaultMode:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/style/StyleElement;->s:I

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/style/StyleElement;

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    iget v0, v0, Lnet/sf/saxon/style/StyleElement;->s:I

    goto :goto_0

    :cond_1
    return v0
.end method
