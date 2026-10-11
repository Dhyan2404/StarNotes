.class public Lnet/sf/saxon/regex/CaseVariants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ROMAN_VARIANTS:[I

.field public static a:Lnet/sf/saxon/z/IntToIntMap;

.field public static b:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x212a

    const/16 v1, 0x17f

    const/16 v2, 0x130

    const/16 v3, 0x131

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/regex/CaseVariants;->ROMAN_VARIANTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 10

    new-instance v0, Lnet/sf/saxon/z/IntToIntHashMap;

    const/16 v1, 0x9c4

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntToIntHashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/regex/CaseVariants;->a:Lnet/sf/saxon/z/IntToIntMap;

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/regex/CaseVariants;->b:Lnet/sf/saxon/z/IntHashMap;

    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "casevariants.xml"

    invoke-interface {v0, v2, v1}, Lnet/sf/saxon/Platform;->locateResource(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lnet/sf/saxon/Configuration;

    invoke-direct {v1}, Lnet/sf/saxon/Configuration;-><init>()V

    new-instance v3, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v3}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {v3, v4}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    :try_start_0
    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v5, v0, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v3}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    const-string v3, "c"

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v2, v5, v6, v3, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-interface {v0, v4, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "n"

    invoke-interface {v1, v6, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "v"

    invoke-interface {v1, v6, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    new-array v4, v4, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    array-length v9, v1

    if-ge v8, v9, :cond_1

    aget-object v9, v1, v8

    invoke-static {v9, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    aput v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    array-length v1, v1

    if-ne v1, v5, :cond_2

    sget-object v1, Lnet/sf/saxon/regex/CaseVariants;->a:Lnet/sf/saxon/z/IntToIntMap;

    aget v3, v4, v7

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/z/IntToIntMap;->put(II)V

    goto :goto_0

    :cond_2
    sget-object v1, Lnet/sf/saxon/regex/CaseVariants;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v1, v2, v4}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to build casevariants.xml"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to read casevariants.xml file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getCaseVariants(I)[I
    .locals 3

    const-class v0, Lnet/sf/saxon/regex/CaseVariants;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/sf/saxon/regex/CaseVariants;->a:Lnet/sf/saxon/z/IntToIntMap;

    if-nez v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/regex/CaseVariants;->a()V

    :cond_0
    sget-object v1, Lnet/sf/saxon/regex/CaseVariants;->a:Lnet/sf/saxon/z/IntToIntMap;

    invoke-interface {v1, p0}, Lnet/sf/saxon/z/IntToIntMap;->get(I)I

    move-result v1

    sget-object v2, Lnet/sf/saxon/regex/CaseVariants;->a:Lnet/sf/saxon/z/IntToIntMap;

    invoke-interface {v2}, Lnet/sf/saxon/z/IntToIntMap;->getDefaultValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    filled-new-array {v1}, [I

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_1
    sget-object v1, Lnet/sf/saxon/regex/CaseVariants;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v1, p0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_2

    sget-object p0, Lnet/sf/saxon/z/IntArraySet;->EMPTY_INT_ARRAY:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
