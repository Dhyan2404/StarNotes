.class public abstract Lnet/sf/saxon/expr/JPConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/JPConverter$FromObjectArray;,
        Lnet/sf/saxon/expr/JPConverter$FromBooleanArray;,
        Lnet/sf/saxon/expr/JPConverter$FromFloatArray;,
        Lnet/sf/saxon/expr/JPConverter$FromDoubleArray;,
        Lnet/sf/saxon/expr/JPConverter$FromCharArray;,
        Lnet/sf/saxon/expr/JPConverter$FromByteArray;,
        Lnet/sf/saxon/expr/JPConverter$FromShortArray;,
        Lnet/sf/saxon/expr/JPConverter$FromIntArray;,
        Lnet/sf/saxon/expr/JPConverter$FromLongArray;,
        Lnet/sf/saxon/expr/JPConverter$FromSource;,
        Lnet/sf/saxon/expr/JPConverter$FromCollection;,
        Lnet/sf/saxon/expr/JPConverter$VoidConverter;,
        Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;,
        Lnet/sf/saxon/expr/JPConverter$FromLocalDate;,
        Lnet/sf/saxon/expr/JPConverter$FromLocalDateTime;,
        Lnet/sf/saxon/expr/JPConverter$FromOffsetDateTime;,
        Lnet/sf/saxon/expr/JPConverter$FromZonedDateTime;,
        Lnet/sf/saxon/expr/JPConverter$FromInstant;,
        Lnet/sf/saxon/expr/JPConverter$FromDate;,
        Lnet/sf/saxon/expr/JPConverter$FromURI;,
        Lnet/sf/saxon/expr/JPConverter$FromQName;,
        Lnet/sf/saxon/expr/JPConverter$FromCharacter;,
        Lnet/sf/saxon/expr/JPConverter$FromByte;,
        Lnet/sf/saxon/expr/JPConverter$FromShort;,
        Lnet/sf/saxon/expr/JPConverter$FromInt;,
        Lnet/sf/saxon/expr/JPConverter$FromLong;,
        Lnet/sf/saxon/expr/JPConverter$FromBigInteger;,
        Lnet/sf/saxon/expr/JPConverter$FromBigDecimal;,
        Lnet/sf/saxon/expr/JPConverter$FromFloat;,
        Lnet/sf/saxon/expr/JPConverter$FromDouble;,
        Lnet/sf/saxon/expr/JPConverter$FromBoolean;,
        Lnet/sf/saxon/expr/JPConverter$FromString;,
        Lnet/sf/saxon/expr/JPConverter$FromSequence;,
        Lnet/sf/saxon/expr/JPConverter$FromXdmValue;,
        Lnet/sf/saxon/expr/JPConverter$FromSequenceIterator;,
        Lnet/sf/saxon/expr/JPConverter$FromObject;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/sf/saxon/expr/JPConverter;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/sf/saxon/type/ItemType;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter;->a:Ljava/util/HashMap;

    new-instance v1, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    const v3, 0xe000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    const-class v2, Lnet/sf/saxon/s9api/XdmValue;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v3

    const/16 v5, 0x4000

    invoke-direct {v1, v3, v5}, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    const-class v3, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;

    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v1, v6, v5}, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    const-class v7, Lnet/sf/saxon/s9api/XdmAtomicValue;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v7

    invoke-direct {v1, v7, v5}, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    const-class v7, Lnet/sf/saxon/s9api/XdmNode;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v7

    invoke-direct {v1, v7, v5}, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    const-class v7, Lnet/sf/saxon/s9api/XdmFunctionItem;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;

    sget-object v7, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    invoke-direct {v1, v7, v5}, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    const-class v7, Lnet/sf/saxon/s9api/XdmMap;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v7

    invoke-direct {v1, v7, v5}, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    const-class v7, Lnet/sf/saxon/s9api/XdmArray;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-direct {v1, v7, v8}, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    const-class v7, Lnet/sf/saxon/s9api/XdmEmptySequence;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/om/SequenceIterator;

    sget-object v9, Lnet/sf/saxon/expr/JPConverter$FromSequenceIterator;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromSequenceIterator;

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromSequence;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromSequence;

    const-class v9, Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, Lnet/sf/saxon/om/OneOrMore;

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v11, Lnet/sf/saxon/om/One;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v12, Lnet/sf/saxon/om/ZeroOrOne;

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v13, Lnet/sf/saxon/om/ZeroOrMore;

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/String;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromString;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromString;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromBoolean;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromBoolean;

    const-class v14, Ljava/lang/Boolean;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromDouble;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromDouble;

    const-class v14, Ljava/lang/Double;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromFloat;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromFloat;

    const-class v14, Ljava/lang/Float;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromBigDecimal;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromBigDecimal;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/math/BigInteger;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromBigInteger;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromBigInteger;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromLong;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromLong;

    const-class v14, Ljava/lang/Long;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromInt;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromInt;

    const-class v14, Ljava/lang/Integer;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromShort;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromShort;

    const-class v14, Ljava/lang/Short;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromByte;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromByte;

    const-class v14, Ljava/lang/Byte;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromCharacter;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromCharacter;

    const-class v14, Ljava/lang/Character;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lnet/sf/saxon/expr/JPConverter$FromURI;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromURI;

    const-class v14, Ljava/net/URI;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v14, Ljava/net/URL;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/util/Date;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromDate;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromDate;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/time/Instant;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromInstant;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromInstant;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/time/LocalDateTime;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromLocalDateTime;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromLocalDateTime;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/time/ZonedDateTime;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromZonedDateTime;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromZonedDateTime;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/time/OffsetDateTime;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromOffsetDateTime;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromOffsetDateTime;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/time/LocalDate;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromLocalDate;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromLocalDate;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, [J

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromLongArray;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromLongArray;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, [I

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromIntArray;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromIntArray;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, [S

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromShortArray;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromShortArray;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, [B

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromByteArray;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromByteArray;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, [C

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromCharArray;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromCharArray;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, [D

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromDoubleArray;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromDoubleArray;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, [F

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromFloatArray;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromFloatArray;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, [Z

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromBooleanArray;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromBooleanArray;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/util/Collection;

    sget-object v14, Lnet/sf/saxon/expr/JPConverter$FromCollection;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromCollection;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter;->b:Ljava/util/Map;

    const-class v1, Lnet/sf/saxon/value/BooleanValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/StringValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DoubleValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/FloatValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/BigDecimalValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/IntegerValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DurationValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DayTimeDurationValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/YearMonthDurationValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DateTimeValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/DateValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/TimeValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GYearValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GYearMonthValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GMonthValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GMonthDayValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/GDayValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->G_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/AnyURIValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/QNameValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/NotationValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/HexBinaryValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/Base64BinaryValue;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v14

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/om/TreeInfo;

    sget-object v14, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/ma/map/MapItem;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v14

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v14

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/om/Function;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v14

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter;->c:Ljava/util/Map;

    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xc000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocate(Ljava/lang/Class;Ljava/lang/reflect/Type;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lnet/sf/saxon/Configuration;",
            ")",
            "Lnet/sf/saxon/expr/JPConverter;"
        }
    .end annotation

    const-class v0, Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/JPConverter$FromQName;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromQName;

    return-object p0

    :cond_0
    const-class v0, Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v1, 0x6000

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object v2, p1, v0

    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_2

    const-class v3, Lnet/sf/saxon/om/Item;

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lnet/sf/saxon/expr/JPConverter;->b:Ljava/util/Map;

    aget-object p1, p1, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/type/ItemType;

    sget-object v0, Lnet/sf/saxon/expr/JPConverter;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    new-instance p0, Lnet/sf/saxon/expr/JPConverter$FromSequence;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/JPConverter$FromSequence;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    return-object p0

    :cond_1
    sget-object p1, Lnet/sf/saxon/expr/JPConverter;->b:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/type/ItemType;

    if-eqz p1, :cond_2

    new-instance p0, Lnet/sf/saxon/expr/JPConverter$FromSequence;

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/expr/JPConverter$FromSequence;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    return-object p0

    :cond_2
    sget-object p1, Lnet/sf/saxon/expr/JPConverter;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/JPConverter;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/sf/saxon/expr/JPConverter$FromObject;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromObject;

    return-object p0

    :cond_4
    const-class v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Lnet/sf/saxon/expr/JPConverter$FromSequence;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/expr/JPConverter$FromSequence;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    return-object p0

    :cond_5
    const-class v0, Ljavax/xml/transform/Source;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p0, Lnet/sf/saxon/expr/JPConverter$FromSource;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromSource;

    return-object p0

    :cond_6
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/JPConverter;

    return-object p0

    :cond_8
    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getExternalObjectModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/lib/ExternalObjectModel;

    invoke-interface {v0, p0, p2}, Lnet/sf/saxon/lib/ExternalObjectModel;->getJPConverter(Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/JPConverter$FromObjectArray;

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lnet/sf/saxon/expr/JPConverter;->allocate(Ljava/lang/Class;Ljava/lang/reflect/Type;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/JPConverter$FromObjectArray;-><init>(Lnet/sf/saxon/expr/JPConverter;)V

    return-object p1

    :cond_b
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p0, Lnet/sf/saxon/expr/JPConverter$VoidConverter;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$VoidConverter;

    return-object p0

    :cond_c
    new-instance p1, Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/Configuration;->getJavaExternalObjectType(Ljava/lang/Class;)Lnet/sf/saxon/type/JavaExternalObjectType;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;-><init>(Lnet/sf/saxon/type/JavaExternalObjectType;)V

    return-object p1
.end method


# virtual methods
.method public abstract convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public getCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public abstract getItemType()Lnet/sf/saxon/type/ItemType;
.end method
