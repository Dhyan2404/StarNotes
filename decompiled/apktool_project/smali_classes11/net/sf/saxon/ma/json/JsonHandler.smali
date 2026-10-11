.class public Lnet/sf/saxon/ma/json/JsonHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "\ufffd"


# instance fields
.field public a:Lnet/sf/saxon/expr/XPathContext;

.field public b:Lnet/sf/saxon/om/Function;

.field protected charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

.field public escape:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->b:Lnet/sf/saxon/om/Function;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/ma/json/JsonHandler;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/ma/json/JsonHandler;->b(I)Z

    move-result p0

    return p0
.end method

.method private synthetic b(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x7f

    if-lt p1, v0, :cond_1

    const/16 v0, 0x9f

    if-le p1, v0, :cond_3

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->charChecker:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {p0, p1}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x5c

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->b:Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/sf/saxon/om/Sequence;

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->b:Lnet/sf/saxon/om/Function;

    invoke-static {p0, p2, v0}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "\ufffd"

    return-object p0
.end method

.method public final d(Ljava/lang/StringBuilder;IILnet/sf/saxon/expr/XPathContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p3, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    const-string v3, "\\u"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int v4, p2, v2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    const-string v4, "0"

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lnet/sf/saxon/ma/json/JsonHandler;->c(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p4

    if-ne p4, p3, :cond_2

    :goto_2
    if-ge v1, p3, :cond_4

    add-int p4, p2, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, p4, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move p4, v1

    :goto_3
    if-ge p4, p3, :cond_3

    add-int v0, p2, p4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-ge v1, p3, :cond_4

    add-int p3, p2, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public endArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public endMap()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public getContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->a:Lnet/sf/saxon/expr/XPathContext;

    return-object p0
.end method

.method public getResult()Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleInvalidCharacters(Ljava/lang/StringBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v0}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isHighSurrogate(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isLowSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonHandler;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p0, p1, v1, v4, v2}, Lnet/sf/saxon/ma/json/JsonHandler;->d(Ljava/lang/StringBuilder;IILnet/sf/saxon/expr/XPathContext;)V

    goto :goto_2

    :cond_1
    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isLowSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isHighSurrogate(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4, v2}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->combinePair(CC)I

    move-result v2

    invoke-interface {v0, v2}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x2

    iget-object v4, p0, Lnet/sf/saxon/ma/json/JsonHandler;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p0, p1, v3, v2, v4}, Lnet/sf/saxon/ma/json/JsonHandler;->d(Ljava/lang/StringBuilder;IILnet/sf/saxon/expr/XPathContext;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonHandler;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p0, p1, v1, v4, v2}, Lnet/sf/saxon/ma/json/JsonHandler;->d(Ljava/lang/StringBuilder;IILnet/sf/saxon/expr/XPathContext;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0, v2}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonHandler;->a:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p0, p1, v1, v4, v2}, Lnet/sf/saxon/ma/json/JsonHandler;->d(Ljava/lang/StringBuilder;IILnet/sf/saxon/expr/XPathContext;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public markAsEscaped(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public reEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->escape:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/tri;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tri;-><init>(Lnet/sf/saxon/ma/json/JsonHandler;)V

    const/4 p0, 0x1

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/ma/json/JsonReceiver;->escape(Ljava/lang/String;ZLjava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/json/JsonHandler;->handleInvalidCharacters(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setContext(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/json/JsonHandler;->a:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method

.method public setFallbackFunction(Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "fallback"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/Sequence;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/om/Function;

    const-string v1, "FOJS0005"

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/om/Function;

    iput-object p1, p0, Lnet/sf/saxon/ma/json/JsonHandler;->b:Lnet/sf/saxon/om/Function;

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v0}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {p1, v0, v2}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonHandler;->b:Lnet/sf/saxon/om/Function;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/type/SpecificFunctionType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Fallback function does not match the required type"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Fallback function must have arity=1"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Value of option \'fallback\' is not a function"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public setKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startMap()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public writeNull()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public writeNumeric(Ljava/lang/String;Lnet/sf/saxon/value/AtomicValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method
