.class public Lnet/sf/saxon/value/GMonthValue;
.super Lnet/sf/saxon/value/GDateValue;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "--([0-9][0-9])(Z|[+-][0-9][0-9]:[0-9][0-9])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/GMonthValue;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/GDateValue;-><init>()V

    return-void
.end method

.method public constructor <init>(BI)V
    .locals 1

    .line 2
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, p1, p2, v0}, Lnet/sf/saxon/value/GMonthValue;-><init>(BILnet/sf/saxon/type/AtomicType;)V

    return-void
.end method

.method public constructor <init>(BILnet/sf/saxon/type/AtomicType;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/value/GDateValue;-><init>()V

    const/16 v0, 0x7d0

    .line 4
    iput v0, p0, Lnet/sf/saxon/value/GDateValue;->year:I

    .line 5
    iput-byte p1, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    const/4 p1, 0x1

    .line 6
    iput-byte p1, p0, Lnet/sf/saxon/value/GDateValue;->day:B

    .line 7
    invoke-virtual {p0, p2}, Lnet/sf/saxon/value/CalendarValue;->setTimezoneInMinutes(I)V

    .line 8
    iput-object p3, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public static makeGMonthValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 5

    new-instance v0, Lnet/sf/saxon/value/GMonthValue;

    invoke-direct {v0}, Lnet/sf/saxon/value/GMonthValue;-><init>()V

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/value/GMonthValue;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' to a gMonth"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2000-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-01"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object v2, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/value/GDateValue;->setLexicalValue(Lnet/sf/saxon/value/GDateValue;Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lnet/sf/saxon/value/DurationValue;)Lnet/sf/saxon/value/CalendarValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot add a duration to an xs:gMonth"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->adjustTimezone(I)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/value/GMonthValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/value/GMonthValue;-><init>(BI)V

    return-object p1
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/GMonthValue;

    iget-byte v1, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/value/GMonthValue;-><init>(BI)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-byte v1, p0, Lnet/sf/saxon/value/GDateValue;->month:B

    invoke-static {v0, v1}, Lnet/sf/saxon/value/CalendarValue;->appendTwoDigits(Lnet/sf/saxon/str/UnicodeBuilder;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/CalendarValue;->appendTimezone(Lnet/sf/saxon/str/UnicodeBuilder;)V

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
