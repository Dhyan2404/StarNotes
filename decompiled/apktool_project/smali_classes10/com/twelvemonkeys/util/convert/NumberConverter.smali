.class public Lcom/twelvemonkeys/util/convert/NumberConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/util/convert/PropertyConverter;


# static fields
.field public static final a:Ljava/text/DecimalFormatSymbols;

.field public static final b:Ljava/text/NumberFormat;

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/twelvemonkeys/util/convert/NumberConverter;->a:Ljava/text/DecimalFormatSymbols;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.#"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v1, Lcom/twelvemonkeys/util/convert/NumberConverter;->b:Ljava/text/NumberFormat;

    new-instance v0, Lcom/twelvemonkeys/util/LRUHashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/util/LRUHashMap;-><init>(I)V

    sput-object v0, Lcom/twelvemonkeys/util/convert/NumberConverter;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/text/NumberFormat;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/util/convert/NumberConverter;->a:Ljava/text/DecimalFormatSymbols;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Ljava/text/DecimalFormat;

    invoke-virtual {p0, v0, p1}, Lcom/twelvemonkeys/util/convert/NumberConverter;->getFormat(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Ljava/text/NumberFormat;

    return-object p0
.end method

.method public final varargs getFormat(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/text/Format;
    .locals 2

    sget-object p0, Lcom/twelvemonkeys/util/convert/NumberConverter;->c:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {p1, p2}, Lcom/twelvemonkeys/lang/BeanUtil;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/text/Format;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public toObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/util/convert/ConversionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    if-nez p3, :cond_3

    sget-object p0, Lcom/twelvemonkeys/util/convert/NumberConverter;->b:Ljava/text/NumberFormat;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Lcom/twelvemonkeys/util/convert/NumberConverter;->a(Ljava/lang/String;)Ljava/text/NumberFormat;

    move-result-object p0

    :goto_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_f

    const-class p0, Ljava/lang/Integer;

    if-ne p2, p0, :cond_4

    goto :goto_6

    :cond_4
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_e

    const-class p0, Ljava/lang/Long;

    if-ne p2, p0, :cond_5

    goto :goto_5

    :cond_5
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_d

    const-class p0, Ljava/lang/Double;

    if-ne p2, p0, :cond_6

    goto :goto_4

    :cond_6
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_c

    const-class p0, Ljava/lang/Float;

    if-ne p2, p0, :cond_7

    goto :goto_3

    :cond_7
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_b

    const-class p0, Ljava/lang/Byte;

    if-ne p2, p0, :cond_8

    goto :goto_2

    :cond_8
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_a

    const-class p0, Ljava/lang/Short;

    if-ne p2, p0, :cond_9

    goto :goto_1

    :cond_9
    return-object p1

    :cond_a
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/twelvemonkeys/util/convert/ConversionException;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/util/convert/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/twelvemonkeys/util/convert/ConversionException;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/util/convert/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/util/convert/ConversionException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/twelvemonkeys/util/convert/NumberConverter;->b:Ljava/text/NumberFormat;

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/util/convert/NumberConverter;->a(Ljava/lang/String;)Ljava/text/NumberFormat;

    move-result-object p0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/twelvemonkeys/util/convert/ConversionException;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/util/convert/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/twelvemonkeys/util/convert/TypeMismathException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/convert/TypeMismathException;-><init>(Ljava/lang/Class;)V

    throw p0
.end method
