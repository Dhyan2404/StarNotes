.class final enum Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/util/LocaleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapFormatBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/poi/util/SuppressForbidden;
    value = "DateTimeFormatter::ofLocalizedDate and others will be localized in mapFormatId"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum ABBREVIATED_MONTH_AND_YEAR:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum ALTERNATE_SHORT_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum ALTERNATE_SHORT_DATE_WITH_ABBREVIATED_MONTH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum DATE_AND_HOUR12_TIME:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum DATE_AND_HOUR12_TIME_WITH_SECONDS:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum ENGLISH_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum HOUR12_TIME:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum HOUR12_TIME_WITH_SECONDS:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum HOUR24_TIME:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum HOUR24_TIME_WITH_SECONDS:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum ISO_STANDARD_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum LONG_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum LONG_DATE_WITHOUT_WEEKDAY:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum MONTH_AND_YEAR:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum SHORT_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum SHORT_DATE_WITH_ABBREVIATED_MONTH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

.field public static final enum SHORT_DATE_WITH_SLASHES:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;


# instance fields
.field private final datefmt:Ljava/lang/String;

.field private final formatFct:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/time/format/FormatStyle;",
            "Ljava/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final formatStyle:Ljava/time/format/FormatStyle;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    new-instance v6, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v1, "SHORT_DATE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    new-instance v5, Lcom/sunia/HTREnginev2/e1j;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/e1j;-><init>()V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v6, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->SHORT_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v8, "LONG_DATE"

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v11, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    new-instance v12, Lcom/sunia/HTREnginev2/e1j;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/e1j;-><init>()V

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->LONG_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v2, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v14, "LONG_DATE_WITHOUT_WEEKDAY"

    const/4 v15, 0x2

    const-string v16, "d. MMMM yyyy"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v2, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->LONG_DATE_WITHOUT_WEEKDAY:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v3, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v8, "ALTERNATE_SHORT_DATE"

    const/4 v9, 0x3

    const-string v10, "dd/MM/yy"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v3, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->ALTERNATE_SHORT_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v4, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v14, "ISO_STANDARD_DATE"

    const/4 v15, 0x4

    const-string v16, "yyyy-MM-dd"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v4, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->ISO_STANDARD_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v5, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v8, "SHORT_DATE_WITH_ABBREVIATED_MONTH"

    const/4 v9, 0x5

    const-string v10, "d-MMM-yy"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v5, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->SHORT_DATE_WITH_ABBREVIATED_MONTH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v7, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v14, "SHORT_DATE_WITH_SLASHES"

    const/4 v15, 0x6

    const-string v16, "d/M/y"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v7, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->SHORT_DATE_WITH_SLASHES:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v17, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v9, "ALTERNATE_SHORT_DATE_WITH_ABBREVIATED_MONTH"

    const/4 v10, 0x7

    const-string v11, "d. MMM yy"

    const/4 v13, 0x0

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v17, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->ALTERNATE_SHORT_DATE_WITH_ABBREVIATED_MONTH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v8, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v19, "ENGLISH_DATE"

    const/16 v20, 0x8

    const-string v21, "d MMMM yyyy"

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v23}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v8, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->ENGLISH_DATE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v18, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v10, "MONTH_AND_YEAR"

    const/16 v11, 0x9

    const-string v12, "MMMM yy"

    const/4 v14, 0x0

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v18, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->MONTH_AND_YEAR:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v10, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    const-string v20, "ABBREVIATED_MONTH_AND_YEAR"

    const/16 v21, 0xa

    invoke-static {}, Lorg/apache/poi/hslf/util/LocaleDateFormat;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MMM-yy"

    goto :goto_0

    :cond_0
    const-string v0, "LLL-yy"

    :goto_0
    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v10, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->ABBREVIATED_MONTH_AND_YEAR:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    move-object v11, v0

    const-string v26, "DATE_AND_HOUR12_TIME"

    const/16 v27, 0xb

    const/16 v28, 0x0

    sget-object v29, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    new-instance v30, Lorg/apache/poi/hslf/util/a;

    invoke-direct/range {v30 .. v30}, Lorg/apache/poi/hslf/util/a;-><init>()V

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v30}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->DATE_AND_HOUR12_TIME:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    move-object v12, v0

    const-string v20, "DATE_AND_HOUR12_TIME_WITH_SECONDS"

    const/16 v21, 0xc

    const/16 v22, 0x0

    sget-object v23, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    new-instance v24, Lorg/apache/poi/hslf/util/b;

    invoke-direct/range {v24 .. v24}, Lorg/apache/poi/hslf/util/b;-><init>()V

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->DATE_AND_HOUR12_TIME_WITH_SECONDS:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    move-object v13, v0

    const-string v26, "HOUR12_TIME"

    const/16 v27, 0xd

    const-string v28, "K:mm"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v30}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->HOUR12_TIME:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    move-object v14, v0

    const-string v20, "HOUR12_TIME_WITH_SECONDS"

    const/16 v21, 0xe

    const-string v22, "K:mm:ss"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->HOUR12_TIME_WITH_SECONDS:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    move-object v15, v0

    const-string v26, "HOUR24_TIME"

    const/16 v27, 0xf

    const-string v28, "HH:mm"

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v30}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->HOUR24_TIME:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    move-object/from16 v16, v0

    const-string v20, "HOUR24_TIME_WITH_SECONDS"

    const/16 v21, 0x10

    const-string v22, "HH:mm:ss"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->HOUR24_TIME_WITH_SECONDS:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    move-object v0, v6

    move-object v6, v7

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    filled-new-array/range {v0 .. v16}, [Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->$VALUES:[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/format/FormatStyle;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/format/FormatStyle;",
            "Ljava/util/function/Function<",
            "Ljava/time/format/FormatStyle;",
            "Ljava/time/format/DateTimeFormatter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->formatStyle:Ljava/time/format/FormatStyle;

    iput-object p3, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->datefmt:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->formatFct:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->lambda$static$0(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->lambda$static$1(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 2

    new-instance p0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v0, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    sget-object v0, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    invoke-virtual {p0, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$1(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 3

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static mapFormatId(Ljava/util/Locale;I)Ljava/time/format/DateTimeFormatter;
    .locals 2

    invoke-static {}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->values()[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    move-result-object v0

    if-ltz p1, :cond_2

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object p1, v0, p1

    iget-object v0, p1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->datefmt:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->formatFct:Ljava/util/function/Function;

    iget-object p1, p1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->formatStyle:Ljava/time/format/FormatStyle;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->$VALUES:[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatBase;

    return-object v0
.end method
