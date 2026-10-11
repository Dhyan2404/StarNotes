.class public abstract Lnet/sf/saxon/expr/PJConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/PJConverter$General;,
        Lnet/sf/saxon/expr/PJConverter$Atomic;,
        Lnet/sf/saxon/expr/PJConverter$CalendarValueToCalendar;,
        Lnet/sf/saxon/expr/PJConverter$DateValueToLocalDate;,
        Lnet/sf/saxon/expr/PJConverter$CalendarValueToDate;,
        Lnet/sf/saxon/expr/PJConverter$CalendarValueToLocalDateTime;,
        Lnet/sf/saxon/expr/PJConverter$CalendarValueToOffsetDateTime;,
        Lnet/sf/saxon/expr/PJConverter$CalendarValueToZonedDateTime;,
        Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;,
        Lnet/sf/saxon/expr/PJConverter$QualifiedNameValueToQName;,
        Lnet/sf/saxon/expr/PJConverter$AnyURIValueToURL;,
        Lnet/sf/saxon/expr/PJConverter$AnyURIValueToURI;,
        Lnet/sf/saxon/expr/PJConverter$NumericValueToFloat;,
        Lnet/sf/saxon/expr/PJConverter$NumericValueToDouble;,
        Lnet/sf/saxon/expr/PJConverter$NumericValueToBigDecimal;,
        Lnet/sf/saxon/expr/PJConverter$IntegerValueToChar;,
        Lnet/sf/saxon/expr/PJConverter$IntegerValueToByte;,
        Lnet/sf/saxon/expr/PJConverter$IntegerValueToShort;,
        Lnet/sf/saxon/expr/PJConverter$IntegerValueToInt;,
        Lnet/sf/saxon/expr/PJConverter$IntegerValueToLong;,
        Lnet/sf/saxon/expr/PJConverter$IntegerValueToBigInteger;,
        Lnet/sf/saxon/expr/PJConverter$BooleanValueToBoolean;,
        Lnet/sf/saxon/expr/PJConverter$StringItemToChar;,
        Lnet/sf/saxon/expr/PJConverter$StringItemToString;,
        Lnet/sf/saxon/expr/PJConverter$ConditionalUnwrapExternalObject;,
        Lnet/sf/saxon/expr/PJConverter$UnwrapExternalObject;,
        Lnet/sf/saxon/expr/PJConverter$Identity;,
        Lnet/sf/saxon/expr/PJConverter$ToZeroOrMore;,
        Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;,
        Lnet/sf/saxon/expr/PJConverter$ToZeroOrOne;,
        Lnet/sf/saxon/expr/PJConverter$ToOne;,
        Lnet/sf/saxon/expr/PJConverter$ToArray;,
        Lnet/sf/saxon/expr/PJConverter$ToCollection;,
        Lnet/sf/saxon/expr/PJConverter$ToSequenceExtent;,
        Lnet/sf/saxon/expr/PJConverter$ToNull;,
        Lnet/sf/saxon/expr/PJConverter$ToSequenceIterator;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lnet/sf/saxon/value/SequenceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/PJConverter;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_STRING:Lnet/sf/saxon/value/SequenceType;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_INTEGER:Lnet/sf/saxon/value/SequenceType;

    const-class v5, Ljava/lang/Long;

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->SINGLE_SHORT:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Ljava/lang/Short;

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_SHORT:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->SINGLE_BYTE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Ljava/lang/Byte;

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_BYTE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->SINGLE_FLOAT:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_FLOAT:Lnet/sf/saxon/value/SequenceType;

    const-class v5, Ljava/lang/Float;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->SINGLE_DOUBLE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DOUBLE:Lnet/sf/saxon/value/SequenceType;

    const-class v6, Ljava/lang/Double;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ANY_URI:Lnet/sf/saxon/value/SequenceType;

    const-class v7, Ljava/net/URI;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v7, Ljava/net/URL;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v7, Ljava/math/BigInteger;

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DECIMAL:Lnet/sf/saxon/value/SequenceType;

    const-class v8, Ljava/math/BigDecimal;

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v8, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DecimalValue;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/QNameValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_QNAME:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/NotationValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_NOTATION:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DateValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DATE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DateTimeValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DATE_TIME:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/TimeValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_TIME:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DurationValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DURATION:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DayTimeDurationValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DAY_TIME_DURATION:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/YearMonthDurationValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_YEAR_MONTH_DURATION:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GYearValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_YEAR:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GYearMonthValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_YEAR_MONTH:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GMonthValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_MONTH:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GMonthDayValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_MONTH_DAY:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GDayValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_DAY:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/Base64BinaryValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_BASE64_BINARY:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/HexBinaryValue;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_HEX_BINARY:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/om/Function;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_FUNCTION_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/ma/map/MapItem;

    sget-object v2, Lnet/sf/saxon/ma/map/MapType;->OPTIONAL_MAP_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/om/NodeInfo;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_NODE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/om/TreeInfo;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DOCUMENT_NODE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;
    .locals 2

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public static allocate(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/type/ItemType;ILjava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/Configuration;",
            "Lnet/sf/saxon/type/ItemType;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/sf/saxon/expr/PJConverter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    const-class v1, Lnet/sf/saxon/om/SequenceIterator;

    if-ne p3, v1, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$ToSequenceIterator;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToSequenceIterator;

    return-object p0

    :cond_0
    const-class v1, Lnet/sf/saxon/om/Sequence;

    if-eq p3, v1, :cond_7d

    const-class v1, Lnet/sf/saxon/om/Item;

    if-ne p3, v1, :cond_1

    goto/16 :goto_18

    :cond_1
    const-class v1, Lnet/sf/saxon/om/One;

    if-ne p3, v1, :cond_2

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$ToOne;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToOne;

    return-object p0

    :cond_2
    const-class v1, Lnet/sf/saxon/om/ZeroOrOne;

    if-ne p3, v1, :cond_3

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$ToZeroOrOne;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToZeroOrOne;

    return-object p0

    :cond_3
    const-class v1, Lnet/sf/saxon/om/OneOrMore;

    if-ne p3, v1, :cond_4

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToOneOrMore;

    return-object p0

    :cond_4
    const-class v1, Lnet/sf/saxon/om/ZeroOrMore;

    if-ne p3, v1, :cond_5

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$ToZeroOrMore;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToZeroOrMore;

    return-object p0

    :cond_5
    const-class v1, Lnet/sf/saxon/om/GroundedValue;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v1, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v3

    :goto_0
    const-class v4, Lnet/sf/saxon/value/SequenceExtent;

    if-ne p3, v4, :cond_7

    move v4, v2

    goto :goto_1

    :cond_7
    move v4, v3

    :goto_1
    or-int/2addr v1, v4

    if-eqz v1, :cond_8

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$ToSequenceExtent;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToSequenceExtent;

    return-object p0

    :cond_8
    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v1

    const-class v4, Lnet/sf/saxon/om/NodeInfo;

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getExternalObjectModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/lib/ExternalObjectModel;

    invoke-interface {v5, p3}, Lnet/sf/saxon/lib/ExternalObjectModel;->getPJConverter(Ljava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;

    move-result-object v5

    if-eqz v5, :cond_9

    return-object v5

    :cond_a
    invoke-virtual {v4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_b
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$ToCollection;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToCollection;

    return-object p0

    :cond_c
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 p2, 0x4000

    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/expr/PJConverter;->allocate(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/type/ItemType;ILjava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/PJConverter$ToArray;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/PJConverter$ToArray;-><init>(Lnet/sf/saxon/expr/PJConverter;)V

    return-object p1

    :cond_d
    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p2

    if-nez p2, :cond_7c

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result p2

    if-eqz p2, :cond_77

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p2

    if-ne p1, p2, :cond_e

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$StringItemToString;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$StringItemToString;

    return-object p0

    :cond_e
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    const-class v1, Ljava/lang/Character;

    const-class v4, Lnet/sf/saxon/value/StringValue;

    const-class v5, Ljava/lang/CharSequence;

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/lang/Object;

    if-eqz p2, :cond_14

    if-eq p3, v7, :cond_13

    if-eq p3, v6, :cond_13

    if-ne p3, v5, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_10
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_12

    if-ne p3, v1, :cond_11

    goto :goto_2

    :cond_11
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_12
    :goto_2
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$StringItemToChar;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$StringItemToChar;

    return-object p0

    :cond_13
    :goto_3
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$StringItemToString;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$StringItemToString;

    return-object p0

    :cond_14
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p1, p2, :cond_18

    if-eq p3, v7, :cond_17

    if-eq p3, v6, :cond_17

    if-ne p3, v5, :cond_15

    goto :goto_4

    :cond_15
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_16

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_16
    :try_start_0
    new-array p2, v2, [Ljava/lang/Class;

    aput-object v6, p2, v3

    invoke-virtual {p3, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/PJConverter$a;

    invoke-direct {v0, p2}, Lnet/sf/saxon/expr/PJConverter$a;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_17
    :goto_4
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$StringItemToString;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$StringItemToString;

    return-object p0

    :cond_18
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_1c

    if-eq p3, v7, :cond_1b

    const-class p2, Ljava/lang/Boolean;

    if-eq p3, p2, :cond_1b

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, p2, :cond_19

    goto :goto_5

    :cond_19
    const-class p2, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1a

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_1a
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_1b
    :goto_5
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$BooleanValueToBoolean;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$BooleanValueToBoolean;

    return-object p0

    :cond_1c
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    const-class v2, Ljava/math/BigDecimal;

    const-class v3, Ljava/lang/Float;

    const-class v4, Ljava/lang/Double;

    if-eqz p2, :cond_2f

    if-eq p3, v7, :cond_2e

    const-class p2, Ljava/math/BigInteger;

    if-ne p3, p2, :cond_1d

    goto/16 :goto_d

    :cond_1d
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_2d

    const-class p2, Ljava/lang/Long;

    if-ne p3, p2, :cond_1e

    goto :goto_c

    :cond_1e
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_2c

    const-class p2, Ljava/lang/Integer;

    if-ne p3, p2, :cond_1f

    goto :goto_b

    :cond_1f
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_2b

    const-class p2, Ljava/lang/Short;

    if-ne p3, p2, :cond_20

    goto :goto_a

    :cond_20
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_2a

    const-class p2, Ljava/lang/Byte;

    if-ne p3, p2, :cond_21

    goto :goto_9

    :cond_21
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_29

    if-ne p3, v1, :cond_22

    goto :goto_8

    :cond_22
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_28

    if-ne p3, v4, :cond_23

    goto :goto_7

    :cond_23
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_27

    if-ne p3, v3, :cond_24

    goto :goto_6

    :cond_24
    if-ne p3, v2, :cond_25

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$NumericValueToBigDecimal;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$NumericValueToBigDecimal;

    return-object p0

    :cond_25
    const-class p2, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_26

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_26
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_27
    :goto_6
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$NumericValueToFloat;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$NumericValueToFloat;

    return-object p0

    :cond_28
    :goto_7
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$NumericValueToDouble;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$NumericValueToDouble;

    return-object p0

    :cond_29
    :goto_8
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$IntegerValueToChar;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$IntegerValueToChar;

    return-object p0

    :cond_2a
    :goto_9
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$IntegerValueToByte;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$IntegerValueToByte;

    return-object p0

    :cond_2b
    :goto_a
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$IntegerValueToShort;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$IntegerValueToShort;

    return-object p0

    :cond_2c
    :goto_b
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$IntegerValueToInt;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$IntegerValueToInt;

    return-object p0

    :cond_2d
    :goto_c
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$IntegerValueToLong;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$IntegerValueToLong;

    return-object p0

    :cond_2e
    :goto_d
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$IntegerValueToBigInteger;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$IntegerValueToBigInteger;

    return-object p0

    :cond_2f
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_37

    if-eq p3, v7, :cond_36

    if-ne p3, v2, :cond_30

    goto :goto_10

    :cond_30
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_35

    if-ne p3, v4, :cond_31

    goto :goto_f

    :cond_31
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_34

    if-ne p3, v3, :cond_32

    goto :goto_e

    :cond_32
    const-class p2, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_33

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_33
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_34
    :goto_e
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$NumericValueToFloat;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$NumericValueToFloat;

    return-object p0

    :cond_35
    :goto_f
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$NumericValueToDouble;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$NumericValueToDouble;

    return-object p0

    :cond_36
    :goto_10
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$NumericValueToBigDecimal;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$NumericValueToBigDecimal;

    return-object p0

    :cond_37
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_3d

    if-eq p3, v7, :cond_3c

    if-eq p3, v3, :cond_3c

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, p2, :cond_38

    goto :goto_12

    :cond_38
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p3, p2, :cond_3b

    if-ne p3, v4, :cond_39

    goto :goto_11

    :cond_39
    const-class p2, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3a

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_3a
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_3b
    :goto_11
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$NumericValueToDouble;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$NumericValueToDouble;

    return-object p0

    :cond_3c
    :goto_12
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$NumericValueToFloat;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$NumericValueToFloat;

    return-object p0

    :cond_3d
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_41

    if-eq p3, v7, :cond_40

    if-eq p3, v4, :cond_40

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, p0, :cond_3e

    goto :goto_13

    :cond_3e
    const-class p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {p3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3f

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_3f
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Atomic;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Atomic;

    return-object p0

    :cond_40
    :goto_13
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$NumericValueToDouble;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$NumericValueToDouble;

    return-object p0

    :cond_41
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_48

    if-eq p3, v7, :cond_47

    const-class p2, Ljava/net/URI;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_42

    goto :goto_15

    :cond_42
    const-class p2, Ljava/net/URL;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_43

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$AnyURIValueToURL;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$AnyURIValueToURL;

    return-object p0

    :cond_43
    if-eq p3, v6, :cond_46

    if-ne p3, v5, :cond_44

    goto :goto_14

    :cond_44
    const-class p2, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_45

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_45
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_46
    :goto_14
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$StringItemToString;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$StringItemToString;

    return-object p0

    :cond_47
    :goto_15
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$AnyURIValueToURI;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$AnyURIValueToURI;

    return-object p0

    :cond_48
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    const-class v1, Ljavax/xml/namespace/QName;

    if-eqz p2, :cond_4c

    if-eq p3, v7, :cond_4b

    if-ne p3, v1, :cond_49

    goto :goto_16

    :cond_49
    const-class p2, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_4a

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_4a
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_4b
    :goto_16
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$QualifiedNameValueToQName;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$QualifiedNameValueToQName;

    return-object p0

    :cond_4c
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_50

    if-eq p3, v7, :cond_4f

    if-ne p3, v1, :cond_4d

    goto :goto_17

    :cond_4d
    const-class p2, Lnet/sf/saxon/value/NotationValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_4e

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_4e
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_4f
    :goto_17
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$QualifiedNameValueToQName;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$QualifiedNameValueToQName;

    return-object p0

    :cond_50
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_52

    const-class p2, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_51

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_51
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_52
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    const-class v1, Ljava/time/LocalDateTime;

    const-class v2, Ljava/time/ZonedDateTime;

    const-class v3, Ljava/time/Instant;

    const-class v4, Ljava/util/Calendar;

    const-class v5, Ljava/util/Date;

    if-eqz p2, :cond_59

    const-class p2, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_53

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_53
    if-ne p3, v5, :cond_54

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToDate;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToDate;

    return-object p0

    :cond_54
    if-ne p3, v4, :cond_55

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToCalendar;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToCalendar;

    return-object p0

    :cond_55
    if-ne p3, v3, :cond_56

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;

    return-object p0

    :cond_56
    if-ne p3, v2, :cond_57

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToZonedDateTime;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToZonedDateTime;

    return-object p0

    :cond_57
    if-ne p3, v1, :cond_58

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToLocalDateTime;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToLocalDateTime;

    return-object p0

    :cond_58
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_59
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_62

    const-class p2, Lnet/sf/saxon/value/DateValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5a

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_5a
    if-ne p3, v5, :cond_5b

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToDate;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToDate;

    return-object p0

    :cond_5b
    if-ne p3, v4, :cond_5c

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToCalendar;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToCalendar;

    return-object p0

    :cond_5c
    if-ne p3, v3, :cond_5d

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;

    return-object p0

    :cond_5d
    if-ne p3, v2, :cond_5e

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToZonedDateTime;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToZonedDateTime;

    return-object p0

    :cond_5e
    const-class p2, Ljava/time/OffsetDateTime;

    if-ne p3, p2, :cond_5f

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToOffsetDateTime;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToOffsetDateTime;

    return-object p0

    :cond_5f
    if-ne p3, v1, :cond_60

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToLocalDateTime;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToLocalDateTime;

    return-object p0

    :cond_60
    const-class p2, Ljava/time/LocalDate;

    if-ne p3, p2, :cond_61

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$DateValueToLocalDate;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$DateValueToLocalDate;

    return-object p0

    :cond_61
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_62
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_68

    const-class p2, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_63

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_63
    if-ne p3, v5, :cond_64

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToDate;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToDate;

    return-object p0

    :cond_64
    if-ne p3, v4, :cond_65

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToCalendar;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToCalendar;

    return-object p0

    :cond_65
    if-ne p3, v3, :cond_66

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;

    return-object p0

    :cond_66
    if-ne p3, v2, :cond_67

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToZonedDateTime;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToZonedDateTime;

    return-object p0

    :cond_67
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_68
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_6a

    const-class p2, Lnet/sf/saxon/value/GYearValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_69

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_69
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_6a
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const-class p2, Lnet/sf/saxon/value/GYearMonthValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6b

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_6b
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_6c
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_6e

    const-class p2, Lnet/sf/saxon/value/GMonthValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6d

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_6d
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_6e
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_70

    const-class p2, Lnet/sf/saxon/value/GMonthDayValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6f

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_6f
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_70
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->G_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_72

    const-class p2, Lnet/sf/saxon/value/GDayValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_71

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_71
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_72
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_74

    const-class p2, Lnet/sf/saxon/value/Base64BinaryValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_73

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_73
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_74
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_76

    const-class p2, Lnet/sf/saxon/value/HexBinaryValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_75

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_75
    invoke-static {p1, p3, p0}, Lnet/sf/saxon/expr/PJConverter;->a(Lnet/sf/saxon/type/ItemType;Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_76
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Atomic;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Atomic;

    return-object p0

    :cond_77
    instance-of p0, p1, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz p0, :cond_78

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$UnwrapExternalObject;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$UnwrapExternalObject;

    return-object p0

    :cond_78
    instance-of p0, p1, Lnet/sf/saxon/type/ErrorType;

    if-eqz p0, :cond_79

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$ToNull;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToNull;

    return-object p0

    :cond_79
    instance-of p0, p1, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_7b

    invoke-virtual {v4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7a

    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0

    :cond_7a
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$General;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$General;

    return-object p0

    :cond_7b
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$General;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$General;

    return-object p0

    :cond_7c
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$General;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$General;

    return-object p0

    :cond_7d
    :goto_18
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$Identity;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$Identity;

    return-object p0
.end method

.method public static allocateNodeListCreator(Lnet/sf/saxon/Configuration;Ljava/lang/Object;)Lnet/sf/saxon/expr/PJConverter;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getExternalObjectModels()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/lib/ExternalObjectModel;

    invoke-interface {v0, p1}, Lnet/sf/saxon/lib/ExternalObjectModel;->getNodeListCreator(Ljava/lang/Object;)Lnet/sf/saxon/expr/PJConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    sget-object p0, Lnet/sf/saxon/expr/PJConverter$ToCollection;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$ToCollection;

    return-object p0
.end method

.method public static getEquivalentSequenceType(Ljava/lang/Class;)Lnet/sf/saxon/value/SequenceType;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const v2, 0xe000

    if-ne v0, v1, :cond_0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p0, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lnet/sf/saxon/expr/PJConverter;->getEquivalentSequenceType(Ljava/lang/Class;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-static {p0, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lnet/sf/saxon/expr/PJConverter;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public static getParameterizedSequenceType(Ljava/lang/reflect/Type;)Lnet/sf/saxon/value/SequenceType;
    .locals 5

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    aget-object v3, v0, v2

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_5

    const-class v4, Lnet/sf/saxon/om/Item;

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lnet/sf/saxon/expr/PJConverter;->getEquivalentSequenceType(Ljava/lang/Class;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    :goto_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-class v2, Lnet/sf/saxon/om/ZeroOrOne;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const/16 p0, 0x6000

    goto :goto_1

    :cond_1
    const-class v2, Lnet/sf/saxon/om/One;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 p0, 0x4000

    goto :goto_1

    :cond_2
    const-class v2, Lnet/sf/saxon/om/OneOrMore;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const p0, 0xc000

    goto :goto_1

    :cond_3
    const-class v2, Lnet/sf/saxon/om/ZeroOrMore;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0xe000

    goto :goto_1

    :cond_4
    move p0, v3

    :goto_1
    if-eqz v0, :cond_5

    if-eq p0, v3, :cond_5

    invoke-static {v0, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method


# virtual methods
.method public abstract convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Sequence;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
