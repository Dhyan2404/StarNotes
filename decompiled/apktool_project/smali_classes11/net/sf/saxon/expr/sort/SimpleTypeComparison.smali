.class public Lnet/sf/saxon/expr/sort/SimpleTypeComparison;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/EqualityMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/expr/sort/EqualityMatcher<",
        "Lnet/sf/saxon/om/AtomicSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lnet/sf/saxon/expr/sort/SimpleTypeComparison;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->a:Lnet/sf/saxon/expr/sort/SimpleTypeComparison;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/SimpleTypeComparison;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->a:Lnet/sf/saxon/expr/sort/SimpleTypeComparison;

    return-object v0
.end method


# virtual methods
.method public compareItems(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 5

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x53

    const/16 v2, 0x5a

    if-ne p0, v2, :cond_0

    move p0, v1

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/high16 v3, -0x80000000

    if-eq p0, v1, :cond_2

    return v3

    :cond_2
    const/16 v1, 0x32

    const/4 v4, 0x0

    if-eq p0, v1, :cond_12

    const/16 v1, 0x44

    if-eq p0, v1, :cond_10

    const/16 v1, 0x58

    if-eq p0, v1, :cond_e

    if-eq p0, v2, :cond_d

    const/16 v1, 0x41

    if-eq p0, v1, :cond_c

    const/16 v1, 0x42

    if-eq p0, v1, :cond_a

    const/4 v1, -0x1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/AtomicValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v3, v4

    :cond_3
    return v3

    :pswitch_1
    check-cast p1, Lnet/sf/saxon/value/TimeValue;

    check-cast p2, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/TimeValue;->getSchemaComparable()Lnet/sf/saxon/value/TimeValue$TimeComparable;

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/value/TimeValue;->getSchemaComparable()Lnet/sf/saxon/value/TimeValue$TimeComparable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/TimeValue$TimeComparable;->compareTo(Lnet/sf/saxon/value/TimeValue$TimeComparable;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lnet/sf/saxon/value/DurationValue;

    check-cast p2, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DurationValue;->getSchemaComparable()Lnet/sf/saxon/value/DurationValue$DurationComparable;

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/value/DurationValue;->getSchemaComparable()Lnet/sf/saxon/value/DurationValue$DurationComparable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->compareTo(Lnet/sf/saxon/value/DurationValue$DurationComparable;)I

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/AtomicValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v3, v4

    :cond_4
    return v3

    :pswitch_4
    check-cast p1, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DoubleValue;->getDoubleValue()D

    move-result-wide p0

    check-cast p2, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/DoubleValue;->getDoubleValue()D

    move-result-wide v2

    cmpl-double p2, p0, v2

    if-nez p2, :cond_5

    return v4

    :cond_5
    cmpg-double p0, p0, v2

    if-gez p0, :cond_6

    move v0, v1

    :cond_6
    return v0

    :pswitch_5
    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/AtomicValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v3, v4

    :cond_7
    return v3

    :pswitch_6
    check-cast p1, Lnet/sf/saxon/value/DateTimeValue;

    check-cast p2, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->getSchemaComparable()Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/value/DateTimeValue;->getSchemaComparable()Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->compareTo(Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;)I

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/FloatValue;->getFloatValue()F

    move-result p0

    check-cast p2, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/FloatValue;->getFloatValue()F

    move-result p1

    cmpl-float p2, p0, p1

    if-nez p2, :cond_8

    return v4

    :cond_8
    cmpg-float p0, p0, p1

    if-gez p0, :cond_9

    move v0, v1

    :cond_9
    return v0

    :cond_a
    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/AtomicValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    move v3, v4

    :cond_b
    return v3

    :cond_c
    :pswitch_8
    check-cast p1, Lnet/sf/saxon/value/GDateValue;

    check-cast p2, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/GDateValue;->getSchemaComparable()Lnet/sf/saxon/value/GDateValue$GDateComparable;

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/value/GDateValue;->getSchemaComparable()Lnet/sf/saxon/value/GDateValue$GDateComparable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/GDateValue$GDateComparable;->compareTo(Lnet/sf/saxon/value/GDateValue$GDateComparable;)I

    move-result p0

    return p0

    :cond_d
    :pswitch_9
    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/CodepointCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0

    :cond_e
    check-cast p1, Lnet/sf/saxon/value/HexBinaryValue;

    check-cast p2, Lnet/sf/saxon/value/HexBinaryValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/HexBinaryValue;->getBinaryValue()[B

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/value/HexBinaryValue;->getBinaryValue()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_f

    move v3, v4

    :cond_f
    return v3

    :cond_10
    instance-of p0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz p0, :cond_11

    instance-of p0, p2, Lnet/sf/saxon/value/Int64Value;

    if-eqz p0, :cond_11

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide p0

    check-cast p2, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p2}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_11
    check-cast p1, Lnet/sf/saxon/value/DecimalValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/DecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    check-cast p2, Lnet/sf/saxon/value/DecimalValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/DecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0

    :cond_12
    check-cast p1, Lnet/sf/saxon/value/Base64BinaryValue;

    check-cast p2, Lnet/sf/saxon/value/Base64BinaryValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Base64BinaryValue;->getBinaryValue()[B

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/value/Base64BinaryValue;->getBinaryValue()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_13

    move v3, v4

    :cond_13
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x51
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public compareSequences(Lnet/sf/saxon/om/AtomicSequence;Lnet/sf/saxon/om/AtomicSequence;)I
    .locals 4

    invoke-interface {p1}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v1}, Lnet/sf/saxon/om/AtomicSequence;->itemAt(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-interface {p2, v1}, Lnet/sf/saxon/om/AtomicSequence;->itemAt(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->compareItems(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p1

    invoke-interface {p2}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p2

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v3

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    return v1

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    if-nez v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->compareItems(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0
.end method

.method public bridge synthetic equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/om/AtomicSequence;

    check-cast p2, Lnet/sf/saxon/om/AtomicSequence;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->equal(Lnet/sf/saxon/om/AtomicSequence;Lnet/sf/saxon/om/AtomicSequence;)Z

    move-result p0

    return p0
.end method

.method public equal(Lnet/sf/saxon/om/AtomicSequence;Lnet/sf/saxon/om/AtomicSequence;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->compareSequences(Lnet/sf/saxon/om/AtomicSequence;Lnet/sf/saxon/om/AtomicSequence;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equalOrIdentical(Lnet/sf/saxon/om/AtomicSequence;Lnet/sf/saxon/om/AtomicSequence;)Z
    .locals 5

    invoke-interface {p1}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-interface {p2}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    invoke-interface {p2}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->compareItems(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p1

    invoke-interface {p2}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v3

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    return v2

    :cond_4
    if-eqz v0, :cond_6

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->compareItems(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method public bridge synthetic hash(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/om/AtomicSequence;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->hash(Lnet/sf/saxon/om/AtomicSequence;)I

    move-result p0

    return p0
.end method

.method public hash(Lnet/sf/saxon/om/AtomicSequence;)I
    .locals 4

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const p1, 0x56825682

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    .line 3
    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x32

    if-eq v1, v3, :cond_5

    const/16 v3, 0x44

    if-eq v1, v3, :cond_4

    const/16 v3, 0x58

    if-eq v1, v3, :cond_3

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_2

    const/16 v3, 0x41

    if-eq v1, v3, :cond_1

    const/16 v3, 0x42

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Alphacode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_0
    check-cast v0, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->hashCode()I

    move-result v0

    goto :goto_1

    .line 6
    :pswitch_1
    check-cast v0, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/TimeValue;->getSchemaComparable()Lnet/sf/saxon/value/TimeValue$TimeComparable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/TimeValue$TimeComparable;->hashCode()I

    move-result v0

    goto :goto_1

    .line 7
    :pswitch_2
    check-cast v0, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/DurationValue;->getSchemaComparable()Lnet/sf/saxon/value/DurationValue$DurationComparable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/DurationValue$DurationComparable;->hashCode()I

    move-result v0

    goto :goto_1

    .line 8
    :pswitch_3
    check-cast v0, Lnet/sf/saxon/value/QualifiedNameValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result v0

    goto :goto_1

    .line 9
    :pswitch_4
    check-cast v0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/DateTimeValue;->getSchemaComparable()Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/DateTimeValue$DateTimeComparable;->hashCode()I

    move-result v0

    goto :goto_1

    .line 10
    :cond_0
    check-cast v0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/BooleanValue;->hashCode()I

    move-result v0

    goto :goto_1

    .line 11
    :cond_1
    :pswitch_5
    check-cast v0, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue;->getSchemaComparable()Lnet/sf/saxon/value/GDateValue$GDateComparable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/GDateValue$GDateComparable;->hashCode()I

    move-result v0

    goto :goto_1

    .line 12
    :cond_2
    :pswitch_6
    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->hashCode()I

    move-result v0

    goto :goto_1

    .line 13
    :cond_3
    check-cast v0, Lnet/sf/saxon/value/HexBinaryValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/HexBinaryValue;->getBinaryValue()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_1

    .line 14
    :cond_4
    :pswitch_7
    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->hashCode()I

    move-result v0

    goto :goto_1

    .line 15
    :cond_5
    check-cast v0, Lnet/sf/saxon/value/Base64BinaryValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Base64BinaryValue;->getBinaryValue()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_1
    xor-int/2addr p1, v0

    shl-int/2addr p1, v2

    goto/16 :goto_0

    :cond_6
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_4
        :pswitch_3
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x51
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
