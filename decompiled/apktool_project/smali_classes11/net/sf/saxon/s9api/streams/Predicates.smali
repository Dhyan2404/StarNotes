.class public Lnet/sf/saxon/s9api/streams/Predicates;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 1

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XdmNode;->getNodeName()Lnet/sf/saxon/s9api/QName;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic B(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getNodeName()Lnet/sf/saxon/s9api/QName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic C(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/s9api/XdmArray;

    return p0
.end method

.method public static synthetic D(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/s9api/XdmAtomicValue;

    return p0
.end method

.method public static synthetic E(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/s9api/XdmFunctionItem;

    return p0
.end method

.method public static synthetic F(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/s9api/XdmMap;

    return p0
.end method

.method public static synthetic G(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    instance-of p0, p0, Lnet/sf/saxon/s9api/XdmNode;

    return p0
.end method

.method public static synthetic H(Ljava/util/regex/Pattern;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static synthetic I(Lnet/sf/saxon/s9api/XdmNodeKind;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/s9api/XdmNode;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/s9api/XdmNode;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getNodeKind()Lnet/sf/saxon/s9api/XdmNodeKind;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic J(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static K(Lnet/sf/saxon/s9api/XdmNodeKind;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmNodeKind;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/o6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/o6l;-><init>(Lnet/sf/saxon/s9api/XdmNodeKind;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/regex/Pattern;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->H(Ljava/util/regex/Pattern;Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static attributeEq(Ljava/lang/String;Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/n6l;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/n6l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic b(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/Predicates;->w(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lnet/sf/saxon/expr/sort/AtomicMatchKey;Lnet/sf/saxon/s9api/XdmAtomicValue;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->u(Lnet/sf/saxon/expr/sort/AtomicMatchKey;Lnet/sf/saxon/s9api/XdmAtomicValue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/s9api/streams/Predicates;->C(Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/s9api/streams/Predicates;->F(Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static empty(Lnet/sf/saxon/s9api/streams/Step;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">(",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;)",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/m6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/m6l;-><init>(Lnet/sf/saxon/s9api/streams/Step;)V

    return-object v0
.end method

.method public static eq(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/j6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/j6l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static eq(Lnet/sf/saxon/s9api/XdmAtomicValue;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmAtomicValue;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/f6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/f6l;-><init>(Lnet/sf/saxon/expr/sort/AtomicMatchKey;)V

    return-object v0
.end method

.method public static eq(Lnet/sf/saxon/s9api/streams/Step;Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">(",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lnet/sf/saxon/s9api/streams/Predicates;->eq(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->some(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static every(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">(",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/q6l;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/q6l;-><init>(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public static exists(Lnet/sf/saxon/s9api/streams/Step;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">(",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;)",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/h6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/h6l;-><init>(Lnet/sf/saxon/s9api/streams/Step;)V

    return-object v0
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/Predicates;->s(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/Predicates;->A(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->x(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static hasAttribute(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/t6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/t6l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasLocalName(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/r6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/r6l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "-",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/p6l;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/p6l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasNamespace(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/c6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/c6l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasType(Lnet/sf/saxon/s9api/ItemType;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/ItemType;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/k6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/k6l;-><init>(Lnet/sf/saxon/s9api/ItemType;)V

    return-object v0
.end method

.method public static synthetic i(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/s9api/streams/Predicates;->D(Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static isArray()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/e6l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e6l;-><init>()V

    return-object v0
.end method

.method public static isAtomic()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/i6l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/i6l;-><init>()V

    return-object v0
.end method

.method public static isAttribute()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->ATTRIBUTE:Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-static {v0}, Lnet/sf/saxon/s9api/streams/Predicates;->K(Lnet/sf/saxon/s9api/XdmNodeKind;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static isComment()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->COMMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-static {v0}, Lnet/sf/saxon/s9api/streams/Predicates;->K(Lnet/sf/saxon/s9api/XdmNodeKind;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static isDocument()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->DOCUMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-static {v0}, Lnet/sf/saxon/s9api/streams/Predicates;->K(Lnet/sf/saxon/s9api/XdmNodeKind;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static isElement()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->ELEMENT:Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-static {v0}, Lnet/sf/saxon/s9api/streams/Predicates;->K(Lnet/sf/saxon/s9api/XdmNodeKind;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static isFunction()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/g6l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/g6l;-><init>()V

    return-object v0
.end method

.method public static isMap()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/u6l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/u6l;-><init>()V

    return-object v0
.end method

.method public static isNamespace()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->NAMESPACE:Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-static {v0}, Lnet/sf/saxon/s9api/streams/Predicates;->K(Lnet/sf/saxon/s9api/XdmNodeKind;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static isNode()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/l6l;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/l6l;-><init>()V

    return-object v0
.end method

.method public static isProcessingInstruction()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-static {v0}, Lnet/sf/saxon/s9api/streams/Predicates;->K(Lnet/sf/saxon/s9api/XdmNodeKind;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static isText()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/s9api/XdmNodeKind;->TEXT:Lnet/sf/saxon/s9api/XdmNodeKind;

    invoke-static {v0}, Lnet/sf/saxon/s9api/streams/Predicates;->K(Lnet/sf/saxon/s9api/XdmNodeKind;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->B(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/s9api/streams/Predicates;->E(Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->y(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/s9api/streams/Predicates;->G(Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static matchesRegex(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/d6l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/d6l;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public static synthetic n(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->z(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z

    move-result p0

    return p0
.end method

.method public static not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lnet/sf/saxon/s9api/XdmNodeKind;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->I(Lnet/sf/saxon/s9api/XdmNodeKind;Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->t(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->v(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/Predicates;->J(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 0

    invoke-virtual {p2, p1}, Lnet/sf/saxon/s9api/XdmNode;->attribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static some(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">(",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/s6l;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/s6l;-><init>(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public static synthetic t(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic u(Lnet/sf/saxon/expr/sort/AtomicMatchKey;Lnet/sf/saxon/s9api/XdmAtomicValue;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmAtomicValue;->getUnderlyingValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Lnet/sf/saxon/s9api/streams/Step;Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lnet/sf/saxon/s9api/streams/Step;Lnet/sf/saxon/s9api/XdmItem;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static synthetic y(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/XdmNode;->attribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic z(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getNodeName()Lnet/sf/saxon/s9api/QName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
