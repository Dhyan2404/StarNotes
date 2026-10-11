.class public Lcom/twelvemonkeys/util/convert/DateConverter;
.super Lcom/twelvemonkeys/util/convert/NumberConverter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twelvemonkeys/util/convert/NumberConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0, p1}, Lcom/twelvemonkeys/util/convert/NumberConverter;->getFormat(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Ljava/text/DateFormat;

    return-object p0
.end method

.method public toObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
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
    if-nez p3, :cond_1

    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/twelvemonkeys/util/convert/DateConverter;->b(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Lcom/twelvemonkeys/lang/StringUtil;->toDate(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    const-class p1, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-eq p2, p1, :cond_2

    :try_start_1
    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p2, p1}, Lcom/twelvemonkeys/lang/BeanUtil;->createInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Lcom/twelvemonkeys/util/convert/ConversionException;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/util/convert/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    new-instance p0, Lcom/twelvemonkeys/util/convert/TypeMismathException;

    invoke-direct {p0, p2}, Lcom/twelvemonkeys/util/convert/TypeMismathException;-><init>(Ljava/lang/Class;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    return-object p0

    :catch_2
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
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/util/convert/DateConverter;->b(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

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
