.class final enum Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

.field private static final COLON:C = ':'

.field private static final COMMA:C = ','

.field private static final DQUOTE:C = '\"'

.field private static final LBRACE:C = '['

.field private static final LCURLY:C = '{'

.field public static final MAX_DEPTH:I

.field private static final RBRACE:C = ']'

.field private static final RCURLY:C = '}'


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    sput-object v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->$VALUES:[Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    invoke-static {}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->readMaxDepth()I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->MAX_DEPTH:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a([ZLjava/lang/StringBuilder;ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->lambda$formatCollection$1([ZLjava/lang/StringBuilder;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic b([ZLjava/lang/StringBuilder;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->lambda$formatMap$0([ZLjava/lang/StringBuilder;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static format(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "object"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    return-void
.end method

.method private static format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "object",
            "depth"
        }
    .end annotation

    .line 2
    sget v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->MAX_DEPTH:I

    if-ge p2, v0, :cond_11

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/util/IndexedStringMap;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lorg/apache/logging/log4j/util/IndexedStringMap;

    .line 6
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatIndexedStringMap(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/util/IndexedStringMap;I)V

    goto/16 :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Ljava/util/Map;

    .line 9
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatMap(Ljava/lang/StringBuilder;Ljava/util/Map;I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 11
    check-cast p1, Ljava/util/List;

    .line 12
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatList(Ljava/lang/StringBuilder;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 13
    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatCollection(Ljava/lang/StringBuilder;Ljava/util/Collection;I)V

    goto/16 :goto_0

    .line 16
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 17
    check-cast p1, Ljava/lang/Number;

    .line 18
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatNumber(Ljava/lang/StringBuilder;Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 19
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 21
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatBoolean(Ljava/lang/StringBuilder;Z)V

    goto/16 :goto_0

    .line 22
    :cond_6
    instance-of v0, p1, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    if-eqz v0, :cond_7

    .line 23
    check-cast p1, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    .line 24
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatFormattable(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/util/StringBuilderFormattable;)V

    goto :goto_0

    .line 25
    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    .line 26
    check-cast p1, [C

    .line 27
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatCharArray(Ljava/lang/StringBuilder;[C)V

    goto :goto_0

    .line 28
    :cond_8
    instance-of v0, p1, [Z

    if-eqz v0, :cond_9

    .line 29
    check-cast p1, [Z

    .line 30
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatBooleanArray(Ljava/lang/StringBuilder;[Z)V

    goto :goto_0

    .line 31
    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_a

    .line 32
    check-cast p1, [B

    .line 33
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatByteArray(Ljava/lang/StringBuilder;[B)V

    goto :goto_0

    .line 34
    :cond_a
    instance-of v0, p1, [S

    if-eqz v0, :cond_b

    .line 35
    check-cast p1, [S

    .line 36
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatShortArray(Ljava/lang/StringBuilder;[S)V

    goto :goto_0

    .line 37
    :cond_b
    instance-of v0, p1, [I

    if-eqz v0, :cond_c

    .line 38
    check-cast p1, [I

    .line 39
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatIntArray(Ljava/lang/StringBuilder;[I)V

    goto :goto_0

    .line 40
    :cond_c
    instance-of v0, p1, [J

    if-eqz v0, :cond_d

    .line 41
    check-cast p1, [J

    .line 42
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatLongArray(Ljava/lang/StringBuilder;[J)V

    goto :goto_0

    .line 43
    :cond_d
    instance-of v0, p1, [F

    if-eqz v0, :cond_e

    .line 44
    check-cast p1, [F

    .line 45
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatFloatArray(Ljava/lang/StringBuilder;[F)V

    goto :goto_0

    .line 46
    :cond_e
    instance-of v0, p1, [D

    if-eqz v0, :cond_f

    .line 47
    check-cast p1, [D

    .line 48
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatDoubleArray(Ljava/lang/StringBuilder;[D)V

    goto :goto_0

    .line 49
    :cond_f
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 50
    check-cast p1, [Ljava/lang/Object;

    .line 51
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatObjectArray(Ljava/lang/StringBuilder;[Ljava/lang/Object;I)V

    goto :goto_0

    .line 52
    :cond_10
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->formatString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 53
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxDepth has been exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static formatBoolean(Ljava/lang/StringBuilder;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "booleanValue"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatBooleanArray(Ljava/lang/StringBuilder;[Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatByteArray(Ljava/lang/StringBuilder;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatCharArray(Ljava/lang/StringBuilder;[C)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-char v1, p1, v0

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatCollection(Ljava/lang/StringBuilder;Ljava/util/Collection;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "items",
            "depth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    add-int/2addr p2, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    new-instance v0, Lorg/apache/logging/log4j/message/a;

    invoke-direct {v0, v1, p0, p2}, Lorg/apache/logging/log4j/message/a;-><init>([ZLjava/lang/StringBuilder;I)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatDoubleArray(Ljava/lang/StringBuilder;[D)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatFloatArray(Ljava/lang/StringBuilder;[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatFormattable(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/util/StringBuilderFormattable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "formattable"
        }
    .end annotation

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/util/StringBuilderFormattable;->formatTo(Ljava/lang/StringBuilder;)V

    invoke-static {p0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatIndexedStringMap(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/util/IndexedStringMap;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "map",
            "depth"
        }
    .end annotation

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-lez v0, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v4}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v2, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatIntArray(Ljava/lang/StringBuilder;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatList(Ljava/lang/StringBuilder;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "items",
            "depth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatLongArray(Ljava/lang/StringBuilder;[J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatMap(Ljava/lang/StringBuilder;Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "map",
            "depth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    add-int/2addr p2, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    new-instance v0, Lorg/apache/logging/log4j/message/b;

    invoke-direct {v0, v1, p0, p2}, Lorg/apache/logging/log4j/message/b;-><init>([ZLjava/lang/StringBuilder;I)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatNumber(Ljava/lang/StringBuilder;Ljava/lang/Number;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "number"
        }
    .end annotation

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    long-to-double v4, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private static formatObjectArray(Ljava/lang/StringBuilder;[Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "items",
            "depth"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v1, p1, v0

    invoke-static {p0, v1, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatShortArray(Ljava/lang/StringBuilder;[S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "items"
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "value"
        }
    .end annotation

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic lambda$formatCollection$1([ZLjava/lang/StringBuilder;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "firstItem",
            "sb",
            "nextDepth",
            "item"
        }
    .end annotation

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    aput-boolean v0, p0, v0

    goto :goto_0

    :cond_0
    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {p1, p3, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    return-void
.end method

.method private static synthetic lambda$formatMap$0([ZLjava/lang/StringBuilder;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "firstEntry",
            "sb",
            "nextDepth",
            "key",
            "value"
        }
    .end annotation

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    aput-boolean v0, p0, v0

    goto :goto_0

    :cond_0
    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p0, 0x22

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeJson(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p4, p2}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null keys are not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readMaxDepth()I
    .locals 4

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.mapMessage.jsonFormatter.maxDepth"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "was expecting a positive maxDepth, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    return-object p0
.end method

.method public static values()[Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->$VALUES:[Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;

    return-object v0
.end method
