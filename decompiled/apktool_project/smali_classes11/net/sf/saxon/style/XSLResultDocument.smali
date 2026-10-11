.class public Lnet/sf/saxon/style/XSLResultDocument;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# static fields
.field public static BUILD_TREE:Lnet/sf/saxon/om/StructuredQName;

.field public static METHOD:Lnet/sf/saxon/om/StructuredQName;

.field public static final fans:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public J:Z

.field public u:Lnet/sf/saxon/expr/Expression;

.field public v:Lnet/sf/saxon/om/StructuredQName;

.field public w:Lnet/sf/saxon/expr/Expression;

.field public x:I

.field public y:Lnet/sf/saxon/type/SchemaType;

.field public final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/style/XSLResultDocument;->fans:Ljava/util/HashSet;

    const-string v1, "allow-duplicate-names"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "build-tree"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "byte-order-mark"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "cdata-section-elements"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "doctype-public"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "doctype-system"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "encoding"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "escape-uri-attributes"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "html-version"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "include-content-type"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "indent"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "item-separator"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "json-node-output-method"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "media-type"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "method"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "normalization-form"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "omit-xml-declaration"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "output-version"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "parameter-document"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "standalone"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "suppress-indentation"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "undeclare-prefixes"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}attribute-order"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}canonical"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}character-representation"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}double-space"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}indent-spaces"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}internal-dtd-subset"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}line-length"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}newline"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}next-in-chain"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}recognize-binary"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}require-well-formed"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}property-order"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}single-quotes"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "{http://saxon.sf.net/}supply-source-locator"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v3, ""

    invoke-direct {v0, v3, v3, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/style/XSLResultDocument;->METHOD:Lnet/sf/saxon/om/StructuredQName;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, v3, v3, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/style/XSLResultDocument;->BUILD_TREE:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->x:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->y:Lnet/sf/saxon/type/SchemaType;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->J:Z

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v1, p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Lnet/sf/saxon/style/XSLGeneralVariable;

    if-nez v4, :cond_1

    instance-of v4, v3, Lnet/sf/saxon/style/XSLFunction;

    if-eqz v4, :cond_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An xsl:result-document instruction inside "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " will always fail at run-time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lnet/sf/saxon/style/StyleElement;->issueWarning(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    new-instance v1, Lnet/sf/saxon/expr/ErrorExpression;

    const-string v2, "Call to xsl:result-document while in temporary output state"

    const-string v3, "XTDE1480"

    invoke-direct {v1, v2, v3, v0}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_2
    iget-object v0, v1, Lnet/sf/saxon/style/XSLResultDocument;->w:Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    iget-object v3, v1, Lnet/sf/saxon/style/XSLResultDocument;->v:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->gatherOutputProperties(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Named output format has not been defined"

    const-string v2, "XTDE1460"

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->setNeedsDynamicOutputProperties(Z)V

    :goto_0
    move-object v5, v0

    iget-object v0, v1, Lnet/sf/saxon/style/XSLResultDocument;->w:Lnet/sf/saxon/expr/Expression;

    if-nez v0, :cond_6

    const-string v0, "method"

    invoke-virtual {v5, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    sget-object v4, Lnet/sf/saxon/style/XSLResultDocument;->METHOD:Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/style/LiteralResultElement;

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v4

    const-string v6, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "html"

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v6, "xhtml"

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const-string v6, "xml"

    :goto_1
    invoke-virtual {v5, v0, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_6
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getStaticContext()Lnet/sf/saxon/style/ExpressionContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/ExpressionContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v4

    iget-object v0, v1, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/StructuredQName;

    iget-object v7, v1, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/Expression;

    instance-of v8, v7, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v8, :cond_7

    check-cast v7, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v13

    move-object v7, v6

    move-object v11, v4

    invoke-static/range {v7 .. v13}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setSerializationProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZLnet/sf/saxon/Configuration;)V

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lnet/sf/saxon/style/XSLResultDocument;->METHOD:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v7}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v7, "http://saxon.sf.net/"

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    goto :goto_2

    :cond_8
    const-string v7, "XTSE0020"

    invoke-virtual {v0, v7}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/StructuredQName;

    iget-object v4, v1, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    new-instance v0, Lnet/sf/saxon/expr/instruct/ResultDocument;

    iget-object v7, v1, Lnet/sf/saxon/style/XSLResultDocument;->u:Lnet/sf/saxon/expr/Expression;

    iget-object v8, v1, Lnet/sf/saxon/style/XSLResultDocument;->w:Lnet/sf/saxon/expr/Expression;

    iget v9, v1, Lnet/sf/saxon/style/XSLResultDocument;->x:I

    iget-object v10, v1, Lnet/sf/saxon/style/XSLResultDocument;->y:Lnet/sf/saxon/type/SchemaType;

    iget-object v11, v1, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/style/StylesheetPackage;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v12

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lnet/sf/saxon/expr/instruct/ResultDocument;-><init>(Ljava/util/Properties;Ljava/util/Properties;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/type/SchemaType;Ljava/util/Map;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {p0, v3, v4, v2}, Lnet/sf/saxon/style/StyleElement;->compileSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v2

    :cond_b
    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-boolean v1, v1, Lnet/sf/saxon/style/XSLResultDocument;->J:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setAsynchronous(Z)V

    return-object v0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 13

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "use-character-maps"

    const-string v8, "format"

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v9

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-virtual {v6}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iput-object v6, p0, Lnet/sf/saxon/style/XSLResultDocument;->w:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_1
    const-string v8, "href"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iput-object v6, p0, Lnet/sf/saxon/style/XSLResultDocument;->u:Lnet/sf/saxon/expr/Expression;

    goto :goto_0

    :cond_2
    const-string v8, "validation"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v8, "type"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_5
    sget-object v7, Lnet/sf/saxon/style/XSLResultDocument;->fans:Ljava/util/HashSet;

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "{"

    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "{http://saxon.sf.net/}asynchronous"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v10}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    const-string v7, "asynchronous"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "http://saxon.sf.net/"

    invoke-virtual {v10, v6}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "saxon:asynchronous"

    invoke-virtual {p0, v6, v11}, Lnet/sf/saxon/style/StyleElement;->processBooleanAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lnet/sf/saxon/style/XSLResultDocument;->J:Z

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/trans/CompilerInfo;->isCompileWithTracing()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iput-boolean v7, p0, Lnet/sf/saxon/style/XSLResultDocument;->J:Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v6

    const-string v8, "EE"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "saxon:asynchronous - ignored when not running Saxon-EE"

    const-string v8, "SXWN9013"

    invoke-virtual {p0, v6, v8}, Lnet/sf/saxon/style/StyleElement;->compileWarning(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, p0, Lnet/sf/saxon/style/XSLResultDocument;->J:Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v9}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto/16 :goto_0

    :cond_9
    :goto_1
    const-string v7, "item-separator"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "{http://saxon.sf.net/}newline"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_a
    invoke-virtual {p0, v11, v6}, Lnet/sf/saxon/style/StyleElement;->makeAttributeValueTemplate(Ljava/lang/String;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iget-object v7, p0, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_d

    iget-object v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->w:Lnet/sf/saxon/expr/Expression;

    instance-of v2, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v2, :cond_c

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XTDE1460"

    invoke-virtual {p0, v0, v2, v8}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->v:Lnet/sf/saxon/om/StructuredQName;

    iput-object v1, p0, Lnet/sf/saxon/style/XSLResultDocument;->w:Lnet/sf/saxon/expr/Expression;

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->setNeedsDynamicOutputProperties(Z)V

    :cond_d
    :goto_2
    if-nez v3, :cond_e

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->z()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->x:I

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->validateValidationAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->x:I

    :goto_3
    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "The @type attribute is available only with a schema-aware XSLT processor"

    const-string v1, "XTSE1660"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0, v4}, Lnet/sf/saxon/style/StyleElement;->getSchemaType(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->y:Lnet/sf/saxon/type/SchemaType;

    const/16 v0, 0x8

    iput v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->x:I

    :cond_10
    if-eqz v4, :cond_11

    if-eqz v3, :cond_11

    const-string v0, "The @validation and @type attributes are mutually exclusive"

    const-string v1, "XTSE1505"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v5, :cond_12

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {p0, v5, v0}, Lnet/sf/saxon/style/XSLOutput;->prepareCharacterMaps(Lnet/sf/saxon/style/StyleElement;Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, ""

    invoke-direct {v1, v2, v2, v7}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v2, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/style/XSLResultDocument;->u:Lnet/sf/saxon/expr/Expression;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "xsl:result-document is disabled when extension functions are disabled"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    :cond_0
    const-string p1, "href"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLResultDocument;->u:Lnet/sf/saxon/expr/Expression;

    const-string p1, "format"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLResultDocument;->w:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLResultDocument;->w:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p0, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/StructuredQName;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/style/XSLResultDocument;->z:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getContainingPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StylesheetPackage;->setCreatesSecondaryResultDocuments(Z)V

    return-void
.end method
