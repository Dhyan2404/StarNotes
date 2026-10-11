.class public Lnet/sf/saxon/om/SequenceTool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INDETERMINATE_ORDERING:I = -0x80000000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/om/SequenceTool;->f(Ljava/lang/StringBuilder;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static asItem(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/Item;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Sequence contains more than one item"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static attributeMapFromList(Ljava/util/List;)Lnet/sf/saxon/om/AttributeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/AttributeInfo;",
            ">;)",
            "Lnet/sf/saxon/om/AttributeMap;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-static {p0}, Lnet/sf/saxon/om/SingletonAttributeMap;->of(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/SingletonAttributeMap;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    new-instance v0, Lnet/sf/saxon/om/SmallAttributeMap;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/SmallAttributeMap;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_2
    new-instance v0, Lnet/sf/saxon/om/LargeAttributeMap;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/LargeAttributeMap;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic b(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/om/SequenceTool;->d(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/om/SequenceTool;->e(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static convertToJava(Lnet/sf/saxon/om/Item;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/om/SequenceTool$a;->a:[I

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v1

    const/16 v2, 0x215

    if-eq v1, v2, :cond_3

    const/16 v2, 0x277

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return-object p0

    :pswitch_0
    check-cast v0, Lnet/sf/saxon/value/Base64BinaryValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Base64BinaryValue;->getBinaryValue()[B

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast v0, Lnet/sf/saxon/value/HexBinaryValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/HexBinaryValue;->getBinaryValue()[B

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast v0, Lnet/sf/saxon/value/DateValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast v0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/DateTimeValue;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/DoubleValue;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast v0, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/FloatValue;->getFloatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast v0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast v0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :cond_2
    :pswitch_8
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_4
    check-cast p0, Lnet/sf/saxon/value/AnyExternalObject;

    invoke-interface {p0}, Lnet/sf/saxon/value/AnyExternalObject;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    instance-of v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    if-eqz v0, :cond_6

    check-cast p0, Lnet/sf/saxon/tree/wrapper/VirtualNode;

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/VirtualNode;->getRealNode()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20f
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static synthetic d(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/high16 v0, 0x80000

    invoke-virtual {p0, p2, p1, v0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/StringBuilder;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static varargs fromItems([Lnet/sf/saxon/om/Item;)[Lnet/sf/saxon/om/Sequence;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getCardinality(Lnet/sf/saxon/om/Sequence;)I
    .locals 4

    instance-of v0, p0, Lnet/sf/saxon/om/Item;

    const/16 v1, 0x4000

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/om/GroundedValue;

    const/16 v2, 0x2000

    const v3, 0xc000

    if-eqz v0, :cond_3

    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    :goto_0
    return v1

    :catch_0
    return v3
.end method

.method public static getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/Item;

    invoke-static {p0, p1}, Lnet/sf/saxon/type/Type;->getItemType(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/om/GroundedValue;

    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    invoke-static {v1, p1}, Lnet/sf/saxon/type/Type;->getItemType(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1, p1}, Lnet/sf/saxon/type/Type;->getItemType(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    :goto_0
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_3
    if-nez v0, :cond_4

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public static getLength(Lnet/sf/saxon/om/Sequence;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 3
    instance-of v0, p0, Lnet/sf/saxon/om/GroundedValue;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Count;->count(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result p0

    return p0
.end method

.method public static getLength(Lnet/sf/saxon/om/SequenceIterator;)I
    .locals 1

    .line 1
    :try_start_0
    check-cast p0, Lnet/sf/saxon/expr/LastPositionFinder;

    invoke-interface {p0}, Lnet/sf/saxon/expr/LastPositionFinder;->getLength()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getLength() not available"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStringValue(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/str/UnicodeString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/bhm;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/bhm;-><init>(Lnet/sf/saxon/str/UnicodeBuilder;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static getUType(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/type/UType;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/Item;

    invoke-static {p0}, Lnet/sf/saxon/type/UType;->getUType(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/om/GroundedValue;

    if-eqz v0, :cond_3

    sget-object v0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lnet/sf/saxon/type/UType;->getUType(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    if-ne v0, v1, :cond_1

    :cond_2
    return-object v0

    :cond_3
    sget-object p0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public static hasLength(Lnet/sf/saxon/om/SequenceIterator;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/LastPositionFinder;

    invoke-interface {p0}, Lnet/sf/saxon/expr/LastPositionFinder;->getLength()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    move v0, v2

    :goto_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    if-ne v0, p1, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return v2

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isUnrepeatable(Lnet/sf/saxon/om/Sequence;)Z
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/om/LazySequence;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/value/Closure;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lnet/sf/saxon/value/MemoClosure;

    if-nez v0, :cond_0

    instance-of p0, p0, Lnet/sf/saxon/value/SingletonClosure;

    if-nez p0, :cond_0

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

.method public static itemAt(Lnet/sf/saxon/om/Sequence;I)Lnet/sf/saxon/om/Item;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    check-cast p0, Lnet/sf/saxon/om/Item;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static makeSequenceArray(I)[Lnet/sf/saxon/om/Sequence;
    .locals 0

    new-array p0, p0, [Lnet/sf/saxon/om/Sequence;

    return-object p0
.end method

.method public static process(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/chm;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/chm;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-void
.end method

.method public static sameLength(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/LastPositionFinder;

    invoke-interface {p0}, Lnet/sf/saxon/expr/LastPositionFinder;->getLength()I

    move-result p0

    invoke-static {p1, p0}, Lnet/sf/saxon/om/SequenceTool;->hasLength(Lnet/sf/saxon/om/SequenceIterator;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/LastPositionFinder;

    invoke-interface {p1}, Lnet/sf/saxon/expr/LastPositionFinder;->getLength()I

    move-result p1

    invoke-static {p0, p1}, Lnet/sf/saxon/om/SequenceTool;->hasLength(Lnet/sf/saxon/om/SequenceIterator;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static stringify(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/ahm;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ahm;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Lnet/sf/saxon/om/ItemConsumer<",
            "-",
            "Lnet/sf/saxon/om/Item;",
            ">;)V"
        }
    .end annotation

    :goto_0
    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/ItemConsumer;->accept(Lnet/sf/saxon/om/Item;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method

.method public static supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/LastPositionFinder;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/LastPositionFinder;

    invoke-interface {p0}, Lnet/sf/saxon/expr/LastPositionFinder;->supportsGetLength()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->from(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/value/SequenceExtent$Of;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceExtent$Of;->reduce()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public static toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lnet/sf/saxon/expr/AscendingRangeIterator;

    if-nez v0, :cond_0

    instance-of v0, p0, Lnet/sf/saxon/expr/DescendingRangeIterator;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/om/LazySequence;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method

.method public static toMemoSequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/EmptyIterator;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/om/MemoSequence;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/MemoSequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method
