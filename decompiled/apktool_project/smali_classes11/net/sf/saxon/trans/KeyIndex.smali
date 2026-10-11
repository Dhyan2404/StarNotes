.class public Lnet/sf/saxon/trans/KeyIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trans/KeyIndex$a;,
        Lnet/sf/saxon/trans/KeyIndex$Status;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lnet/sf/saxon/type/UType;

.field public final c:Lnet/sf/saxon/type/UType;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/StringValue;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lnet/sf/saxon/lib/ConversionRules;

.field public f:I

.field public g:Lnet/sf/saxon/lib/StringCollator;

.field public final h:J

.field public i:Lnet/sf/saxon/trans/KeyIndex$Status;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    iput-object v0, p0, Lnet/sf/saxon/trans/KeyIndex;->b:Lnet/sf/saxon/type/UType;

    sget-object v0, Lnet/sf/saxon/type/UType;->STRING_LIKE:Lnet/sf/saxon/type/UType;

    iput-object v0, p0, Lnet/sf/saxon/trans/KeyIndex;->c:Lnet/sf/saxon/type/UType;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sf/saxon/trans/KeyIndex;->h:J

    sget-object p1, Lnet/sf/saxon/trans/KeyIndex$Status;->UNDER_CONSTRUCTION:Lnet/sf/saxon/trans/KeyIndex$Status;

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyIndex;->i:Lnet/sf/saxon/trans/KeyIndex$Status;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/trans/KeyIndex;Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/KeyIndex;->i(Ljava/util/List;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContextMajor;ZLnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sf/saxon/trans/KeyIndex;->h(Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContextMajor;ZLnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/trans/KeyIndex;->j(Ljava/util/List;Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static g(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/type/UType;->STRING_LIKE:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/lib/StringCollator;->getCollationKey(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    return-object p0
.end method

.method private synthetic h(Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContextMajor;ZLnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p4, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p4, p1, p2, p3}, Lnet/sf/saxon/trans/KeyIndex;->k(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContext;Z)V

    return-void
.end method

.method private synthetic i(Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    iget-object v0, p0, Lnet/sf/saxon/trans/KeyIndex;->g:Lnet/sf/saxon/lib/StringCollator;

    iget p0, p0, Lnet/sf/saxon/trans/KeyIndex;->f:I

    invoke-static {p2, v0, p0}, Lnet/sf/saxon/trans/KeyIndex;->g(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic j(Ljava/util/List;Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p3, Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p3, p1, p2}, Lnet/sf/saxon/trans/KeyIndex;->g(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public buildIndex(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyDefinitions()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/KeyDefinition;

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {p0, p2, v2, p3, v3}, Lnet/sf/saxon/trans/KeyIndex;->e(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContext;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/trans/KeyIndex;->e:Lnet/sf/saxon/lib/ConversionRules;

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result p2

    iput p2, p0, Lnet/sf/saxon/trans/KeyIndex;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/trans/KeyDefinition;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/KeyDefinition;->getCollation()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyIndex;->g:Lnet/sf/saxon/lib/StringCollator;

    return-void
.end method

.method public final d(Lnet/sf/saxon/expr/sort/AtomicMatchKey;Lnet/sf/saxon/om/NodeInfo;Z)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :goto_0
    const/4 p0, 0x1

    if-eqz p3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p2, :cond_6

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-static {}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p0

    :goto_1
    const/4 v0, 0x0

    if-ltz p3, :cond_5

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p1, p2, v2}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->compare(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)I

    move-result v2

    if-ltz v2, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr p3, p0

    invoke-interface {v1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_5
    move p0, v0

    :goto_2
    if-nez p0, :cond_6

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final e(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContext;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/trans/KeyDefinition;->getMatch()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p3

    invoke-virtual {p3, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v1

    invoke-virtual {p3, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    const/16 v1, 0xa9

    invoke-virtual {p3, v1}, Lnet/sf/saxon/expr/XPathContextMinor;->setTemporaryOutputState(I)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_0
    invoke-virtual {v0, p1, p3}, Lnet/sf/saxon/pattern/Pattern;->selectNodes(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/dsi;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sunia/HTREnginev2/dsi;-><init>(Lnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContextMajor;Z)V

    invoke-static {p1, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p0, :cond_1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p1}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p1, Ljava/util/List;

    new-instance p0, Lnet/sf/saxon/tree/iter/NodeListIterator;

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/iter/NodeListIterator;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getComposite(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/sunia/HTREnginev2/csi;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/csi;-><init>(Lnet/sf/saxon/trans/KeyIndex;Ljava/util/List;)V

    invoke-static {p1, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    iget-object p1, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    new-instance v1, Lnet/sf/saxon/trans/KeyIndex$a;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trans/KeyIndex$a;-><init>(Lnet/sf/saxon/trans/KeyIndex;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/KeyIndex;->f(Ljava/lang/Object;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public getNodes(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/KeyIndex;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/trans/KeyIndex;->c:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/KeyIndex;->reindexUntypedValues(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/trans/KeyIndex;->b:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v3}, Lnet/sf/saxon/type/PrimitiveUType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/AtomicType;

    iget-object v4, p0, Lnet/sf/saxon/trans/KeyIndex;->e:Lnet/sf/saxon/lib/ConversionRules;

    invoke-static {p1, v3, v4}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    iget-object v5, p0, Lnet/sf/saxon/trans/KeyIndex;->g:Lnet/sf/saxon/lib/StringCollator;

    iget v6, p0, Lnet/sf/saxon/trans/KeyIndex;->f:I

    invoke-static {v3, v5, v6}, Lnet/sf/saxon/trans/KeyIndex;->g(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    instance-of v4, v3, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v4, :cond_2

    check-cast v3, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    check-cast v3, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    const/4 p1, 0x1

    if-le v2, p1, :cond_4

    new-instance p1, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    move-object p0, p1

    :cond_4
    return-object p0

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    iget-object v1, p0, Lnet/sf/saxon/trans/KeyIndex;->g:Lnet/sf/saxon/lib/StringCollator;

    iget v2, p0, Lnet/sf/saxon/trans/KeyIndex;->f:I

    invoke-static {p1, v1, v2}, Lnet/sf/saxon/trans/KeyIndex;->g(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/KeyIndex;->f(Ljava/lang/Object;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Lnet/sf/saxon/trans/KeyIndex$Status;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyIndex;->i:Lnet/sf/saxon/trans/KeyIndex$Status;

    return-object p0
.end method

.method public getUnderlyingMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    return-object p0
.end method

.method public isCreatedInThisThread()Z
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/trans/KeyIndex;->h:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final k(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContext;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v0, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-interface {p3, v0}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    invoke-virtual {p2}, Lnet/sf/saxon/trans/KeyDefinition;->getCollation()Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v1

    invoke-virtual {p2}, Lnet/sf/saxon/trans/KeyDefinition;->getUse()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p3}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p3

    invoke-virtual {p2}, Lnet/sf/saxon/trans/KeyDefinition;->isComposite()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/sunia/HTREnginev2/esi;

    invoke-direct {v2, p2, v0, v1}, Lcom/sunia/HTREnginev2/esi;-><init>(Ljava/util/List;Lnet/sf/saxon/lib/StringCollator;I)V

    invoke-static {p3, v2}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    new-instance p3, Lnet/sf/saxon/trans/KeyIndex$a;

    invoke-direct {p3, p0, p2}, Lnet/sf/saxon/trans/KeyIndex$a;-><init>(Lnet/sf/saxon/trans/KeyIndex;Ljava/util/List;)V

    invoke-virtual {p0, p3, p1, p4}, Lnet/sf/saxon/trans/KeyIndex;->d(Lnet/sf/saxon/expr/sort/AtomicMatchKey;Lnet/sf/saxon/om/NodeInfo;Z)V

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p3}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/trans/KeyIndex;->b:Lnet/sf/saxon/type/UType;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lnet/sf/saxon/trans/KeyIndex;->b:Lnet/sf/saxon/type/UType;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/saxon/trans/KeyIndex;->b:Lnet/sf/saxon/type/UType;

    :cond_2
    invoke-static {v2, v0, v1}, Lnet/sf/saxon/trans/KeyIndex;->g(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/type/UType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/UType;

    invoke-virtual {v3, v5}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lnet/sf/saxon/trans/KeyDefinition;->isConvertUntypedToOther()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/sf/saxon/trans/KeyIndex;->d:Ljava/util/List;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0x14

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lnet/sf/saxon/trans/KeyIndex;->d:Ljava/util/List;

    :cond_3
    iget-object v3, p0, Lnet/sf/saxon/trans/KeyIndex;->d:Ljava/util/List;

    check-cast v2, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0, v4, p1, p4}, Lnet/sf/saxon/trans/KeyIndex;->d(Lnet/sf/saxon/expr/sort/AtomicMatchKey;Lnet/sf/saxon/om/NodeInfo;Z)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public reindexUntypedValues(Lnet/sf/saxon/type/BuiltInAtomicType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->STRING_LIKE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lnet/sf/saxon/type/UType;->NUMERIC:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/trans/KeyIndex;->e:Lnet/sf/saxon/lib/ConversionRules;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/trans/KeyIndex;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/StringValue;

    iget-object v2, p0, Lnet/sf/saxon/trans/KeyIndex;->g:Lnet/sf/saxon/lib/StringCollator;

    iget v3, p0, Lnet/sf/saxon/trans/KeyIndex;->f:I

    invoke-static {v1, v2, v3}, Lnet/sf/saxon/trans/KeyIndex;->g(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/trans/KeyIndex;->g:Lnet/sf/saxon/lib/StringCollator;

    iget v4, p0, Lnet/sf/saxon/trans/KeyIndex;->f:I

    invoke-static {v1, v3, v4}, Lnet/sf/saxon/trans/KeyIndex;->g(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/trans/KeyIndex;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/om/NodeInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, v1, v2, v4}, Lnet/sf/saxon/trans/KeyIndex;->d(Lnet/sf/saxon/expr/sort/AtomicMatchKey;Lnet/sf/saxon/om/NodeInfo;Z)V

    goto :goto_0

    :cond_3
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, v1, v3, v4}, Lnet/sf/saxon/trans/KeyIndex;->d(Lnet/sf/saxon/expr/sort/AtomicMatchKey;Lnet/sf/saxon/om/NodeInfo;Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setStatus(Lnet/sf/saxon/trans/KeyIndex$Status;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/KeyIndex;->i:Lnet/sf/saxon/trans/KeyIndex$Status;

    return-void
.end method
