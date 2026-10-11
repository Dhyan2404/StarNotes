.class public Lcom/twelvemonkeys/util/convert/TimeConverter;
.super Lcom/twelvemonkeys/util/convert/NumberConverter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twelvemonkeys/util/convert/NumberConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/twelvemonkeys/util/TimeFormat;
    .locals 1

    const-class v0, Lcom/twelvemonkeys/util/TimeFormat;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/twelvemonkeys/util/convert/NumberConverter;->getFormat(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/text/Format;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/util/TimeFormat;

    return-object p0
.end method

.method public toObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/util/convert/ConversionException;
        }
    .end annotation

    invoke-static {p1}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    :try_start_0
    invoke-static {}, Lcom/twelvemonkeys/util/TimeFormat;->getInstance()Lcom/twelvemonkeys/util/TimeFormat;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/twelvemonkeys/util/convert/TimeConverter;->b(Ljava/lang/String;)Lcom/twelvemonkeys/util/TimeFormat;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/TimeFormat;->parse(Ljava/lang/String;)Lcom/twelvemonkeys/util/Time;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
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
    instance-of v0, p1, Lcom/twelvemonkeys/util/Time;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/twelvemonkeys/lang/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/util/convert/TimeConverter;->b(Ljava/lang/String;)Lcom/twelvemonkeys/util/TimeFormat;

    move-result-object p0

    check-cast p1, Lcom/twelvemonkeys/util/Time;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/util/TimeFormat;->format(Lcom/twelvemonkeys/util/Time;)Ljava/lang/String;

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
