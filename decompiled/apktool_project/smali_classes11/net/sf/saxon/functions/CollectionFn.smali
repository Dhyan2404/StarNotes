.class public Lnet/sf/saxon/functions/CollectionFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/CollectionFn$a;,
        Lnet/sf/saxon/functions/CollectionFn$b;
    }
.end annotation


# static fields
.field public static final EMPTY_COLLECTION:Lnet/sf/saxon/lib/ResourceCollection;

.field public static EMPTY_COLLECTION_URI:Ljava/lang/String; = "http://saxon.sf.net/collection/empty"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/functions/CollectionFn$b;

    const-string v1, "http://saxon.sf.net/collection/empty"

    invoke-direct {v0, v1}, Lnet/sf/saxon/functions/CollectionFn$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/functions/CollectionFn;->EMPTY_COLLECTION:Lnet/sf/saxon/lib/ResourceCollection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/CollectionFn;->e(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/CollectionFn;->f(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p0, Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/Resource;

    invoke-interface {p0}, Lnet/sf/saxon/lib/Resource;->getItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v1

    if-eq v1, p0, :cond_0

    new-instance p1, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;-><init>(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SpaceStrippingRule;)V

    invoke-virtual {p1}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FODC0004"

    if-nez p1, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDefaultCollection()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance p2, Ljava/net/URI;

    invoke-direct {p2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/functions/IriToUri;->iriToUri(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_1
    new-instance p2, Ljava/net/URI;

    invoke-direct {p2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p1, p0}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Relative collection URI cannot be resolved: no base URI available"

    const-string p2, "FODC0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Controller;->getDefaultCollection()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Controller;->getDefaultCollection()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_f

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/CollectionFn;->c(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v3

    if-eq v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    :cond_3
    move-object v1, p2

    :goto_1
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v3

    const-string v4, "saxon:collections"

    invoke-virtual {v3, v4, v1}, Lnet/sf/saxon/Controller;->getUserData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/GroundedValue;

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/sf/saxon/Configuration;->getRegisteredCollection(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceCollection;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/Controller;->getCollectionFinder()Lnet/sf/saxon/lib/CollectionFinder;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5, p1, p2}, Lnet/sf/saxon/lib/CollectionFinder;->findCollection(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceCollection;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    new-instance v3, Lnet/sf/saxon/functions/CollectionFn$b;

    sget-object p2, Lnet/sf/saxon/functions/CollectionFn;->EMPTY_COLLECTION_URI:Ljava/lang/String;

    invoke-direct {v3, p2}, Lnet/sf/saxon/functions/CollectionFn$b;-><init>(Ljava/lang/String;)V

    :cond_6
    instance-of p2, v0, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz p2, :cond_7

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v5

    if-eq v2, v5, :cond_7

    instance-of v5, v3, Lnet/sf/saxon/resource/AbstractResourceCollection;

    if-eqz v5, :cond_7

    move-object v5, v3

    check-cast v5, Lnet/sf/saxon/resource/AbstractResourceCollection;

    invoke-virtual {v5, v2}, Lnet/sf/saxon/resource/AbstractResourceCollection;->stripWhitespace(Lnet/sf/saxon/om/SpaceStrippingRule;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v2, 0x0

    :cond_7
    invoke-virtual {p0, v3, p1}, Lnet/sf/saxon/functions/CollectionFn;->d(Lnet/sf/saxon/lib/ResourceCollection;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    new-instance v6, Lcom/sunia/HTREnginev2/u0e;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/u0e;-><init>()V

    invoke-static {v6}, Lnet/sf/saxon/expr/ItemMapper;->of(Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMapper;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lnet/sf/saxon/Configuration;->getMultithreadedItemMappingIterator(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    if-eqz v2, :cond_8

    new-instance v5, Lcom/sunia/HTREnginev2/v0e;

    invoke-direct {v5, v2}, Lcom/sunia/HTREnginev2/v0e;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    invoke-static {p0, v5}, Lnet/sf/saxon/expr/ItemMappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object p0

    :cond_8
    invoke-interface {v3, p1}, Lnet/sf/saxon/lib/ResourceCollection;->isStable(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/lib/Feature;->STABLE_COLLECTION_URI:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Lnet/sf/saxon/om/LazySequence;

    invoke-direct {p1, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object v3

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v5

    :cond_b
    :goto_3
    invoke-interface {v5}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v6

    if-eqz v6, :cond_e

    instance-of v7, v6, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v7, :cond_b

    move-object v7, v6

    check-cast v7, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_b

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_c

    move-object v9, v0

    check-cast v9, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v10, Lnet/sf/saxon/om/DocumentKey;

    invoke-virtual {v9}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object v9

    invoke-direct {v10, v8, v11, v9}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/style/PackageVersion;)V

    goto :goto_4

    :cond_c
    new-instance v10, Lnet/sf/saxon/om/DocumentKey;

    invoke-direct {v10, v8}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    :goto_4
    instance-of v8, v6, Lnet/sf/saxon/om/TreeInfo;

    if-eqz v8, :cond_d

    check-cast v6, Lnet/sf/saxon/om/TreeInfo;

    goto :goto_5

    :cond_d
    new-instance v6, Lnet/sf/saxon/om/GenericTreeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v8

    invoke-direct {v6, v8, v7}, Lnet/sf/saxon/om/GenericTreeInfo;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/NodeInfo;)V

    :goto_5
    invoke-virtual {v3, v6, v10}, Lnet/sf/saxon/om/DocumentPool;->add(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/DocumentKey;)V

    goto :goto_3

    :cond_e
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1, v4, v1, p0}, Lnet/sf/saxon/Controller;->setUserData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_f
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No default collection has been defined"

    const-string p2, "FODC0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lnet/sf/saxon/lib/ResourceCollection;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lnet/sf/saxon/lib/ResourceCollection;->getResources(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/functions/CollectionFn$a;

    invoke-direct {p1, p0}, Lnet/sf/saxon/functions/CollectionFn$a;-><init>(Ljava/util/Iterator;)V

    return-object p1
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    const p1, -0x800001

    and-int/2addr p0, p1

    const/high16 p1, 0x80000

    or-int/2addr p0, p1

    return p0
.end method
