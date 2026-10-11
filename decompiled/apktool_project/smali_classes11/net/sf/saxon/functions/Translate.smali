.class public Lnet/sf/saxon/functions/Translate;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;
.implements Lnet/sf/saxon/functions/StatefulSystemFunction;


# instance fields
.field public h:Lnet/sf/saxon/z/IntToIntMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/Translate;->h:Lnet/sf/saxon/z/IntToIntMap;

    return-void
.end method

.method public static a(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;)Lnet/sf/saxon/z/IntToIntMap;
    .locals 7

    new-instance v0, Lnet/sf/saxon/z/IntToIntHashMap;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->length32()I

    move-result v1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/z/IntToIntHashMap;-><init>(ID)V

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v5

    invoke-interface {v0, v5}, Lnet/sf/saxon/z/IntToIntMap;->contains(I)Z

    move-result v6

    if-nez v6, :cond_1

    cmp-long v6, v3, v1

    if-ltz v6, :cond_0

    const/4 v6, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/StringValue;->getContent()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v6

    :goto_1
    invoke-interface {v0, v5, v6}, Lnet/sf/saxon/z/IntToIntMap;->put(II)V

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static translate(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;)Lnet/sf/saxon/value/StringValue;
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Lnet/sf/saxon/functions/Translate;->a(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;)Lnet/sf/saxon/z/IntToIntMap;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/Translate;->translateUsingMap(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/z/IntToIntMap;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->length32()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p2}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v1

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v3

    invoke-virtual {p1}, Lnet/sf/saxon/value/StringValue;->getContent()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->indexOf(IJ)J

    move-result-wide v7

    cmp-long v4, v7, v1

    if-gez v4, :cond_1

    cmp-long v4, v7, v5

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lnet/sf/saxon/value/StringValue;->getContent()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_3
    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method

.method public static translateUsingMap(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/z/IntToIntMap;)Lnet/sf/saxon/value/StringValue;
    .locals 4

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->length32()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-interface {p1, v1}, Lnet/sf/saxon/z/IntToIntMap;->get(I)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/Translate;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/StringValue;

    if-nez p1, :cond_0

    .line 3
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 4
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/Translate;->h:Lnet/sf/saxon/z/IntToIntMap;

    if-eqz p0, :cond_1

    .line 5
    invoke-static {p1, p0}, Lnet/sf/saxon/functions/Translate;->translateUsingMap(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/z/IntToIntMap;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x1

    .line 6
    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    const/4 v0, 0x2

    .line 7
    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    .line 8
    invoke-static {p1, p0, p2}, Lnet/sf/saxon/functions/Translate;->translate(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lnet/sf/saxon/functions/SystemFunction;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/Translate;->copy()Lnet/sf/saxon/functions/Translate;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lnet/sf/saxon/functions/Translate;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/Translate;

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/functions/Translate;->h:Lnet/sf/saxon/z/IntToIntMap;

    iput-object p0, v0, Lnet/sf/saxon/functions/Translate;->h:Lnet/sf/saxon/z/IntToIntMap;

    return-object v0
.end method

.method public varargs fixArguments([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    const/4 v0, 0x1

    aget-object v0, p1, v0

    instance-of v1, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aget-object v2, p1, v1

    instance-of v2, v2, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v2, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object v0

    aget-object p1, p1, v1

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/sf/saxon/functions/Translate;->a(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;)Lnet/sf/saxon/z/IntToIntMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/Translate;->h:Lnet/sf/saxon/z/IntToIntMap;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "TranslateCompiler"

    return-object p0
.end method

.method public getStaticMap()Lnet/sf/saxon/z/IntToIntMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Translate;->h:Lnet/sf/saxon/z/IntToIntMap;

    return-object p0
.end method
