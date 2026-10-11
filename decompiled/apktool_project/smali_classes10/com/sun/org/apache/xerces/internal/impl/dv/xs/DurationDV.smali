.class public Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;
.source "SourceFile"


# static fields
.field private static final DATETIMES:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

.field public static final DAYTIMEDURATION_TYPE:I = 0x2

.field public static final DURATION_TYPE:I = 0x0

.field public static final YEARMONTHDURATION_TYPE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    new-instance v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v1, 0x6a0

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x5a

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v14, 0x6a1

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x5a

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v26, 0x76f

    const/16 v27, 0x3

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x5a

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v25, v1

    invoke-direct/range {v25 .. v36}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v14, 0x76f

    const/4 v15, 0x7

    move-object v13, v2

    invoke-direct/range {v13 .. v24}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V

    filled-new-array {v12, v0, v1, v2}, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->DATETIMES:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;-><init>()V

    return-void
.end method

.method private addDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 7

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->resetDateObj(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    iget v0, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->modulo(III)I

    move-result v3

    iput v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->fQuotient(III)I

    move-result v0

    iget v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v4, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    iput v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget-wide v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget-wide v5, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    div-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    mul-int/lit8 v5, v0, 0x3c

    int-to-double v5, v5

    sub-double/2addr v3, v5

    iput-wide v3, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v4, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    const/16 v0, 0x3c

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->mod(III)I

    move-result v0

    iput v0, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v0, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v3, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    const/16 v3, 0x18

    invoke-virtual {p0, v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->mod(III)I

    move-result v0

    iput v0, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget p2, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    add-int/2addr p2, p1

    add-int/2addr p2, v4

    iput p2, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    :goto_0
    iget p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget p2, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result p1

    iget p2, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ge p2, v1, :cond_0

    iget p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v0, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    if-le p2, p1, :cond_1

    sub-int/2addr p2, p1

    iput p2, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    move p1, v1

    :goto_1
    iget p2, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->modulo(III)I

    move-result p1

    iput p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->fQuotient(III)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    iput p0, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    return-object p3
.end method

.method private compareResults(SSZ)S
    .locals 0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    return p0

    :cond_0
    if-eq p1, p2, :cond_1

    if-eqz p3, :cond_1

    return p0

    :cond_1
    if-eq p1, p2, :cond_4

    if-nez p3, :cond_4

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    return p0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, p2

    :cond_4
    :goto_0
    return p1
.end method


# virtual methods
.method public compareDates(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S
    .locals 9

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v3, v2, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V

    filled-new-array {v0, v3}, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->DATETIMES:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v3, v2, v1

    aget-object v4, v0, v1

    invoke-direct {p0, p1, v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->addDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v3

    aget-object v4, v2, v1

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-direct {p0, p2, v4, v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->addDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    return v4

    :cond_1
    aget-object v6, v2, v5

    aget-object v7, v0, v1

    invoke-direct {p0, p1, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->addDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v6

    aget-object v7, v2, v5

    aget-object v8, v0, v5

    invoke-direct {p0, p2, v7, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->addDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v6

    invoke-direct {p0, v3, v6, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->compareResults(SSZ)S

    move-result v3

    if-ne v3, v4, :cond_2

    return v4

    :cond_2
    aget-object v6, v2, v4

    aget-object v7, v0, v1

    invoke-direct {p0, p1, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->addDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v6

    aget-object v7, v2, v4

    aget-object v8, v0, v5

    invoke-direct {p0, p2, v7, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->addDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v6

    invoke-direct {p0, v3, v6, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->compareResults(SSZ)S

    move-result v3

    if-ne v3, v4, :cond_3

    return v4

    :cond_3
    const/4 v4, 0x3

    aget-object v6, v2, v4

    aget-object v1, v0, v1

    invoke-direct {p0, p1, v6, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->addDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object p1

    aget-object v1, v2, v4

    aget-object v0, v0, v5

    invoke-direct {p0, p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->addDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result p1

    invoke-direct {p0, v3, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->compareResults(SSZ)S

    move-result p0

    return p0
.end method

.method public dateToString(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 7

    new-instance p0, Ljava/lang/StringBuffer;

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const-wide/16 v1, 0x0

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v0, :cond_0

    iget-wide v3, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double v0, v3, v1

    if-gez v0, :cond_1

    :cond_0
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-gez v0, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    mul-int/2addr v5, v0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x59

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-gez v0, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    mul-int/2addr v5, v0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v5, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-gez v5, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    mul-int/2addr v6, v5

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v5, 0x44

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x54

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v5, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-gez v5, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    mul-int/2addr v6, v5

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v5, 0x48

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v5, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-gez v5, :cond_6

    move v6, v3

    goto :goto_4

    :cond_6
    move v6, v4

    :goto_4
    mul-int/2addr v6, v5

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-wide v5, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double p1, v5, v1

    if-gez p1, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    int-to-double v0, v3

    mul-double/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const/16 p1, 0x53

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActualValue(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->parse(Ljava/lang/String;I)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    const-string p2, "duration"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljavax/xml/datatype/Duration;
    .locals 14

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-ltz v2, :cond_1

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ltz v2, :cond_1

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v2, :cond_1

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v2, :cond_1

    iget-wide v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->factory:Ljavax/xml/datatype/DatatypeFactory;

    if-ne v2, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move v4, v1

    const/high16 p0, -0x80000000

    const/4 v1, 0x0

    if-eq v0, p0, :cond_3

    mul-int/2addr v0, v2

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, v1

    :goto_3
    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-eq v0, p0, :cond_4

    mul-int/2addr v0, v2

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v6, v0

    goto :goto_4

    :cond_4
    move-object v6, v1

    :goto_4
    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-eq v0, p0, :cond_5

    mul-int/2addr v0, v2

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v7, v0

    goto :goto_5

    :cond_5
    move-object v7, v1

    :goto_5
    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-eq v0, p0, :cond_6

    mul-int/2addr v0, v2

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    move-object v8, v0

    goto :goto_6

    :cond_6
    move-object v8, v1

    :goto_6
    iget v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-eq v0, p0, :cond_7

    mul-int/2addr v0, v2

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    move-object v9, p0

    goto :goto_7

    :cond_7
    move-object v9, v1

    :goto_7
    iget-wide v10, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/high16 v12, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double p0, v10, v12

    if-eqz p0, :cond_8

    new-instance p0, Ljava/math/BigDecimal;

    int-to-double v0, v2

    iget-wide v10, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v10, p0

    goto :goto_8

    :cond_8
    move-object v10, v1

    :goto_8
    invoke-virtual/range {v3 .. v10}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/lang/String;I)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v1, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/16 v5, 0x50

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-ne v3, v4, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    iput v6, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v3, v4, :cond_4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw p0

    :cond_4
    move v3, v7

    :goto_2
    iget v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/4 v8, -0x1

    if-ne v5, v4, :cond_5

    move v4, v8

    goto :goto_3

    :cond_5
    move v4, v7

    :goto_3
    const/16 v5, 0x54

    invoke-virtual {p0, p1, v3, v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v9

    if-ne v9, v8, :cond_6

    move v9, v0

    goto :goto_4

    :cond_6
    if-eq p2, v7, :cond_15

    :goto_4
    const/16 v10, 0x59

    invoke-virtual {p0, p1, v3, v9, v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v10

    if-eq v10, v8, :cond_8

    if-eq p2, v6, :cond_7

    invoke-virtual {p0, p1, v3, v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v2

    mul-int/2addr v2, v4

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    add-int/lit8 v3, v10, 0x1

    move v2, v7

    goto :goto_5

    :cond_7
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw p0

    :cond_8
    :goto_5
    const/16 v10, 0x4d

    invoke-virtual {p0, p1, v3, v9, v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v11

    if-eq v11, v8, :cond_a

    if-eq p2, v6, :cond_9

    invoke-virtual {p0, p1, v3, v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v2

    mul-int/2addr v2, v4

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/lit8 v3, v11, 0x1

    move v2, v7

    goto :goto_6

    :cond_9
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw p0

    :cond_a
    :goto_6
    const/16 v6, 0x44

    invoke-virtual {p0, p1, v3, v9, v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v6

    if-eq v6, v8, :cond_c

    if-eq p2, v7, :cond_b

    invoke-virtual {p0, p1, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result p2

    mul-int/2addr p2, v4

    iput p2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    add-int/lit8 v3, v6, 0x1

    move v2, v7

    goto :goto_7

    :cond_b
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw p0

    :cond_c
    :goto_7
    if-ne v0, v9, :cond_e

    if-ne v3, v0, :cond_d

    goto :goto_8

    :cond_d
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw p0

    :cond_e
    :goto_8
    if-eq v0, v9, :cond_13

    add-int/2addr v3, v7

    const/16 p2, 0x48

    invoke-virtual {p0, p1, v3, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->indexOf(Ljava/lang/String;IIC)I

    move-result p2

    if-eq p2, v8, :cond_f

    invoke-virtual {p0, p1, v3, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v2

    mul-int/2addr v2, v4

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    add-int/lit8 v3, p2, 0x1

    move v2, v7

    :cond_f
    invoke-virtual {p0, p1, v3, v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->indexOf(Ljava/lang/String;IIC)I

    move-result p2

    if-eq p2, v8, :cond_10

    invoke-virtual {p0, p1, v3, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v2

    mul-int/2addr v2, v4

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    add-int/lit8 v3, p2, 0x1

    move v2, v7

    :cond_10
    const/16 p2, 0x53

    invoke-virtual {p0, p1, v3, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->indexOf(Ljava/lang/String;IIC)I

    move-result p2

    if-eq p2, v8, :cond_11

    int-to-double v9, v4

    invoke-virtual {p0, p1, v3, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;->parseSecond(Ljava/lang/String;II)D

    move-result-wide v2

    mul-double/2addr v9, v2

    iput-wide v9, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    add-int/lit8 v3, p2, 0x1

    goto :goto_9

    :cond_11
    move v7, v2

    :goto_9
    if-ne v3, v0, :cond_12

    add-int/2addr v3, v8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v5, :cond_12

    move v2, v7

    goto :goto_a

    :cond_12
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw p0

    :cond_13
    :goto_a
    if-eqz v2, :cond_14

    return-object v1

    :cond_14
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw p0

    :cond_15
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw p0
.end method

.method public parseSecond(Ljava/lang/String;II)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 p0, -0x1

    move v0, p2

    :goto_0
    const-string v1, "\' has wrong format"

    const-string v2, "\'"

    if-ge v0, p3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    if-eq p0, p3, :cond_3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
