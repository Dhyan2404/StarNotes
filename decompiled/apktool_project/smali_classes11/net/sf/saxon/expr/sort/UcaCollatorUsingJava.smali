.class public Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/SubstringMatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$b;,
        Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$f;,
        Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$d;,
        Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$c;,
        Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;
    }
.end annotation


# static fields
.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/text/RuleBasedCollator;

.field public c:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;

.field public d:Ljava/util/Properties;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "fallback"

    const-string v1, "lang"

    const-string v2, "version"

    const-string v3, "strength"

    const-string v4, "alternate"

    const-string v5, "backwards"

    const-string v6, "normalization"

    const-string v7, "maxVariable"

    const-string v8, "caseLevel"

    const-string v9, "caseFirst"

    const-string v10, "numeric"

    const-string v11, "reorder"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->e:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->f:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->a:Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->g(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->h(Ljava/util/Properties;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->f()V

    invoke-virtual {p2}, Ljava/text/CollationElementIterator;->next()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    :goto_0
    move v3, v2

    :cond_1
    iget-object v4, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;

    invoke-interface {v4, v3, v0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;->a(II)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->next()I

    move-result v3

    if-ne v3, v2, :cond_1

    return v4

    :cond_2
    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->next()I

    move-result v3

    if-ne v3, v2, :cond_5

    return v1

    :cond_3
    if-eqz p3, :cond_4

    sub-int/2addr v0, v1

    aput v0, p3, v4

    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result p0

    aput p0, p3, v1

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/text/CollationElementIterator;->setOffset(I)V

    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result v3

    if-eq v3, v0, :cond_6

    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->next()I

    :cond_6
    invoke-virtual {p2}, Ljava/text/CollationElementIterator;->reset()V

    invoke-virtual {p2}, Ljava/text/CollationElementIterator;->next()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;)Z
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->f()V

    :cond_0
    invoke-virtual {p2}, Ljava/text/CollationElementIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/text/CollationElementIterator;->next()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;

    invoke-interface {v1, v2, v0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v3
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in UCA Collation URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FOCH0002"

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public contains(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->getRuleBasedCollator()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requested was:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c(Ljava/lang/String;)V

    return-void
.end method

.method public endsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->getRuleBasedCollator()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z

    move-result p0

    return p0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->getStrength()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$b;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$b;-><init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$a;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$f;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$f;-><init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$a;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$d;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$d;-><init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$a;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;

    goto :goto_0

    :cond_2
    new-instance v0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$c;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$c;-><init>(Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$a;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c:Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava$e;

    :cond_3
    :goto_0
    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/util/Properties;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/AnyURIValue;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->f:Ljava/util/Set;

    aget-object v8, v6, v4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v6, v4

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    aget-object v7, v6, v4

    aget-object v6, v6, v2

    invoke-virtual {v1, v7, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "fallback"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "no"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    const-string v2, "unknown parameters:"

    goto :goto_1

    :cond_2
    const-string v2, "unknown parameter:"

    :goto_1
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c(Ljava/lang/String;)V

    :cond_4
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/sort/CollationMatchKey;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/CollationMatchKey;-><init>(Ljava/text/CollationKey;)V

    return-object p1
.end method

.method public getCollationURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getJavaCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p0, p1}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p0

    return-object p0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->d:Ljava/util/Properties;

    return-object p0
.end method

.method public getRuleBasedCollator()Ljava/text/RuleBasedCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    return-object p0
.end method

.method public getStrength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p0}, Ljava/text/Collator;->getStrength()I

    move-result p0

    return p0
.end method

.method public final h(Ljava/util/Properties;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->d:Ljava/util/Properties;

    const-string v0, "fallback"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    const-string v3, "no"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "yes|no"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "fallback=no is not supported in Saxon-HE"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "lang"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToLanguage;

    invoke-static {v1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v7, "a valid language code"

    invoke-virtual {p0, v0, v7}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v5

    array-length v7, v0

    const-string v8, ""

    if-le v7, v6, :cond_3

    aget-object v7, v0, v6

    goto :goto_1

    :cond_3
    move-object v7, v8

    :goto_1
    array-length v9, v0

    if-le v9, v4, :cond_4

    aget-object v8, v0, v4

    :cond_4
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    :cond_5
    const-string v0, "strength"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v7, 0x3

    const/4 v8, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "identical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v8, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v8, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v8, 0x7

    goto :goto_2

    :sswitch_3
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v8, 0x6

    goto :goto_2

    :sswitch_4
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v8, 0x5

    goto :goto_2

    :sswitch_5
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v8, 0x4

    goto :goto_2

    :sswitch_6
    const-string v1, "primary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    move v8, v7

    goto :goto_2

    :sswitch_7
    const-string v1, "secondary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    move v8, v4

    goto :goto_2

    :sswitch_8
    const-string v1, "tertiary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    move v8, v6

    goto :goto_2

    :sswitch_9
    const-string v1, "quaternary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    move v8, v5

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->setStrength(I)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->setStrength(I)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->setStrength(I)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->setStrength(I)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->setStrength(I)V

    :cond_10
    :goto_3
    const-string v0, "normalization"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p0, v6}, Ljava/text/Collator;->setDecomposition(I)V

    goto :goto_4

    :cond_11
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p0, v5}, Ljava/text/Collator;->setDecomposition(I)V

    :cond_12
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60d61282 -> :sswitch_9
        -0x4605f7ae -> :sswitch_8
        -0x30bb8e8c -> :sswitch_7
        -0x12c2f1fe -> :sswitch_6
        0x31 -> :sswitch_5
        0x32 -> :sswitch_4
        0x33 -> :sswitch_3
        0x34 -> :sswitch_2
        0x35 -> :sswitch_1
        0x52564b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p0}, Ljava/text/RuleBasedCollator;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i(I)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/text/CollationElementIterator;->secondaryOrder(I)S

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/text/CollationElementIterator;->tertiaryOrder(I)S

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setStrength(I)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b:Ljava/text/RuleBasedCollator;

    invoke-virtual {p0, p1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method

.method public startsWith(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->getRuleBasedCollator()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->b(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;)Z

    move-result p0

    return p0
.end method

.method public substringAfter(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->getRuleBasedCollator()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v0, v2}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    aget p0, v0, p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public substringBefore(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->getRuleBasedCollator()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v0, v2}, Lnet/sf/saxon/expr/sort/UcaCollatorUsingJava;->a(Ljava/text/CollationElementIterator;Ljava/text/CollationElementIterator;[IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    aget p0, v0, v2

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method
