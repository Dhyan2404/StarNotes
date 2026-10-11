.class public Lnet/sf/saxon/regex/charclass/Categories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/regex/charclass/Categories$Category;
    }
.end annotation


# static fields
.field public static final ESCAPE_C:Lnet/sf/saxon/regex/charclass/CharacterClass;

.field public static final ESCAPE_D:Lnet/sf/saxon/regex/charclass/CharacterClass;

.field public static final ESCAPE_I:Lnet/sf/saxon/regex/charclass/CharacterClass;

.field public static final ESCAPE_S:Lnet/sf/saxon/regex/charclass/CharacterClass;

.field public static final ESCAPE_W:Lnet/sf/saxon/regex/charclass/CharacterClass;

.field public static final ESCAPE_c:Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

.field public static final ESCAPE_d:Lnet/sf/saxon/regex/charclass/Categories$Category;

.field public static final ESCAPE_i:Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

.field public static final ESCAPE_s:Lnet/sf/saxon/regex/charclass/CharacterClass;

.field public static final ESCAPE_w:Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/regex/charclass/Categories$Category;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lnet/sf/saxon/regex/charclass/Categories$Category;

.field public static c:Lnet/sf/saxon/regex/charclass/Categories$Category;

.field public static d:Lnet/sf/saxon/regex/charclass/Categories$Category;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;

    const/16 v1, 0xd

    const/16 v2, 0x20

    const/16 v3, 0x9

    const/16 v4, 0xa

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lnet/sf/saxon/z/IntArraySet;->make([II)Lnet/sf/saxon/z/IntArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/regex/charclass/IntSetCharacterClass;-><init>(Lnet/sf/saxon/z/IntSet;)V

    sput-object v0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_s:Lnet/sf/saxon/regex/charclass/CharacterClass;

    new-instance v1, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    invoke-direct {v1, v0}, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;-><init>(Lnet/sf/saxon/regex/charclass/CharacterClass;)V

    sput-object v1, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_S:Lnet/sf/saxon/regex/charclass/CharacterClass;

    new-instance v0, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    new-instance v1, Lcom/sunia/HTREnginev2/fod;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/fod;-><init>()V

    invoke-direct {v0, v1}, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;-><init>(Ljava/util/function/IntPredicate;)V

    sput-object v0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_i:Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    new-instance v1, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    invoke-direct {v1, v0}, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;-><init>(Lnet/sf/saxon/regex/charclass/CharacterClass;)V

    sput-object v1, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_I:Lnet/sf/saxon/regex/charclass/CharacterClass;

    new-instance v0, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    new-instance v1, Lcom/sunia/HTREnginev2/god;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/god;-><init>()V

    invoke-direct {v0, v1}, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;-><init>(Ljava/util/function/IntPredicate;)V

    sput-object v0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_c:Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    new-instance v1, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    invoke-direct {v1, v0}, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;-><init>(Lnet/sf/saxon/regex/charclass/CharacterClass;)V

    sput-object v1, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_C:Lnet/sf/saxon/regex/charclass/CharacterClass;

    const-string v0, "Nd"

    invoke-static {v0}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_d:Lnet/sf/saxon/regex/charclass/Categories$Category;

    new-instance v1, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    invoke-direct {v1, v0}, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;-><init>(Lnet/sf/saxon/regex/charclass/CharacterClass;)V

    sput-object v1, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_D:Lnet/sf/saxon/regex/charclass/CharacterClass;

    const-string v0, "P"

    invoke-static {v0}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/regex/charclass/Categories;->b:Lnet/sf/saxon/regex/charclass/Categories$Category;

    const-string v0, "Z"

    invoke-static {v0}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/regex/charclass/Categories;->c:Lnet/sf/saxon/regex/charclass/Categories$Category;

    const-string v0, "C"

    invoke-static {v0}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/regex/charclass/Categories;->d:Lnet/sf/saxon/regex/charclass/Categories$Category;

    new-instance v0, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    new-instance v1, Lcom/sunia/HTREnginev2/hod;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hod;-><init>()V

    invoke-direct {v0, v1}, Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;-><init>(Ljava/util/function/IntPredicate;)V

    sput-object v0, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_w:Lnet/sf/saxon/regex/charclass/PredicateCharacterClass;

    new-instance v1, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;

    invoke-direct {v1, v0}, Lnet/sf/saxon/regex/charclass/InverseCharacterClass;-><init>(Lnet/sf/saxon/regex/charclass/CharacterClass;)V

    sput-object v1, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_W:Lnet/sf/saxon/regex/charclass/CharacterClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/regex/charclass/Categories;->g(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/regex/charclass/Categories;->f(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/regex/charclass/Categories;->e(I)Z

    move-result p0

    return p0
.end method

.method public static d()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/regex/charclass/Categories;->a:Ljava/util/HashMap;

    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "categories.xml"

    invoke-interface {v0, v2, v1}, Lnet/sf/saxon/Platform;->locateResource(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lnet/sf/saxon/Configuration;

    invoke-direct {v1}, Lnet/sf/saxon/Configuration;-><init>()V

    new-instance v3, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v3}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {v3, v4}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lnet/sf/saxon/lib/ParseOptions;->setTreeModel(I)V

    :try_start_0
    new-instance v6, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v6, v0, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v3}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    const-string v3, "name"

    const-string v6, ""

    invoke-virtual {v2, v6, v3}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    const-string v7, "f"

    invoke-virtual {v3, v6, v7}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    const-string v8, "t"

    invoke-virtual {v7, v6, v8}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-instance v8, Lnet/sf/saxon/pattern/NameTest;

    const-string v9, "cat"

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    invoke-direct {v8, v5, v6, v9, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-interface {v0, v4, v8}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v4, v1

    check-cast v4, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lnet/sf/saxon/z/IntRangeSet;

    invoke-direct {v5}, Lnet/sf/saxon/z/IntRangeSet;-><init>()V

    sget-object v8, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v1, v8}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/om/NodeInfo;

    check-cast v8, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    invoke-virtual {v8, v3}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v9, v8}, Lnet/sf/saxon/z/IntRangeSet;->addRange(II)V

    goto :goto_1

    :cond_0
    sget-object v1, Lnet/sf/saxon/regex/charclass/Categories;->a:Ljava/util/HashMap;

    new-instance v8, Lnet/sf/saxon/regex/charclass/Categories$Category;

    new-instance v9, Lnet/sf/saxon/z/IntSetPredicate;

    invoke-direct {v9, v5}, Lnet/sf/saxon/z/IntSetPredicate;-><init>(Lnet/sf/saxon/z/IntSet;)V

    invoke-direct {v8, v4, v9}, Lnet/sf/saxon/regex/charclass/Categories$Category;-><init>(Ljava/lang/String;Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_5

    const-string v2, "CLMNPSZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lnet/sf/saxon/regex/charclass/Categories;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v2, :cond_2

    if-nez v4, :cond_3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/z/IntPredicateProxy;

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-static {v4, v5}, Lnet/sf/saxon/z/IntUnionPredicate;->makeUnion(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v4

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/regex/charclass/Categories;->a:Ljava/util/HashMap;

    new-instance v5, Lnet/sf/saxon/regex/charclass/Categories$Category;

    invoke-direct {v5, v2, v4}, Lnet/sf/saxon/regex/charclass/Categories$Category;-><init>(Ljava/lang/String;Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to build categories.xml"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to read categories.xml file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic e(I)Z
    .locals 1

    invoke-static {p0}, Lnet/sf/saxon/serialize/charcode/XMLCharacterData;->isNCNameStart11(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

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

.method public static synthetic f(I)Z
    .locals 1

    invoke-static {p0}, Lnet/sf/saxon/serialize/charcode/XMLCharacterData;->isNCName11(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

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

.method public static synthetic g(I)Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/regex/charclass/Categories;->b:Lnet/sf/saxon/regex/charclass/Categories$Category;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/sf/saxon/regex/charclass/Categories;->c:Lnet/sf/saxon/regex/charclass/Categories$Category;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/sf/saxon/regex/charclass/Categories;->d:Lnet/sf/saxon/regex/charclass/Categories$Category;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;
    .locals 2

    const-class v0, Lnet/sf/saxon/regex/charclass/Categories;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/sf/saxon/regex/charclass/Categories;->a:Ljava/util/HashMap;

    if-nez v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/regex/charclass/Categories;->d()V

    :cond_0
    sget-object v1, Lnet/sf/saxon/regex/charclass/Categories;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/regex/charclass/Categories$Category;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
