.class public Lnet/sf/saxon/expr/number/Numberer_en;
.super Lnet/sf/saxon/expr/number/AbstractNumberer;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static final m:[Ljava/lang/String;

.field public static final n:[Ljava/lang/String;

.field public static final o:[Ljava/lang/String;

.field public static final p:[Ljava/lang/String;

.field public static final q:[I


# instance fields
.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const-string v0, "Zero"

    const-string v1, "One"

    const-string v2, "Two"

    const-string v3, "Three"

    const-string v4, "Four"

    const-string v5, "Five"

    const-string v6, "Six"

    const-string v7, "Seven"

    const-string v8, "Eight"

    const-string v9, "Nine"

    const-string v10, "Ten"

    const-string v11, "Eleven"

    const-string v12, "Twelve"

    const-string v13, "Thirteen"

    const-string v14, "Fourteen"

    const-string v15, "Fifteen"

    const-string v16, "Sixteen"

    const-string v17, "Seventeen"

    const-string v18, "Eighteen"

    const-string v19, "Nineteen"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->j:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "Ten"

    const-string v3, "Twenty"

    const-string v4, "Thirty"

    const-string v5, "Forty"

    const-string v6, "Fifty"

    const-string v7, "Sixty"

    const-string v8, "Seventy"

    const-string v9, "Eighty"

    const-string v10, "Ninety"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->k:[Ljava/lang/String;

    const-string v1, "Zeroth"

    const-string v2, "First"

    const-string v3, "Second"

    const-string v4, "Third"

    const-string v5, "Fourth"

    const-string v6, "Fifth"

    const-string v7, "Sixth"

    const-string v8, "Seventh"

    const-string v9, "Eighth"

    const-string v10, "Ninth"

    const-string v11, "Tenth"

    const-string v12, "Eleventh"

    const-string v13, "Twelfth"

    const-string v14, "Thirteenth"

    const-string v15, "Fourteenth"

    const-string v16, "Fifteenth"

    const-string v17, "Sixteenth"

    const-string v18, "Seventeenth"

    const-string v19, "Eighteenth"

    const-string v20, "Nineteenth"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->l:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "Tenth"

    const-string v3, "Twentieth"

    const-string v4, "Thirtieth"

    const-string v5, "Fortieth"

    const-string v6, "Fiftieth"

    const-string v7, "Sixtieth"

    const-string v8, "Seventieth"

    const-string v9, "Eightieth"

    const-string v10, "Ninetieth"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->m:[Ljava/lang/String;

    const-string v1, "January"

    const-string v2, "February"

    const-string v3, "March"

    const-string v4, "April"

    const-string v5, "May"

    const-string v6, "June"

    const-string v7, "July"

    const-string v8, "August"

    const-string v9, "September"

    const-string v10, "October"

    const-string v11, "November"

    const-string v12, "December"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->n:[Ljava/lang/String;

    const-string v1, "Monday"

    const-string v2, "Tuesday"

    const-string v3, "Wednesday"

    const-string v4, "Thursday"

    const-string v5, "Friday"

    const-string v6, "Saturday"

    const-string v7, "Sunday"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->o:[Ljava/lang/String;

    const-string v1, "Mon"

    const-string v2, "Tues"

    const-string v3, "Weds"

    const-string v4, "Thurs"

    const-string v5, "Fri"

    const-string v6, "Sat"

    const-string v7, "Sun"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->p:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->q:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x1
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/number/AbstractNumberer;-><init>()V

    const-string v0, " "

    iput-object v0, p0, Lnet/sf/saxon/expr/number/Numberer_en;->h:Ljava/lang/String;

    const-string v0, "-"

    iput-object v0, p0, Lnet/sf/saxon/expr/number/Numberer_en;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dayName(III)Ljava/lang/String;
    .locals 4

    sget-object p0, Lnet/sf/saxon/expr/number/Numberer_en;->o:[Ljava/lang/String;

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    move p3, v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, p3, :cond_1

    sget-object p0, Lnet/sf/saxon/expr/number/Numberer_en;->p:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p3, :cond_1

    invoke-virtual {p0, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p2, :cond_2

    const/16 p0, 0x20

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    sget-object p2, Lnet/sf/saxon/expr/number/Numberer_en;->q:[I

    aget p1, p2, p1

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public monthName(III)Ljava/lang/String;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/number/Numberer_en;->n:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    const/4 p1, 0x3

    if-ge p3, p1, :cond_0

    move p3, p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p3, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p2, :cond_2

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ordinalSuffix(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    const-wide/16 p0, 0x64

    rem-long p0, p2, p0

    long-to-int p0, p0

    div-int/lit8 p0, p0, 0xa

    const-wide/16 v0, 0xa

    rem-long/2addr p2, v0

    long-to-int p1, p2

    const-string p2, "th"

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    return-object p2

    :cond_0
    if-ne p1, p3, :cond_1

    const-string p0, "st"

    return-object p0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    const-string p0, "nd"

    return-object p0

    :cond_2
    const/4 p0, 0x3

    if-ne p1, p0, :cond_3

    const-string p0, "rd"

    return-object p0

    :cond_3
    return-object p2
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/number/AbstractNumberer;->setLanguage(Ljava/lang/String;)V

    const-string v0, "-x-hyphen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/number/Numberer_en;->setTensUnitsSeparatorOrdinal(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/number/Numberer_en;->setTensUnitsSeparatorCardinal(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "-x-nohyphen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, " "

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/number/Numberer_en;->setTensUnitsSeparatorOrdinal(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/number/Numberer_en;->setTensUnitsSeparatorCardinal(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTensUnitsSeparatorCardinal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/number/Numberer_en;->h:Ljava/lang/String;

    return-void
.end method

.method public setTensUnitsSeparatorOrdinal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/number/Numberer_en;->i:Ljava/lang/String;

    return-void
.end method

.method public toOrdinalWords(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    const-wide/32 v5, 0x3b9aca00

    cmp-long v7, v2, v5

    const-string v8, " "

    const-string v9, " and "

    const-string v10, "th"

    const-wide/16 v11, 0x0

    if-ltz v7, :cond_2

    rem-long v13, v2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Billion"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v13, v11

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v5, 0x64

    cmp-long v3, v13, v5

    if-gez v3, :cond_1

    move-object v8, v9

    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v13, v14, v4}, Lnet/sf/saxon/expr/number/Numberer_en;->toOrdinalWords(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_2
    const-wide/32 v5, 0xf4240

    cmp-long v7, v2, v5

    if-ltz v7, :cond_5

    rem-long v13, v2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Million"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v13, v11

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v5, 0x64

    cmp-long v3, v13, v5

    if-gez v3, :cond_4

    move-object v8, v9

    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v13, v14, v4}, Lnet/sf/saxon/expr/number/Numberer_en;->toOrdinalWords(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_5
    const-wide/16 v5, 0x3e8

    cmp-long v7, v2, v5

    if-ltz v7, :cond_8

    rem-long v13, v2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Thousand"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v13, v11

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v5, 0x64

    cmp-long v3, v13, v5

    if-gez v3, :cond_7

    move-object v8, v9

    :cond_7
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v13, v14, v4}, Lnet/sf/saxon/expr/number/Numberer_en;->toOrdinalWords(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    const-wide/16 v5, 0x64

    cmp-long v7, v2, v5

    if-ltz v7, :cond_a

    rem-long v7, v2, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Hundred"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v7, v11

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v7, v8, v4}, Lnet/sf/saxon/expr/number/Numberer_en;->toOrdinalWords(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    const-wide/16 v5, 0x14

    cmp-long v1, v2, v5

    if-gez v1, :cond_b

    sget-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->l:[Ljava/lang/String;

    long-to-int v1, v2

    aget-object v0, v0, v1

    goto :goto_4

    :cond_b
    const-wide/16 v5, 0xa

    rem-long v5, v2, v5

    long-to-int v1, v5

    if-nez v1, :cond_c

    sget-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->m:[Ljava/lang/String;

    long-to-int v1, v2

    div-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    goto :goto_4

    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lnet/sf/saxon/expr/number/Numberer_en;->k:[Ljava/lang/String;

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0xa

    aget-object v2, v6, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lnet/sf/saxon/expr/number/Numberer_en;->i:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lnet/sf/saxon/expr/number/Numberer_en;->l:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-nez v4, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v1, 0x1

    if-ne v4, v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public toWords(J)Ljava/lang/String;
    .locals 12

    const-wide/32 v0, 0x3b9aca00

    cmp-long v2, p1, v0

    const-string v3, " "

    const-string v4, " and "

    const-wide/16 v5, 0x0

    const-string v7, ""

    const-wide/16 v8, 0x64

    if-ltz v2, :cond_2

    rem-long v10, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Billion"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p1, v10, v5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long p2, v10, v8

    if-gez p2, :cond_1

    move-object v3, v4

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v0, 0xf4240

    cmp-long v2, p1, v0

    if-ltz v2, :cond_5

    rem-long v10, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Million"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p1, v10, v5

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long p2, v10, v8

    if-gez p2, :cond_4

    move-object v3, v4

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    rem-long v10, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Thousand"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p1, v10, v5

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long p2, v10, v8

    if-gez p2, :cond_7

    move-object v3, v4

    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    cmp-long v0, p1, v8

    if-ltz v0, :cond_a

    rem-long v0, p1, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v8

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Hundred"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p1, v0, v5

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/number/Numberer_en;->toWords(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-wide/16 v0, 0x14

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    sget-object p0, Lnet/sf/saxon/expr/number/Numberer_en;->j:[Ljava/lang/String;

    long-to-int p1, p1

    aget-object p0, p0, p1

    return-object p0

    :cond_b
    const-wide/16 v0, 0xa

    rem-long v0, p1, v0

    long-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/sf/saxon/expr/number/Numberer_en;->k:[Ljava/lang/String;

    long-to-int p1, p1

    div-int/lit8 p1, p1, 0xa

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/expr/number/Numberer_en;->h:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lnet/sf/saxon/expr/number/Numberer_en;->j:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
