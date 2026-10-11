.class public Lnet/sf/saxon/Gizmo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/Gizmo$b;,
        Lnet/sf/saxon/Gizmo$c;
    }
.end annotation


# static fields
.field public static k:[Ljava/lang/String;


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;

.field public final b:Lnet/sf/saxon/sxpath/IndependentContext;

.field public c:Lnet/sf/saxon/tree/linked/DocumentImpl;

.field public d:Z

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/Gizmo$c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lnet/sf/saxon/gizmo/Talker;

.field public h:Z

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/tree/linked/DocumentImpl;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/io/PrintStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 39

    const-string v0, "ancestor::"

    const-string v1, "ancestor-or-self::"

    const-string v2, "array"

    const-string v3, "attribute"

    const-string v4, "cast as"

    const-string v5, "castable as"

    const-string v6, "child::"

    const-string v7, "comment()"

    const-string v8, "descendant::"

    const-string v9, "descendant-or-self::"

    const-string v10, "document-node()"

    const-string v11, "element()"

    const-string v12, "else"

    const-string v13, "empty-sequence()"

    const-string v14, "every"

    const-string v15, "except"

    const-string v16, "following::"

    const-string v17, "following-sibling::"

    const-string v18, "function"

    const-string v19, "instance of"

    const-string v20, "intersect"

    const-string v21, "item()"

    const-string v22, "namespace::"

    const-string v23, "namespace-node()"

    const-string v24, "node()"

    const-string v25, "parent::"

    const-string v26, "preceding::"

    const-string v27, "preceding-sibling::"

    const-string v28, "processing-instruction()"

    const-string v29, "return"

    const-string v30, "satisfies"

    const-string v31, "schema-attribute"

    const-string v32, "schema-element"

    const-string v33, "self::"

    const-string v34, "some"

    const-string v35, "text()"

    const-string v36, "then"

    const-string v37, "treat as"

    const-string v38, "union"

    filled-new-array/range {v0 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/Gizmo;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lnet/sf/saxon/Gizmo;->d:Z

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->e:Ljava/util/Map;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->f:Ljava/util/Map;

    .line 49
    iput-boolean v0, p0, Lnet/sf/saxon/Gizmo;->h:Z

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/Gizmo;->i:Ljava/util/List;

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    .line 52
    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->L()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lnet/sf/saxon/Gizmo;->g:Lnet/sf/saxon/gizmo/Talker;

    .line 54
    invoke-static {}, Lnet/sf/saxon/Configuration;->newConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    .line 55
    sget-object v1, Lnet/sf/saxon/lib/Feature;->ALLOW_SYNTAX_EXTENSIONS:Lnet/sf/saxon/lib/Feature;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    .line 56
    new-instance v1, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v1, v0}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string p0, "xml"

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    .line 57
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "xsl"

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    .line 58
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "saxon"

    const-string v0, "http://saxon.sf.net/"

    .line 59
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "xs"

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    .line 60
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "xsi"

    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    .line 61
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "fn"

    const-string v0, "http://www.w3.org/2005/xpath-functions"

    .line 62
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "math"

    const-string v0, "http://www.w3.org/2005/xpath-functions/math"

    .line 63
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "map"

    const-string v0, "http://www.w3.org/2005/xpath-functions/map"

    .line 64
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "array"

    const-string v0, "http://www.w3.org/2005/xpath-functions/array"

    .line 65
    invoke-virtual {v1, p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    .line 66
    invoke-virtual {v1, p0, p0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object p0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->ANY_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    invoke-virtual {v1, p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/Gizmo;->d:Z

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->e:Ljava/util/Map;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->f:Ljava/util/Map;

    .line 5
    iput-boolean v0, p0, Lnet/sf/saxon/Gizmo;->h:Z

    .line 6
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->i:Ljava/util/List;

    .line 7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->L()V

    .line 9
    invoke-static {}, Lnet/sf/saxon/Configuration;->newConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    .line 10
    sget-object v2, Lnet/sf/saxon/lib/Feature;->ALLOW_SYNTAX_EXTENSIONS:Lnet/sf/saxon/lib/Feature;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    .line 11
    new-instance v2, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v2, v1}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v2, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    .line 12
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v5, v0

    move-object v4, v2

    move v6, v3

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v7, p1, v5

    const-string v8, "-s:"

    .line 13
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_0

    .line 14
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v8, "-q:"

    .line 15
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 16
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move v6, v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0, v2}, Lnet/sf/saxon/Gizmo;->initTalker(Ljava/lang/String;)Lnet/sf/saxon/gizmo/Talker;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/Gizmo;->g:Lnet/sf/saxon/gizmo/Talker;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lnet/sf/saxon/Gizmo;->k:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 20
    invoke-interface {p1, v1}, Lnet/sf/saxon/gizmo/Talker;->setAutoCompletion(Ljava/util/List;)V

    const/4 p1, 0x2

    if-eqz v4, :cond_3

    .line 21
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Gizmo;->W(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v1, "<dummy/>"

    .line 24
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 25
    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v1}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    .line 26
    sget-object v4, Lnet/sf/saxon/om/TreeModel;->LINKED_TREE:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {v1, v4}, Lnet/sf/saxon/lib/ParseOptions;->setModel(Lnet/sf/saxon/om/TreeModel;)V

    .line 27
    invoke-virtual {v1, v3}, Lnet/sf/saxon/lib/ParseOptions;->setLineNumbering(Z)V

    .line 28
    iget-object v3, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3, v2, v1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    .line 29
    iput-boolean v0, p0, Lnet/sf/saxon/Gizmo;->h:Z
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 30
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 32
    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, "xsl"

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, "saxon"

    const-string v1, "http://saxon.sf.net/"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, "xs"

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, "xsi"

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, "fn"

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, "math"

    const-string v1, "http://www.w3.org/2005/xpath-functions/math"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, "map"

    const-string v1, "http://www.w3.org/2005/xpath-functions/map"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, "array"

    const-string v1, "http://www.w3.org/2005/xpath-functions/array"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    const-string v0, ""

    invoke-virtual {p1, v0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    sget-object v0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->ANY_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V

    .line 43
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saxon Gizmo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/sf/saxon/Version;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->g:Lnet/sf/saxon/gizmo/Talker;

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/Gizmo;->F(Lnet/sf/saxon/gizmo/Talker;Z)V

    return-void
.end method

.method private synthetic M(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "follow"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->i0(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic N(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "distinct-values(//*!(\'/\'||string-join(ancestor-or-self::*!name(),\'/\')))"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->U(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private synthetic O(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "precede"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->i0(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic P(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "prefix"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->i0(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Q(Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method private synthetic R(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "//text()[not(normalize-space())]"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->B(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private synthetic S(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "suffix"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->i0(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic T(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "content"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->i0(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->B(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->d0(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/Gizmo;->Q(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/Gizmo;->T(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/Gizmo;->N(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic f(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/Gizmo;->O(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic g(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->f0(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic h(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->W(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic i(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->b0(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic j(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->U(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic k(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->X(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic l(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->e0(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic m(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->g0(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/Gizmo;

    invoke-direct {v0, p0}, Lnet/sf/saxon/Gizmo;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->z(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic o(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/Gizmo;->M(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic p(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->K(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic q(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->a0(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic r(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/Gizmo;->P(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic s(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->Z(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic t(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/Gizmo;->R(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic u(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->h0(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic v(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/Gizmo;->S(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic w(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->j0(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic x(Lnet/sf/saxon/Gizmo;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->A(Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->J(Ljava/lang/StringBuilder;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->open()V

    invoke-interface {v1, v0}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    const/4 v2, 0x2

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {v0, v1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Selected item is not a node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    iput-object p1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/Gizmo;->d:Z

    return-void
.end method

.method public final B(Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->c0()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->V(Ljava/lang/StringBuilder;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->C()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Item;

    instance-of v1, v0, Lnet/sf/saxon/om/MutableNodeInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/om/MutableNodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/MutableNodeInfo;->delete()V

    iput-boolean v2, p0, Lnet/sf/saxon/Gizmo;->d:Z

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/tree/NamespaceNode;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/tree/NamespaceNode;

    invoke-virtual {v1}, Lnet/sf/saxon/tree/NamespaceNode;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    instance-of v3, v1, Lnet/sf/saxon/om/MutableNodeInfo;

    if-eqz v3, :cond_1

    :try_start_0
    check-cast v1, Lnet/sf/saxon/om/MutableNodeInfo;

    check-cast v0, Lnet/sf/saxon/tree/NamespaceNode;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/NamespaceNode;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/sf/saxon/om/MutableNodeInfo;->removeNamespace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot remove namespace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lnet/sf/saxon/Gizmo;->d:Z

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Selected item is not a mutable node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public final C()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->resetIndexes()V

    return-void
.end method

.method public final D(Lnet/sf/saxon/sxpath/XPathExpression;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lnet/sf/saxon/sxpath/XPathExpression;->createDynamicContext(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/sxpath/XPathDynamicContext;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/Gizmo;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/sxpath/IndependentContext;->getExternalVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Sequence;

    invoke-virtual {p2, v2, v1}, Lnet/sf/saxon/sxpath/XPathDynamicContext;->setVariable(Lnet/sf/saxon/sxpath/XPathVariable;Lnet/sf/saxon/om/Sequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lnet/sf/saxon/sxpath/XPathExpression;->iterate(Lnet/sf/saxon/sxpath/XPathDynamicContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public final E(Lnet/sf/saxon/query/XQueryExpression;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/query/DynamicQueryContext;

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, p0}, Lnet/sf/saxon/query/DynamicQueryContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/query/DynamicQueryContext;->setContextItem(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/XQueryExpression;->iterator(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public final F(Lnet/sf/saxon/gizmo/Talker;Z)V
    .locals 7

    const/4 v0, 0x0

    :cond_0
    :goto_0
    move v1, v0

    :goto_1
    const/4 v2, 0x2

    :try_start_0
    const-string v3, ""

    invoke-interface {p1, v3}, Lnet/sf/saxon/gizmo/Talker;->exchange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    if-le v1, v2, :cond_2

    :try_start_1
    const-string v1, "To exit, type \'quit\'. For help, type \'help\'"

    invoke-interface {p1, v1}, Lnet/sf/saxon/gizmo/Talker;->exchange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_6

    :cond_2
    :goto_3
    move v1, v4

    goto :goto_2

    :cond_3
    const/16 v1, 0x20

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_4
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "quit"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lnet/sf/saxon/Gizmo;->d:Z

    if-eqz v3, :cond_7

    const-string v3, "now"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    const-string v1, "Quit without saving? (Y|N)"

    invoke-interface {p1, v1}, Lnet/sf/saxon/gizmo/Talker;->exchange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const-string v3, "n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_0

    return-void

    :cond_8
    iget-object v3, p0, Lnet/sf/saxon/Gizmo;->f:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/Gizmo$c;

    if-nez v3, :cond_a

    if-eqz p2, :cond_9

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown command "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (Use \'quit\' to exit)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Gizmo;->K(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    const-string v3, "\"Unknown command \" + cmd + \""

    invoke-direct {v1, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    iget-object v3, v3, Lnet/sf/saxon/Gizmo$c;->c:Lnet/sf/saxon/Gizmo$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lnet/sf/saxon/Gizmo$b;->a(Ljava/lang/StringBuilder;)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move v4, v0

    goto :goto_6

    :catch_2
    move-exception v3

    move v4, v1

    move-object v1, v3

    :goto_6
    iget-object v3, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_7
    move v1, v4

    goto/16 :goto_1
.end method

.method public final G(Ljava/lang/StringBuilder;I)Lnet/sf/saxon/sxpath/XPathExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/sxpath/XPathEvaluator;

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1}, Lnet/sf/saxon/sxpath/XPathEvaluator;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/sxpath/XPathEvaluator;->setStaticContext(Lnet/sf/saxon/sxpath/XPathStaticContext;)V

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/StructuredQName;

    iget-object v3, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    const-string v2, "XP"

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v1, v2, v4, p2, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->parse(Ljava/lang/String;IILnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object p0

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p1, v4, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/sxpath/XPathEvaluator;->createExpression(Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathExpression;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, v4, p0, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object p2
.end method

.method public final H(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/IndependentContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p0}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public final I(Ljava/lang/StringBuilder;)Lnet/sf/saxon/query/XQueryExpression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->makeStaticQueryContext(Z)Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/StructuredQName;

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iget-object v5, p0, Lnet/sf/saxon/Gizmo;->e:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/GroundedValue;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lnet/sf/saxon/query/StaticQueryContext;->declareGlobalVariable(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;Z)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lnet/sf/saxon/Gizmo;->h:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setSchemaAware(Z)V

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v2}, Lnet/sf/saxon/sxpath/IndependentContext;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v4, v3, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/query/StaticQueryContext;->compileQuery(Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p0

    return-object p0
.end method

.method public final J(Ljava/lang/StringBuilder;I)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Gizmo;->G(Ljava/lang/StringBuilder;I)Lnet/sf/saxon/sxpath/XPathExpression;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Gizmo;->D(Lnet/sf/saxon/sxpath/XPathExpression;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public final K(Ljava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "help"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/Gizmo$c;

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Gizmo;->K(Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    iget-object p1, p1, Lnet/sf/saxon/Gizmo$c;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    const-string v1, "Commands available:"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/Gizmo;->f:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/Gizmo$c;

    iget-object v0, v0, Lnet/sf/saxon/Gizmo$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final L()V
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/w2h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/w2h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "call"

    const-string v2, "call {filename} -- execute script from a file"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/y2h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/y2h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "copy"

    const-string v2, "copy {expression} -- make deep copy of all selected nodes"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/e3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/e3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "delete"

    const-string v2, "delete {expression} -- delete all selected nodes, with their content"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/f3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/f3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "follow"

    const-string v2, "follow {expression} with {query} -- add result of query after each selected node"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/d3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/d3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "help"

    const-string v2, "help {keyword} -- help on a specific command, or \'?\' for all commands"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/g3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/g3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "list"

    const-string v2, "list {expression} -- display paths of selected nodes"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/i3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/i3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "load"

    const-string v2, "load {fileName} -- load new source document from file"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/j3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/j3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "namespace"

    const-string v2, "namespace {prefix} {uri} -- bind namespace prefix to URI"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/k3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/k3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "paths"

    const-string v2, "paths -- display all distinct element paths in the document"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/l3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/l3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "precede"

    const-string v2, "precede {expression} with {query} -- add result of query before each selected node"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/h3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/h3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "prefix"

    const-string v2, "prefix {expression} with {query} -- add result of query as first child of each selected node"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/m3h;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/m3h;-><init>()V

    const-string v1, "quit"

    const-string v2, "quit [now] -- stop Gizmo"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/n3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/n3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "rename"

    const-string v2, "rename {expression-1} as {expression-2} -- change the name of selected nodes"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/o3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/o3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "replace"

    const-string v2, "replace {expression} with {query} -- replace selected nodes with result of query"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/p3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/p3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "save"

    const-string v2, "save {filename} {output-property=value}... -- save current document to file"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/q3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/q3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "schema"

    const-string v2, "schema {filename} -- load XSD 1.1 schema for use in validation"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/r3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/r3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "set"

    const-string v2, "set {variable} {expression} -- set variable to value of expression"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/s3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/s3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "show"

    const-string v2, "show {expression} -- display content of all selected nodes"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/t3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/t3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "strip"

    const-string v2, "strip -- delete whitespace text nodes"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/x2h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/x2h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "suffix"

    const-string v2, "suffix {expression} with {query} -- add result of query as last child of each selected node"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/z2h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/z2h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "transform"

    const-string v2, "transform {filename} -- transform current document using stylesheet in named file"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/a3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/a3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "undo"

    const-string v2, "undo -- revert the most recent changes"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/b3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/b3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "update"

    const-string v2, "update {expression} with {query} -- replace content of selected nodes with result of query"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/c3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/c3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "validate"

    const-string v2, "validate -- validate against loaded schema and/or xsi:schemaLocation"

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    new-instance v0, Lcom/sunia/HTREnginev2/d3h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/d3h;-><init>(Lnet/sf/saxon/Gizmo;)V

    const-string v1, "?"

    const-string v2, ""

    invoke-virtual {p0, v1, v2, v0}, Lnet/sf/saxon/Gizmo;->y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V

    return-void
.end method

.method public final U(Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->J(Ljava/lang/StringBuilder;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Item;

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_2

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLineNumber()I

    move-result v1

    if-ltz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final V(Ljava/lang/StringBuilder;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I)",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Gizmo;->J(Ljava/lang/StringBuilder;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final W(Ljava/lang/StringBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^~"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    new-instance p1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {p1}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    sget-object v1, Lnet/sf/saxon/om/TreeModel;->LINKED_TREE:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/lib/ParseOptions;->setModel(Lnet/sf/saxon/om/TreeModel;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/lib/ParseOptions;->setLineNumbering(Z)V

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v0, p1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    iput-object p1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/Gizmo;->h:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    const/4 v1, 0x4

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lnet/sf/saxon/Gizmo;->k:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->g:Lnet/sf/saxon/gizmo/Talker;

    invoke-interface {p0, v0}, Lnet/sf/saxon/gizmo/Talker;->setAutoCompletion(Ljava/util/List;)V

    return-void
.end method

.method public final X(Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->b:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No namespace prefix supplied"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Y()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "No source document available"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Z(Ljava/lang/StringBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->c0()V

    const/16 v0, 0x47

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->V(Ljava/lang/StringBuilder;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->C()V

    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/Gizmo;->G(Ljava/lang/StringBuilder;I)Lnet/sf/saxon/sxpath/XPathExpression;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v2, v1, Lnet/sf/saxon/om/MutableNodeInfo;

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/Gizmo;->D(Lnet/sf/saxon/sxpath/XPathExpression;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/value/QNameValue;

    if-eqz v3, :cond_0

    check-cast v2, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/Gizmo;->H(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    :goto_1
    check-cast v1, Lnet/sf/saxon/om/MutableNodeInfo;

    new-instance v3, Lnet/sf/saxon/om/FingerprintedQName;

    iget-object v4, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    const/4 v2, 0x1

    invoke-interface {v1, v3, v2}, Lnet/sf/saxon/om/MutableNodeInfo;->rename(Lnet/sf/saxon/om/NodeName;Z)V

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "New name must evaluate to a string or QName"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Selected item is not a renameable node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public final a0(Ljava/lang/StringBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->c0()V

    const/16 v0, 0x79

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->V(Ljava/lang/StringBuilder;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->C()V

    const/4 v1, 0x5

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->I(Ljava/lang/StringBuilder;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v4, v1, Lnet/sf/saxon/om/MutableNodeInfo;

    if-eqz v4, :cond_d

    move-object v4, v1

    check-cast v4, Lnet/sf/saxon/om/MutableNodeInfo;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/Gizmo;->E(Lnet/sf/saxon/query/XQueryExpression;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    instance-of v5, v1, Lnet/sf/saxon/value/AtomicValue;

    const/4 v6, 0x3

    if-eqz v5, :cond_1

    new-instance v5, Lnet/sf/saxon/tree/util/Orphan;

    iget-object v7, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v5, v7}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v5, v6}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v5, v1}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    move-object v1, v5

    :cond_1
    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v5

    const/16 v7, 0x9

    const/4 v8, 0x2

    if-eq v5, v2, :cond_6

    if-eq v5, v8, :cond_3

    if-eq v5, v6, :cond_6

    const/4 v9, 0x7

    if-eq v5, v9, :cond_6

    const/16 v9, 0x8

    if-eq v5, v9, :cond_6

    if-eq v5, v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot replace a document node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/MutableNodeInfo;

    invoke-interface {p0, v4}, Lnet/sf/saxon/om/MutableNodeInfo;->removeAttribute(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    if-ne p0, v2, :cond_4

    invoke-interface {v1, v3}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p0, :cond_4

    invoke-interface {v1, v3}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    if-ne p0, v8, :cond_4

    invoke-interface {v1, v3}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/MutableNodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lnet/sf/saxon/om/MutableNodeInfo;->addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Replacement for an attribute must be an attribute"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot replace a namespace node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/om/Item;

    instance-of v10, v9, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v10, :cond_b

    check-cast v9, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v9}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v10

    if-eq v10, v8, :cond_a

    if-eq v10, v7, :cond_9

    const/16 v11, 0xd

    if-eq v10, v11, :cond_8

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot replace non-namespace node with namespace node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-interface {v9}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot replace non-attribute with attribute"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    instance-of v10, v9, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v10, :cond_7

    new-instance v10, Lnet/sf/saxon/tree/util/Orphan;

    iget-object v11, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v10, v11}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v10, v6}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-interface {v9}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v3, [Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v4, v1, v2}, Lnet/sf/saxon/om/MutableNodeInfo;->replace([Lnet/sf/saxon/om/NodeInfo;Z)V

    goto/16 :goto_0

    :cond_d
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Selected item is not a mutable node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    iput-boolean v2, p0, Lnet/sf/saxon/Gizmo;->d:Z

    return-void
.end method

.method public final b0(Ljava/lang/StringBuilder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    new-instance v0, Lnet/sf/saxon/value/Whitespace$Tokenizer;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/Whitespace$Tokenizer;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0}, Lnet/sf/saxon/value/Whitespace$Tokenizer;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->g:Lnet/sf/saxon/gizmo/Talker;

    const-string v3, "Overwrite existing file? (Y|N)"

    invoke-interface {v2, v3}, Lnet/sf/saxon/gizmo/Talker;->exchange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_2
    :goto_0
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    new-instance v1, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v1}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    :goto_1
    invoke-virtual {v0}, Lnet/sf/saxon/value/Whitespace$Tokenizer;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    :try_start_0
    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v4, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized output property \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    const/4 v2, 0x2

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, v0, v2, v3}, Lnet/sf/saxon/tree/linked/DocumentImpl;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V

    iget-object v0, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-boolean v4, p0, Lnet/sf/saxon/Gizmo;->d:Z

    return-void

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No file name supplied"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    const/4 v2, 0x2

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, v0, v2, v3}, Lnet/sf/saxon/tree/linked/DocumentImpl;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->i:Ljava/util/List;

    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    iget-object v0, p0, Lnet/sf/saxon/Gizmo;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->i:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final d0(Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^~"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->loadSchema(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Schema processing is not supported in this Saxon configuration"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e0(Ljava/lang/StringBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1}, Lnet/sf/saxon/Gizmo;->J(Ljava/lang/StringBuilder;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->c0()V

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-interface {p1, v1}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    iput-object p1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance v2, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Item;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->endDocument()V

    invoke-virtual {v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    iput-object p1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot save the value as a document ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0, v3}, Lnet/sf/saxon/Gizmo;->H(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    :goto_1
    return-void

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Format: set name = value"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeTestCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->f:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/Gizmo$c;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/Gizmo$c;->c:Lnet/sf/saxon/Gizmo$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lnet/sf/saxon/Gizmo$b;->a(Ljava/lang/StringBuilder;)V

    :try_start_0
    const-string p0, "utf-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "\"Unknown command \" + cmd + \""

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f0(Ljava/lang/StringBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->J(Ljava/lang/StringBuilder;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Item;

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v0}, Lnet/sf/saxon/query/QueryResult;->serialize(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v2}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    const-string v3, "method"

    const-string v4, "adaptive"

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/serialize/SerializationProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v3

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4, v2}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v2

    invoke-interface {v2, v0}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;)V

    iget-object v0, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final g0(Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->c0()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^~"

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    new-instance p1, Lnet/sf/saxon/TransformerFactoryImpl;

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p1, v1}, Lnet/sf/saxon/TransformerFactoryImpl;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->open()V

    iget-object v1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->close()V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    iput-object p1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getCurrentDoc()Lnet/sf/saxon/tree/linked/DocumentImpl;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    return-object p0
.end method

.method public final h0(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/Gizmo;->i:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    iput-object p1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Nothing to undo"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i0(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->c0()V

    const/16 v0, 0x79

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->V(Ljava/lang/StringBuilder;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->C()V

    const/4 v1, 0x5

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Gizmo;->I(Ljava/lang/StringBuilder;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v4, v1, Lnet/sf/saxon/om/MutableNodeInfo;

    if-eqz v4, :cond_11

    move-object v4, v1

    check-cast v4, Lnet/sf/saxon/om/MutableNodeInfo;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/Gizmo;->E(Lnet/sf/saxon/query/XQueryExpression;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    instance-of v5, v1, Lnet/sf/saxon/value/AtomicValue;

    const-string v6, "content"

    if-eqz v5, :cond_1

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-interface {v4, v1}, Lnet/sf/saxon/om/MutableNodeInfo;->replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->asIterable()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v11, 0x2

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/om/Item;

    instance-of v10, v8, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v10, :cond_6

    check-cast v8, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v8}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v9

    if-eq v9, v11, :cond_5

    const/16 v10, 0x9

    if-eq v9, v10, :cond_4

    const/16 v10, 0xd

    if-eq v9, v10, :cond_3

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot replace namespace nodes"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-interface {v8}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    instance-of v10, v8, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v10, :cond_2

    new-instance v10, Lnet/sf/saxon/tree/util/Orphan;

    iget-object v11, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v10, v11}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v10, v9}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-interface {v8}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    invoke-virtual {v10, v8}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v8, "prefix"

    if-nez v1, :cond_9

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "update"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot supply attributes for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " command (use \'prefix\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    new-array v1, v3, [Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v3

    goto :goto_5

    :sswitch_1
    const-string v5, "precede"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v2

    goto :goto_5

    :sswitch_2
    const-string v5, "suffix"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x4

    goto :goto_5

    :sswitch_3
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v9

    goto :goto_5

    :sswitch_4
    const-string v5, "follow"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v11

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v5, -0x1

    :goto_5
    if-eqz v5, :cond_e

    if-eq v5, v2, :cond_d

    if-eq v5, v11, :cond_c

    if-eq v5, v9, :cond_b

    invoke-interface {v4, v1, v3, v2}, Lnet/sf/saxon/om/MutableNodeInfo;->insertChildren([Lnet/sf/saxon/om/NodeInfo;ZZ)V

    goto :goto_6

    :cond_b
    invoke-interface {v4, v1, v2, v2}, Lnet/sf/saxon/om/MutableNodeInfo;->insertChildren([Lnet/sf/saxon/om/NodeInfo;ZZ)V

    goto :goto_6

    :cond_c
    invoke-interface {v4, v1, v3, v2}, Lnet/sf/saxon/om/MutableNodeInfo;->insertSiblings([Lnet/sf/saxon/om/NodeInfo;ZZ)V

    goto :goto_6

    :cond_d
    invoke-interface {v4, v1, v2, v2}, Lnet/sf/saxon/om/MutableNodeInfo;->insertSiblings([Lnet/sf/saxon/om/NodeInfo;ZZ)V

    goto :goto_6

    :cond_e
    invoke-interface {v4, v1, v2}, Lnet/sf/saxon/om/MutableNodeInfo;->replace([Lnet/sf/saxon/om/NodeInfo;Z)V

    :cond_f
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v2}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v6

    new-instance v5, Lnet/sf/saxon/pattern/NameTest;

    iget-object v7, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v7}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    invoke-direct {v5, v11, v6, v7}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamePool;)V

    invoke-interface {v4, v11, v5}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface {v4, v5}, Lnet/sf/saxon/om/MutableNodeInfo;->removeAttribute(Lnet/sf/saxon/om/NodeInfo;)V

    :cond_10
    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, v4

    invoke-interface/range {v5 .. v10}, Lnet/sf/saxon/om/MutableNodeInfo;->addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;IZ)V

    goto :goto_7

    :cond_11
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Selected item is not a mutable node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    iput-boolean v2, p0, Lnet/sf/saxon/Gizmo;->d:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4ba2c44f -> :sswitch_4
        -0x3a6b4d6e -> :sswitch_3
        -0x352208af -> :sswitch_2
        -0x12ffce7a -> :sswitch_1
        0x38b73479 -> :sswitch_0
    .end sparse-switch
.end method

.method public initTalker(Ljava/lang/String;)Lnet/sf/saxon/gizmo/Talker;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    :try_start_0
    new-instance p0, Lnet/sf/saxon/gizmo/JLine2Talker;

    invoke-direct {p0}, Lnet/sf/saxon/gizmo/JLine2Talker;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Lnet/sf/saxon/gizmo/DefaultTalker;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    invoke-direct {v2, v3, p0}, Lnet/sf/saxon/gizmo/DefaultTalker;-><init>(Ljava/io/InputStream;Ljava/io/PrintStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-object v0
.end method

.method public final j0(Ljava/lang/StringBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->Y()V

    invoke-virtual {p0}, Lnet/sf/saxon/Gizmo;->c0()V

    iget-object p1, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-direct {v1, p1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->open()V

    new-instance p1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {p1}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->a:Lnet/sf/saxon/Configuration;

    iget-object v3, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v3}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getSystemId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v2, v1, v3, p1, v4}, Lnet/sf/saxon/Configuration;->getDocumentValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    const/4 v3, 0x2

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v2, p1, v3, v4}, Lnet/sf/saxon/tree/linked/DocumentImpl;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->close()V

    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    iput-object p1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    iput-boolean v0, p0, Lnet/sf/saxon/Gizmo;->d:Z

    iput-boolean v0, p0, Lnet/sf/saxon/Gizmo;->h:Z

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Schema processing is not supported in this Saxon configuration"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentDoc(Lnet/sf/saxon/tree/linked/DocumentImpl;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/Gizmo;->c:Lnet/sf/saxon/tree/linked/DocumentImpl;

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/Gizmo$b;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/Gizmo$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/Gizmo$c;-><init>(Lnet/sf/saxon/Gizmo$a;)V

    iput-object p1, v0, Lnet/sf/saxon/Gizmo$c;->a:Ljava/lang/String;

    iput-object p2, v0, Lnet/sf/saxon/Gizmo$c;->b:Ljava/lang/String;

    iput-object p3, v0, Lnet/sf/saxon/Gizmo$c;->c:Lnet/sf/saxon/Gizmo$b;

    iget-object p0, p0, Lnet/sf/saxon/Gizmo;->f:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final z(Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance p1, Lnet/sf/saxon/gizmo/DefaultTalker;

    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lnet/sf/saxon/Gizmo;->j:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/gizmo/DefaultTalker;-><init>(Ljava/io/InputStream;Ljava/io/PrintStream;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Gizmo;->F(Lnet/sf/saxon/gizmo/Talker;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Script not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
