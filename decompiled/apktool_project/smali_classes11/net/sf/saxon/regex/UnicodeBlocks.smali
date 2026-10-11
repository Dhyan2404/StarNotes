.class public Lnet/sf/saxon/regex/UnicodeBlocks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/z/IntSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(Lnet/sf/saxon/Configuration;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    const-class v0, Lnet/sf/saxon/regex/UnicodeBlocks;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xfa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lnet/sf/saxon/regex/UnicodeBlocks;->a:Ljava/util/Map;

    sget-object v1, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    const-string v2, "unicodeBlocks.xml"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/Platform;->locateResource(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v2}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    const-string v5, "unicodeBlocks.xml"

    invoke-direct {v4, v1, v5}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    const-string v4, ""

    const-string v5, "block"

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    const/4 v6, 0x1

    invoke-direct {v2, v6, v4, v5, p0}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-interface {v1, v3, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_3
    const-string v2, ""

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/regex/UnicodeBlocks;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v1, v3}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    const-string v5, ""

    const-string v6, "from"

    invoke-interface {v4, v5, v6}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const-string v8, ""

    const-string v9, "to"

    invoke-interface {v4, v8, v9}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v6, Lnet/sf/saxon/z/IntBlockSet;

    invoke-direct {v6, v5, v4}, Lnet/sf/saxon/z/IntBlockSet;-><init>(II)V

    if-nez v3, :cond_1

    move-object v3, v6

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lnet/sf/saxon/z/IntBlockSet;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lnet/sf/saxon/z/IntSet;->mutableCopy()Lnet/sf/saxon/z/IntSet;

    move-result-object v3

    invoke-virtual {v3, v6}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v6}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object v3

    goto :goto_1

    :cond_3
    sget-object v1, Lnet/sf/saxon/regex/UnicodeBlocks;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Lnet/sf/saxon/regex/RESyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to process unicodeBlocks.xml: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/regex/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance p0, Lnet/sf/saxon/regex/RESyntaxException;

    const-string v1, "Unable to read unicodeBlocks.xml file"

    invoke-direct {p0, v1}, Lnet/sf/saxon/regex/RESyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getBlock(Ljava/lang/String;)Lnet/sf/saxon/z/IntSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/regex/RESyntaxException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/regex/UnicodeBlocks;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    invoke-static {v0}, Lnet/sf/saxon/regex/UnicodeBlocks;->b(Lnet/sf/saxon/Configuration;)V

    :cond_0
    sget-object v0, Lnet/sf/saxon/regex/UnicodeBlocks;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/z/IntSet;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lnet/sf/saxon/regex/UnicodeBlocks;->a:Ljava/util/Map;

    invoke-static {p0}, Lnet/sf/saxon/regex/UnicodeBlocks;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/z/IntSet;

    return-object p0
.end method
