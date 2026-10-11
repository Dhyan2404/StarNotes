.class public Lnet/sf/saxon/functions/FormatDate;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# static fields
.field public static final J:Lnet/sf/saxon/regex/ARegularExpression;

.field public static final O:Lnet/sf/saxon/regex/ARegularExpression;

.field public static final Q:Lnet/sf/saxon/regex/ARegularExpression;

.field public static final synthetic Z:Z

.field public static final h:[Ljava/lang/String;

.field public static final i:Lnet/sf/saxon/str/UnicodeString;

.field public static final j:Lnet/sf/saxon/str/UnicodeString;

.field public static final k:Lnet/sf/saxon/str/UnicodeString;

.field public static final l:Lnet/sf/saxon/str/UnicodeString;

.field public static final m:Lnet/sf/saxon/str/UnicodeString;

.field public static final n:Lnet/sf/saxon/str/UnicodeString;

.field public static final o:Lnet/sf/saxon/str/UnicodeString;

.field public static final p:Lnet/sf/saxon/str/UnicodeString;

.field public static final q:Lnet/sf/saxon/str/UnicodeString;

.field public static final r:Lnet/sf/saxon/str/UnicodeString;

.field public static final s:Lnet/sf/saxon/str/UnicodeString;

.field public static final t:Lnet/sf/saxon/str/UnicodeString;

.field public static final u:Lnet/sf/saxon/str/UnicodeString;

.field public static final v:Lnet/sf/saxon/str/UnicodeString;

.field public static final w:Lnet/sf/saxon/str/UnicodeString;

.field public static final x:Lnet/sf/saxon/str/UnicodeString;

.field public static final y:Lnet/sf/saxon/regex/ARegularExpression;

.field public static final z:Lnet/sf/saxon/regex/ARegularExpression;


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    const-string v0, "AD"

    const-string v1, "AH"

    const-string v2, "AME"

    const-string v3, "AM"

    const-string v4, "AP"

    const-string v5, "AS"

    const-string v6, "BE"

    const-string v7, "CB"

    const-string v8, "CE"

    const-string v9, "CL"

    const-string v10, "CS"

    const-string v11, "EE"

    const-string v12, "FE"

    const-string v13, "ISO"

    const-string v14, "JE"

    const-string v15, "KE"

    const-string v16, "KY"

    const-string v17, "ME"

    const-string v18, "MS"

    const-string v19, "NS"

    const-string v20, "OS"

    const-string v21, "RS"

    const-string v22, "SE"

    const-string v23, "SH"

    const-string v24, "SS"

    const-string v25, "TE"

    const-string v26, "VE"

    const-string v27, "VS"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->h:[Ljava/lang/String;

    const-string v0, "0"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->i:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "01"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->j:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "1"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->k:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "f"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->l:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "F"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->m:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "i"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->n:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "I"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->o:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "J"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->p:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "M"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->q:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "N"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->r:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "Nn"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->s:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "n"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->t:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "P"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->u:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "s"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->v:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "Y"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->w:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "Z"

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->x:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "([YMDdWwFHhmsfZzPCE])\\s*(.*)"

    const-string v1, ""

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->y:Lnet/sf/saxon/regex/ARegularExpression;

    const-string v0, ",(\\*|[0-9]+)(\\-(\\*|[0-9]+))?"

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->z:Lnet/sf/saxon/regex/ARegularExpression;

    const-string v0, "\\p{Nd}+"

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->J:Lnet/sf/saxon/regex/ARegularExpression;

    const-string v0, "[#\\p{Nd}]+"

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->O:Lnet/sf/saxon/regex/ARegularExpression;

    const-string v0, "\\p{Nd}+#*"

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatDate;->Q:Lnet/sf/saxon/regex/ARegularExpression;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static c(Lnet/sf/saxon/value/CalendarValue;Ljava/lang/String;Lnet/sf/saxon/lib/Numberer;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v1, p3

    move-object/from16 v5, p4

    instance-of v2, v0, Lnet/sf/saxon/value/TimeValue;

    instance-of v3, v0, Lnet/sf/saxon/value/DateValue;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/CalendarValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v7

    sget-object v8, Lnet/sf/saxon/functions/FormatDate;->y:Lnet/sf/saxon/regex/ARegularExpression;

    invoke-virtual {v8, v7}, Lnet/sf/saxon/regex/ARegularExpression;->analyze(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/RegexIterator;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/regex/ARegexIterator;

    invoke-virtual {v8}, Lnet/sf/saxon/regex/ARegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v9

    const-string v10, "FOFD1340"

    if-eqz v9, :cond_1a

    invoke-interface {v9}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v9

    invoke-virtual {v7}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v7

    if-ne v9, v7, :cond_1a

    invoke-virtual {v8}, Lnet/sf/saxon/regex/ARegexIterator;->isMatching()Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Lnet/sf/saxon/regex/ARegexIterator;->getRegexGroup(I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Lnet/sf/saxon/regex/ARegexIterator;->getRegexGroup(I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v11

    const-wide/16 v12, 0x0

    if-nez v11, :cond_1

    invoke-virtual {v8, v12, v13}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v11

    const/16 v14, 0x2c

    if-ne v11, v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v9, v12, v13}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v11

    const/16 v14, 0x43

    if-eq v11, v14, :cond_5

    const/16 v14, 0x50

    if-eq v11, v14, :cond_4

    const/16 v14, 0x5a

    if-eq v11, v14, :cond_6

    const/16 v14, 0x6d

    if-eq v11, v14, :cond_3

    const/16 v14, 0x73

    if-eq v11, v14, :cond_3

    const/16 v14, 0x7a

    if-eq v11, v14, :cond_6

    const/16 v14, 0x45

    if-eq v11, v14, :cond_5

    const/16 v14, 0x46

    if-eq v11, v14, :cond_2

    sget-object v11, Lnet/sf/saxon/functions/FormatDate;->k:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v11, v8}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    goto :goto_1

    :cond_2
    sget-object v11, Lnet/sf/saxon/functions/FormatDate;->s:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v11, v8}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    goto :goto_1

    :cond_3
    sget-object v11, Lnet/sf/saxon/functions/FormatDate;->j:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v11, v8}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    goto :goto_1

    :cond_4
    sget-object v11, Lnet/sf/saxon/functions/FormatDate;->t:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v11, v8}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    goto :goto_1

    :cond_5
    sget-object v11, Lnet/sf/saxon/functions/FormatDate;->r:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v11, v8}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    :cond_6
    :goto_1
    invoke-virtual {v9, v12, v13}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v11

    const-string v14, "In format-time(): cannot obtain the week number from an xs:time value"

    const-string v15, "In format-date(): an xs:date value does not contain an hour component"

    const-string v12, "In format-time(): an xs:time value does not contain a day component"

    const-string v13, "FOFD1350"

    sparse-switch v11, :sswitch_data_0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown format-date/time component specifier \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v8, v6, v7, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_0
    if-nez v2, :cond_7

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v0

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v1

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getDay()B

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/value/DateValue;->getWeekNumberWithinMonth(III)I

    move-result v1

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, v14}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_1
    if-nez v3, :cond_8

    sget-object v1, Lnet/sf/saxon/functions/AccessorFn$Component;->WHOLE_SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In format-date(): an xs:date value does not contain a seconds component"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_2
    if-nez v3, :cond_9

    sget-object v1, Lnet/sf/saxon/functions/AccessorFn$Component;->MINUTES:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In format-date(): an xs:date value does not contain a minutes component"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_3
    if-nez v3, :cond_c

    sget-object v1, Lnet/sf/saxon/functions/AccessorFn$Component;->HOURS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_a

    add-int/lit8 v0, v0, -0xc

    :cond_a
    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    move v1, v0

    :goto_2
    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_4
    if-nez v3, :cond_d

    sget-object v1, Lnet/sf/saxon/functions/AccessorFn$Component;->MICROSECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In format-date(): an xs:date value does not contain a fractional seconds component"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_5
    if-nez v2, :cond_e

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v0

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v1

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getDay()B

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/value/DateValue;->getDayWithinYear(III)I

    move-result v1

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, v12}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_6
    instance-of v2, v0, Lnet/sf/saxon/value/TimeValue;

    if-eqz v2, :cond_10

    invoke-static/range {p4 .. p4}, Lnet/sf/saxon/value/DateTimeValue;->getCurrentDateTime(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v3

    new-instance v4, Lnet/sf/saxon/value/DateTimeValue;

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v4

    move/from16 v17, v2

    move/from16 v24, v3

    invoke-direct/range {v16 .. v25}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBIIZ)V

    invoke-static {v4, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->inSummerTime(Lnet/sf/saxon/value/DateTimeValue;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v4, Lnet/sf/saxon/value/DateTimeValue;

    const/16 v18, 0x7

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v4

    move/from16 v17, v2

    move/from16 v24, v3

    invoke-direct/range {v16 .. v25}, Lnet/sf/saxon/value/DateTimeValue;-><init>(IBBBBBIIZ)V

    :cond_f
    invoke-virtual {v4}, Lnet/sf/saxon/value/DateTimeValue;->toDateValue()Lnet/sf/saxon/value/DateValue;

    move-result-object v2

    check-cast v0, Lnet/sf/saxon/value/TimeValue;

    invoke-static {v2, v0}, Lnet/sf/saxon/value/DateTimeValue;->makeDateTimeValue(Lnet/sf/saxon/value/DateValue;Lnet/sf/saxon/value/TimeValue;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v0

    goto :goto_3

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/CalendarValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v0

    :goto_3
    const-wide/16 v2, 0x0

    invoke-virtual {v9, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v0, v2, v8, v1}, Lnet/sf/saxon/functions/FormatDate;->f(Lnet/sf/saxon/value/DateTimeValue;CLnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :sswitch_7
    if-nez v2, :cond_12

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v0

    if-gez v0, :cond_11

    neg-int v0, v0

    :cond_11
    move v1, v0

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In format-time(): an xs:time value does not contain a year component"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_8
    if-nez v2, :cond_13

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v0

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v1

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getDay()B

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/value/DateValue;->getWeekNumber(III)I

    move-result v1

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, v14}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_9
    if-nez v3, :cond_14

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getHour()B

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getMinute()B

    move-result v1

    add-int/2addr v1, v0

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In format-date(): an xs:date value does not contain an am/pm component"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_a
    if-nez v2, :cond_15

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v1

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In format-time(): an xs:time value does not contain a month component"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_b
    if-nez v3, :cond_16

    sget-object v1, Lnet/sf/saxon/functions/AccessorFn$Component;->HOURS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_c
    if-nez v2, :cond_17

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v0

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result v1

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getDay()B

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/value/DateValue;->getDayOfWeek(III)I

    move-result v1

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In format-time(): an xs:time value does not contain day-of-week component"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_d
    if-nez v2, :cond_18

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result v0

    invoke-interface {v4, v0}, Lnet/sf/saxon/lib/Numberer;->getEraName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_18
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In format-time(): an xs:time value does not contain an AD/BC component"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_e
    if-nez v2, :cond_19

    invoke-virtual {v6}, Lnet/sf/saxon/value/DateTimeValue;->getDay()B

    move-result v1

    move-object v0, v9

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_19
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, v12}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :sswitch_f
    const-string v0, "AD"

    invoke-interface {v4, v0}, Lnet/sf/saxon/lib/Numberer;->getCalendarName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized date/time component ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_f
        0x44 -> :sswitch_e
        0x45 -> :sswitch_d
        0x46 -> :sswitch_c
        0x48 -> :sswitch_b
        0x4d -> :sswitch_a
        0x50 -> :sswitch_9
        0x57 -> :sswitch_8
        0x59 -> :sswitch_7
        0x5a -> :sswitch_6
        0x64 -> :sswitch_5
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x77 -> :sswitch_0
        0x7a -> :sswitch_6
    .end sparse-switch
.end method

.method public static d(Lnet/sf/saxon/value/CalendarValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez p2, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDefaultLanguage()Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDefaultCountry()Ljava/lang/String;

    move-result-object p3

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "/"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/value/DateTimeValue;->secondsSinceEpoch()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    const v5, 0xea60

    div-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lnet/sf/saxon/value/CalendarValue;->adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    :cond_3
    invoke-virtual {v0, p2, p3}, Lnet/sf/saxon/Configuration;->makeNumberer(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/Numberer;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Lnet/sf/saxon/expr/number/Numberer_en;

    if-ne v3, v5, :cond_4

    const-string v3, "en"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "[Language: en]"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v0}, Lnet/sf/saxon/lib/Numberer;->defaultedLocale()Ljava/util/Locale;

    move-result-object p2

    const-string v3, "]"

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Language: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/lib/Numberer;->defaultedLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v5, "FOFD1340"

    const/16 v6, 0x5b

    if-ge v1, p2, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v6, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v6, 0x5d

    if-ne p2, v6, :cond_7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eq v1, p2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v6, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Closing \']\' in date picture must be written as \']]\'"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_7
    :goto_2
    add-int/2addr v1, v2

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne v1, p2, :cond_9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v1, p2, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v6, :cond_a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v6, -0x1

    if-ge v1, p2, :cond_b

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    goto :goto_3

    :cond_b
    move p2, v6

    :goto_3
    if-eq p2, v6, :cond_c

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->removeAllWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, p3, p4}, Lnet/sf/saxon/functions/FormatDate;->c(Lnet/sf/saxon/value/CalendarValue;Ljava/lang/String;Lnet/sf/saxon/lib/Numberer;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    goto :goto_1

    :cond_c
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Date format contains a \'[\' with no matching \']\'"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public static e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lnet/sf/saxon/str/StringTool;->lastIndexOf(Lnet/sf/saxon/str/UnicodeString;I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v4

    if-ltz v3, :cond_0

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    move-object v4, v6

    :cond_0
    invoke-static {v2}, Lnet/sf/saxon/str/StringTool;->lastCodePoint(Lnet/sf/saxon/str/UnicodeString;)I

    move-result v3

    const/16 v6, 0x74

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    if-ne v3, v6, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v2, v10, v11}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    const-string v6, "traditional"

    move-object/from16 v19, v7

    move-object v7, v6

    move-object/from16 v6, v19

    goto :goto_0

    :cond_1
    const/16 v6, 0x6f

    if-ne v3, v6, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v2, v10, v11}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lnet/sf/saxon/lib/Numberer;->getOrdinalSuffixForDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v3, v2

    move-object v6, v7

    :goto_0
    sget-object v10, Lnet/sf/saxon/functions/FormatDate;->J:Lnet/sf/saxon/regex/ARegularExpression;

    invoke-virtual {v10, v3}, Lnet/sf/saxon/regex/ARegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v11

    const/4 v13, 0x1

    if-eqz v11, :cond_3

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v11

    if-le v11, v13, :cond_3

    move v14, v11

    goto :goto_1

    :cond_3
    move v11, v13

    const v14, 0x7fffffff

    :goto_1
    sget-object v15, Lnet/sf/saxon/functions/FormatDate;->w:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v15, v0}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/4 v8, 0x4

    const/16 v9, 0x30

    const/16 v16, 0x0

    if-eqz v15, :cond_d

    invoke-virtual {v4}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v4}, Lnet/sf/saxon/functions/FormatDate;->h(Lnet/sf/saxon/str/UnicodeString;)[I

    move-result-object v10

    aget v10, v10, v13

    move/from16 v11, v16

    goto :goto_4

    :cond_4
    invoke-virtual {v10, v3}, Lnet/sf/saxon/regex/ARegularExpression;->containsMatch(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v10

    move/from16 v11, v16

    move v14, v11

    :cond_5
    :goto_2
    invoke-interface {v10}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v10}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v15

    const/16 v12, 0x23

    if-ne v15, v12, :cond_6

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    if-lt v15, v9, :cond_7

    const/16 v12, 0x39

    if-le v15, v12, :cond_8

    :cond_7
    sget-object v12, Lnet/sf/saxon/regex/charclass/Categories;->ESCAPE_d:Lnet/sf/saxon/regex/charclass/Categories$Category;

    invoke-virtual {v12, v15}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_9
    move v10, v11

    move v11, v14

    goto :goto_4

    :cond_a
    move/from16 v10, v16

    move v11, v10

    :goto_4
    if-gt v10, v13, :cond_b

    const v14, 0x7fffffff

    goto :goto_5

    :cond_b
    move v14, v10

    :goto_5
    if-lt v14, v8, :cond_c

    const v10, 0x7fffffff

    if-ge v14, v10, :cond_d

    const/16 v10, 0x270f

    if-le v1, v10, :cond_d

    :cond_c
    int-to-double v8, v14

    move v15, v11

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v8, v8

    rem-int/2addr v1, v8

    move v8, v1

    move v11, v15

    goto :goto_6

    :cond_d
    move v8, v1

    :goto_6
    sget-object v1, Lnet/sf/saxon/functions/FormatDate;->o:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    sget-object v1, Lnet/sf/saxon/functions/FormatDate;->n:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_10

    :cond_e
    invoke-virtual {v4}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v4}, Lnet/sf/saxon/functions/FormatDate;->h(Lnet/sf/saxon/str/UnicodeString;)[I

    move-result-object v1

    aget v4, v1, v16

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    const v4, 0x7fffffff

    if-ne v14, v4, :cond_f

    aget v1, v1, v13

    goto :goto_7

    :cond_f
    aget v1, v1, v13

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_7
    move v14, v1

    if-eqz p3, :cond_11

    invoke-static {v3}, Lnet/sf/saxon/str/StringTool;->lastCodePoint(Lnet/sf/saxon/str/UnicodeString;)I

    move-result v1

    const/16 v4, 0x31

    if-ne v1, v4, :cond_11

    int-to-long v9, v11

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v17

    cmp-long v1, v9, v17

    if-eqz v1, :cond_11

    new-instance v1, Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v3, v11, 0x1

    invoke-direct {v1, v3}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    move v3, v13

    :goto_8
    if-ge v3, v11, :cond_10

    const/16 v9, 0x30

    invoke-virtual {v1, v9}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    invoke-virtual {v1, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    :cond_11
    sget-object v1, Lnet/sf/saxon/functions/FormatDate;->u:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v15, "FOFD1340"

    const-string v12, ""

    if-eqz v4, :cond_14

    sget-object v2, Lnet/sf/saxon/functions/FormatDate;->r:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Lnet/sf/saxon/functions/FormatDate;->t:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lnet/sf/saxon/functions/FormatDate;->s:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    move-object v3, v2

    :cond_12
    const v4, 0x7fffffff

    if-ne v14, v4, :cond_13

    move-object/from16 p2, v1

    const/4 v14, 0x4

    goto/16 :goto_c

    :cond_13
    move-object/from16 p2, v1

    goto/16 :goto_c

    :cond_14
    const v4, 0x7fffffff

    sget-object v9, Lnet/sf/saxon/functions/FormatDate;->w:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v9, v0}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-ge v14, v4, :cond_13

    int-to-double v9, v14

    move-object/from16 p2, v1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    rem-int/2addr v8, v1

    goto/16 :goto_c

    :cond_15
    move-object/from16 p2, v1

    sget-object v1, Lnet/sf/saxon/functions/FormatDate;->l:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lnet/sf/saxon/functions/FormatDate;->J:Lnet/sf/saxon/regex/ARegularExpression;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/regex/ARegularExpression;->containsMatch(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v3, Lnet/sf/saxon/functions/FormatDate;->k:Lnet/sf/saxon/str/UnicodeString;

    move-object/from16 v1, p0

    move v2, v8

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_16
    sget-object v0, Lnet/sf/saxon/functions/FormatDate;->O:Lnet/sf/saxon/regex/ARegularExpression;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/regex/ARegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v2}, Lnet/sf/saxon/functions/FormatDate;->i(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/functions/FormatDate;->i(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/functions/FormatDate;->v:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    move-object v0, v1

    move v1, v3

    move v3, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatDate;->e(Lnet/sf/saxon/str/UnicodeString;ILnet/sf/saxon/str/UnicodeString;ZLnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/functions/FormatDate;->i(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v1

    int-to-long v3, v14

    cmp-long v1, v1, v3

    if-lez v1, :cond_17

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    :cond_17
    return-object v0

    :cond_18
    sget-object v0, Lnet/sf/saxon/functions/FormatDate;->Q:Lnet/sf/saxon/regex/ARegularExpression;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/regex/ARegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez v8, :cond_19

    sget-object v0, Lnet/sf/saxon/functions/FormatDate;->i:Lnet/sf/saxon/str/UnicodeString;

    goto :goto_9

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0xf4240

    add-int/2addr v8, v1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    int-to-long v5, v14

    cmp-long v1, v3, v5

    if-lez v1, :cond_1a

    invoke-virtual {v0, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    :cond_1a
    :goto_9
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    int-to-long v5, v11

    cmp-long v1, v3, v5

    if-gez v1, :cond_1b

    sget-object v1, Lnet/sf/saxon/functions/FormatDate;->i:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    goto :goto_9

    :cond_1b
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_1c

    :goto_a
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_1c

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_1c

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    goto :goto_a

    :cond_1c
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/expr/number/Alphanumeric;->getDigitFamily(I)I

    move-result v1

    if-ltz v1, :cond_1e

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1e

    const/16 v2, 0xa

    new-array v2, v2, [I

    move/from16 v3, v16

    :goto_b
    const/16 v4, 0x9

    if-gt v3, v4, :cond_1d

    add-int v4, v1, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    invoke-static {v3, v4, v2, v0}, Lnet/sf/saxon/expr/number/AbstractNumberer;->convertDigitSystem(J[II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    :cond_1e
    return-object v0

    :cond_1f
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid picture for fractional seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_c
    sget-object v1, Lnet/sf/saxon/functions/FormatDate;->r:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Lnet/sf/saxon/functions/FormatDate;->t:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Lnet/sf/saxon/functions/FormatDate;->s:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_e

    :cond_21
    :try_start_0
    invoke-static {v3}, Lnet/sf/saxon/functions/FormatInteger;->getPicSeparators(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/number/NumericGroupFormatter;

    move-result-object v4
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lnet/sf/saxon/expr/number/NumericGroupFormatter;->getAdjustedPicture()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v9

    int-to-long v1, v8

    move-object/from16 v0, p4

    move-object v3, v9

    move-object v5, v7

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/lib/Numberer;->format(JLnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringTool;->getStringLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-ge v1, v11, :cond_23

    const-wide/16 v2, 0x0

    invoke-virtual {v9, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/expr/number/Alphanumeric;->getDigitFamily(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_d
    if-ge v1, v11, :cond_22

    invoke-static {v3, v2}, Lnet/sf/saxon/str/StringTool;->prependWideChar(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "FODF1310"

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v1, v15}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_24
    throw v1

    :cond_25
    :goto_e
    sget-object v2, Lnet/sf/saxon/functions/FormatDate;->q:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v5, v8, v11, v14}, Lnet/sf/saxon/lib/Numberer;->monthName(III)Ljava/lang/String;

    move-result-object v12

    goto :goto_f

    :cond_26
    sget-object v2, Lnet/sf/saxon/functions/FormatDate;->m:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v5, v8, v11, v14}, Lnet/sf/saxon/lib/Numberer;->dayName(III)Ljava/lang/String;

    move-result-object v12

    goto :goto_f

    :cond_27
    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v5, v8, v11, v14}, Lnet/sf/saxon/lib/Numberer;->halfDayName(III)Ljava/lang/String;

    move-result-object v12

    goto :goto_f

    :cond_28
    sget-object v3, Lnet/sf/saxon/functions/FormatDate;->k:Lnet/sf/saxon/str/UnicodeString;

    :goto_f
    invoke-virtual {v1, v3}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_29
    sget-object v0, Lnet/sf/saxon/functions/FormatDate;->t:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-static {v12}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_2b
    :goto_10
    invoke-static {v4}, Lnet/sf/saxon/functions/FormatDate;->h(Lnet/sf/saxon/str/UnicodeString;)[I

    move-result-object v0

    aget v9, v0, v16

    int-to-long v1, v8

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object v5, v7

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/lib/Numberer;->format(JLnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-static {v0}, Lnet/sf/saxon/str/StringTool;->getStringLength(Ljava/lang/CharSequence;)I

    move-result v0

    :goto_11
    if-ge v0, v9, :cond_2c

    invoke-virtual {v1, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2c
    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lnet/sf/saxon/value/DateTimeValue;CLnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/16 v3, 0x2c

    invoke-static {v1, v3}, Lnet/sf/saxon/str/StringTool;->lastIndexOf(Lnet/sf/saxon/str/UnicodeString;I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v4

    if-ltz v3, :cond_0

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    move-object v4, v5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v0, Lnet/sf/saxon/functions/FormatDate;->x:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/sf/saxon/functions/FormatDate;->p:Lnet/sf/saxon/str/UnicodeString;

    return-object v0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v3

    const-string v5, "00:00"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v4}, Lnet/sf/saxon/functions/FormatDate;->h(Lnet/sf/saxon/str/UnicodeString;)[I

    move-result-object v1

    aget v3, v1, v6

    aget v1, v1, v7

    const/4 v4, 0x4

    if-gt v3, v7, :cond_4

    if-lt v1, v4, :cond_3

    const-string v1, "0:00"

    goto :goto_0

    :cond_3
    const-string v1, "0"

    :goto_0
    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    goto :goto_2

    :cond_4
    if-gt v3, v4, :cond_6

    const/4 v3, 0x5

    if-lt v1, v3, :cond_5

    move-object v1, v5

    goto :goto_1

    :cond_5
    const-string v1, "00"

    :goto_1
    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-static {v5}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v5}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v3

    invoke-static {v1}, Lnet/sf/saxon/str/StringTool;->lastCodePoint(Lnet/sf/saxon/str/UnicodeString;)I

    move-result v4

    const/16 v8, 0x74

    if-ne v4, v8, :cond_9

    move v4, v7

    goto :goto_3

    :cond_9
    move v4, v6

    :goto_3
    if-eqz v4, :cond_a

    if-nez v3, :cond_a

    sget-object v0, Lnet/sf/saxon/functions/FormatDate;->x:Lnet/sf/saxon/str/UnicodeString;

    return-object v0

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Lnet/sf/saxon/str/UnicodeString;->prefix(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    :cond_b
    invoke-static {v1}, Lnet/sf/saxon/str/StringTool;->expand(Lnet/sf/saxon/str/UnicodeString;)[I

    move-result-object v4

    array-length v8, v4

    const/16 v9, 0x3a

    const/4 v10, -0x1

    move v11, v6

    move v12, v11

    move v13, v12

    :goto_4
    const/16 v14, 0x9

    if-ge v11, v8, :cond_e

    aget v15, v4, v11

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v7

    if-ne v7, v14, :cond_c

    add-int/lit8 v12, v12, 0x1

    if-gez v10, :cond_d

    invoke-static {v15}, Lnet/sf/saxon/expr/number/Alphanumeric;->getDigitFamily(I)I

    move-result v7

    move v10, v7

    goto :goto_5

    :cond_c
    add-int/lit8 v13, v13, 0x1

    move v9, v15

    :cond_d
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_e
    const/16 v4, 0xa

    new-array v7, v4, [I

    if-lez v12, :cond_1c

    const/16 v0, 0x7a

    const/4 v1, 0x3

    const/4 v2, 0x2

    move/from16 v5, p1

    if-ne v5, v0, :cond_f

    const/16 v0, 0x47

    aput v0, v7, v6

    const/16 v0, 0x4d

    const/4 v5, 0x1

    aput v0, v7, v5

    const/16 v0, 0x54

    aput v0, v7, v2

    move v0, v1

    goto :goto_6

    :cond_f
    const/4 v5, 0x1

    move v0, v6

    :goto_6
    if-gez v3, :cond_10

    move v8, v5

    goto :goto_7

    :cond_10
    move v8, v6

    :goto_7
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v11, v0, 0x1

    if-eqz v8, :cond_11

    const/16 v8, 0x2d

    goto :goto_8

    :cond_11
    const/16 v8, 0x2b

    :goto_8
    aput v8, v7, v0

    div-int/lit8 v0, v3, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    if-nez v3, :cond_13

    if-ge v12, v1, :cond_13

    if-lez v13, :cond_12

    goto :goto_9

    :cond_12
    move v8, v6

    goto :goto_a

    :cond_13
    :goto_9
    move v8, v5

    :goto_a
    if-eqz v3, :cond_14

    if-le v12, v2, :cond_15

    :cond_14
    if-lez v13, :cond_16

    if-nez v3, :cond_15

    if-lt v12, v1, :cond_16

    :cond_15
    move v6, v5

    :cond_16
    if-gt v12, v2, :cond_17

    goto :goto_b

    :cond_17
    add-int/lit8 v12, v12, -0x2

    :goto_b
    if-gt v0, v14, :cond_18

    if-lt v12, v2, :cond_19

    :cond_18
    add-int/lit8 v1, v11, 0x1

    div-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v10

    aput v2, v7, v11

    move v11, v1

    :cond_19
    add-int/lit8 v1, v11, 0x1

    rem-int/2addr v0, v4

    add-int/2addr v0, v10

    aput v0, v7, v11

    if-eqz v6, :cond_1a

    add-int/lit8 v0, v1, 0x1

    aput v9, v7, v1

    move v1, v0

    :cond_1a
    if-eqz v8, :cond_1b

    add-int/lit8 v0, v1, 0x1

    div-int/lit8 v2, v3, 0xa

    add-int/2addr v2, v10

    aput v2, v7, v1

    add-int/lit8 v1, v0, 0x1

    rem-int/2addr v3, v4

    add-int/2addr v3, v10

    aput v3, v7, v0

    :cond_1b
    invoke-static {v7, v1}, Lnet/sf/saxon/str/StringTool;->fromCodePoints([II)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v4, "Z"

    invoke-static {v4}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x5a

    if-eqz v4, :cond_1f

    div-int/lit8 v1, v3, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    const/16 v4, -0xc

    if-lt v1, v4, :cond_1e

    const/16 v4, 0xc

    if-gt v1, v4, :cond_1e

    if-eqz v3, :cond_1d

    goto :goto_c

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "YXWVUTSRQPONZABCDEFGHIKLM"

    add-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_1e
    :goto_c
    invoke-static {v5}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-static {v0, v6, v1, v2}, Lnet/sf/saxon/functions/FormatDate;->f(Lnet/sf/saxon/value/DateTimeValue;CLnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_1f
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    const/16 v8, 0x4e

    if-eq v7, v8, :cond_21

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_20

    goto :goto_d

    :cond_20
    invoke-static {v5}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-static {v0, v6, v1, v2}, Lnet/sf/saxon/functions/FormatDate;->f(Lnet/sf/saxon/value/DateTimeValue;CLnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0

    :cond_21
    :goto_d
    invoke-static {v0, v2, v1}, Lnet/sf/saxon/functions/FormatDate;->g(Lnet/sf/saxon/value/DateTimeValue;Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lnet/sf/saxon/value/DateTimeValue;Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Lnet/sf/saxon/str/UnicodeString;->indexOf(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/functions/FormatDate;->h(Lnet/sf/saxon/str/UnicodeString;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    const/16 v4, 0x4e

    const/16 v5, 0x6e

    if-eq v3, v4, :cond_2

    invoke-virtual {p2, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/CalendarValue;->appendTimezone(Lnet/sf/saxon/str/UnicodeBuilder;)V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 v3, 0x5

    if-gt v0, v3, :cond_5

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->getTimeZoneNameForDate(Lnet/sf/saxon/value/DateTimeValue;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p2, "Z00:00t"

    invoke-static {p2}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    const/16 v0, 0x5a

    invoke-static {p0, v0, p2, p1}, Lnet/sf/saxon/functions/FormatDate;->f(Lnet/sf/saxon/value/DateTimeValue;CLnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p2, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    if-ne p0, v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0

    :cond_5
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->getOlsonTimeZoneName(Lnet/sf/saxon/value/DateTimeValue;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lnet/sf/saxon/str/UnicodeString;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FOFD1340"

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lnet/sf/saxon/functions/FormatDate;->z:Lnet/sf/saxon/regex/ARegularExpression;

    invoke-virtual {v1, p0}, Lnet/sf/saxon/regex/ARegularExpression;->analyze(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/RegexIterator;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/regex/RegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v2

    const/4 v3, 0x4

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v4

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    invoke-interface {v1}, Lnet/sf/saxon/regex/RegexIterator;->isMatching()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lnet/sf/saxon/regex/RegexIterator;->getRegexGroup(I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ASTERISK:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v5, v4}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    const/4 v5, 0x3

    invoke-interface {v1, v5}, Lnet/sf/saxon/regex/RegexIterator;->getRegexGroup(I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lnet/sf/saxon/str/StringConstants;->ASTERISK:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v5, v1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_3
    :goto_2
    const v1, 0x7fffffff

    :goto_3
    if-lt v4, v2, :cond_5

    if-lt v1, v2, :cond_4

    if-lt v1, v4, :cond_4

    goto :goto_4

    :cond_4
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid max value in format picture "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid min value in format picture "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized width specifier in format picture "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v4, -0x1

    move v1, v4

    :goto_4
    filled-new-array {v4, v1}, [I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Invalid integer used as width in date/time picture"

    invoke-direct {p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 7

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    :goto_0
    sub-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_0

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FOFD1340"

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ""

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "[Calendar: AD]"

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AD"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "ISO"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/sf/saxon/functions/FormatDate;->h:[Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown no-namespace calendar: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    :goto_0
    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid calendar name. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public final b(Lnet/sf/saxon/value/CalendarValue;Ljava/lang/String;)Lnet/sf/saxon/value/CalendarValue;
    .locals 0

    const-string p0, "/"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lnet/sf/saxon/value/TimeValue;

    if-nez p0, :cond_0

    invoke-static {p2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->getNamedTimeZone(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/value/DateTimeValue;->toJavaInstant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    div-int/lit8 p0, p0, 0x3c

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/CalendarValue;->adjustTimezone(I)Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/CalendarValue;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    aget-object v2, p2, v3

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/StringValue;

    const/4 v3, 0x3

    aget-object v3, p2, v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/StringValue;

    const/4 v5, 0x4

    aget-object p2, p2, v5

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    goto :goto_0

    :cond_1
    move-object p2, v4

    move-object v2, p2

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_2

    move-object v5, v4

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-nez v2, :cond_3

    move-object v2, v4

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {p0, v0, v4}, Lnet/sf/saxon/functions/FormatDate;->b(Lnet/sf/saxon/value/CalendarValue;Ljava/lang/String;)Lnet/sf/saxon/value/CalendarValue;

    move-result-object v0

    :cond_5
    invoke-static {v0, v1, v2, v4, p1}, Lnet/sf/saxon/functions/FormatDate;->d(Lnet/sf/saxon/value/CalendarValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_6

    invoke-virtual {p0, v5, p2, p1}, Lnet/sf/saxon/functions/FormatDate;->a(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p0, p2}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
