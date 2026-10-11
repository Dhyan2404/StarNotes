.class public Lorg/apache/commons/math3/complex/ComplexFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "i"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/text/NumberFormat;

.field public final c:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "i"

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->b:Ljava/text/NumberFormat;

    .line 4
    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->c:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 16
    invoke-static {}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p2}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 20
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->a:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->b:Ljava/text/NumberFormat;

    .line 22
    iput-object p2, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->c:Ljava/text/NumberFormat;

    return-void

    .line 23
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->REAL_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 24
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->IMAGINARY_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 25
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p0

    .line 26
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "i"

    .line 6
    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->a:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->b:Ljava/text/NumberFormat;

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->c:Ljava/text/NumberFormat;

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->IMAGINARY_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "i"

    .line 11
    iput-object v0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->b:Ljava/text/NumberFormat;

    .line 13
    iput-object p1, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->c:Ljava/text/NumberFormat;

    return-void

    .line 14
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->REAL_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    .line 15
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->IMAGINARY_FORMAT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/commons/math3/complex/ComplexFormat;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/complex/ComplexFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/commons/math3/complex/ComplexFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    .line 5
    new-instance v0, Lorg/apache/commons/math3/complex/ComplexFormat;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/lang/String;Ljava/text/NumberFormat;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/complex/ComplexFormat;
    .locals 1

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/util/CompositeFormat;->getDefaultNumberFormat(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p0

    .line 3
    new-instance v0, Lorg/apache/commons/math3/complex/ComplexFormat;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/complex/ComplexFormat;-><init>(Ljava/text/NumberFormat;)V

    return-object v0
.end method


# virtual methods
.method public final a(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p4, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryFormat()Ljava/text/NumberFormat;

    move-result-object p0

    invoke-static {p1, p2, p0, p3, p4}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    return-object p3
.end method

.method public format(Ljava/lang/Double;)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(Lorg/apache/commons/math3/complex/Complex;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 17
    instance-of v0, p1, Lorg/apache/commons/math3/complex/Complex;

    if-eqz v0, :cond_0

    .line 18
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    goto :goto_0

    .line 19
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    :goto_0
    return-object p0

    .line 21
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_FORMAT_INSTANCE_AS_COMPLEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public format(Lorg/apache/commons/math3/complex/Complex;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getRealFormat()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lorg/apache/commons/math3/util/CompositeFormat;->formatDouble(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const-string p1, " - "

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    neg-double v0, v0

    .line 9
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->a(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryCharacter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    cmpl-double p1, v0, v2

    if-gtz p1, :cond_1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, " + "

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/apache/commons/math3/complex/ComplexFormat;->a(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryCharacter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getImaginaryCharacter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getImaginaryFormat()Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->b:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public getRealFormat()Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/complex/ComplexFormat;->c:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/commons/math3/complex/Complex;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/complex/ComplexFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    .line 3
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-class v1, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    throw p0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 5
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 6
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getRealFormat()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 10
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNextCharacter(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v4

    if-eqz v4, :cond_5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    .line 11
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 12
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v2

    :cond_1
    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 13
    :goto_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseAndIgnoreWhitespace(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getRealFormat()Ljava/text/NumberFormat;

    move-result-object v4

    invoke-static {p1, v4, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseNumber(Ljava/lang/String;Ljava/text/NumberFormat;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_3

    .line 15
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    .line 16
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/ComplexFormat;->getImaginaryCharacter()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lorg/apache/commons/math3/util/CompositeFormat;->parseFixedstring(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v2

    .line 17
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    int-to-double v2, v3

    mul-double/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object p0

    .line 18
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object p0
.end method
