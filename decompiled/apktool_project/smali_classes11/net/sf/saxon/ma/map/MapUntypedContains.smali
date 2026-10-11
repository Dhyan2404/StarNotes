.class public Lnet/sf/saxon/ma/map/MapUntypedContains;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    const/4 p1, 0x0

    aget-object v0, p2, p1

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/MapItem;

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/ma/map/MapItem;->getKeyUType()Lnet/sf/saxon/type/UType;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/PrimitiveUType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v2, p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/type/StringConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v3, :cond_1

    sget-object v2, Lnet/sf/saxon/type/PrimitiveUType;->DECIMAL:Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/type/StringConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    return-object p0

    :cond_1
    invoke-interface {v2}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    return-object p0

    :cond_4
    invoke-virtual {v0, p2}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-eqz p0, :cond_5

    move p1, v1

    :cond_5
    invoke-static {p1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method
