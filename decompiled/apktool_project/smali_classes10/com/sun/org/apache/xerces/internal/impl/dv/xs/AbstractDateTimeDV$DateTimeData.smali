.class final Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/datatypes/XSDateTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DateTimeData"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field day:I

.field hour:I

.field minute:I

.field month:I

.field normalized:Z

.field private originalValue:Ljava/lang/String;

.field position:I

.field second:D

.field timezoneHr:I

.field timezoneMin:I

.field final type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

.field unNormDay:I

.field unNormHour:I

.field unNormMinute:I

.field unNormMonth:I

.field unNormSecond:D

.field unNormYear:I

.field utc:I

.field year:I


# direct methods
.method public constructor <init>(IIIIIDILjava/lang/String;ZLcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p10, 0x1

    .line 6
    iput-boolean p10, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    .line 7
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 8
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 9
    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 10
    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 11
    iput p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    .line 12
    iput-wide p6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    .line 13
    iput p8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 14
    iput-object p11, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    .line 15
    iput-object p9, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 13

    new-instance v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget-wide v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    iget-object v11, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    iput-object v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    iput v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    iput v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    iput v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    iput v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    iput v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    iput v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    iput v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    iget-wide v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    iput-wide v0, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->compareDates(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public getDays()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    :goto_0
    return p0
.end method

.method public getDuration()Ljavax/xml/datatype/Duration;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->getDuration(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljavax/xml/datatype/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getHours()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    :goto_0
    return p0
.end method

.method public getLexicalValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->originalValue:Ljava/lang/String;

    return-object p0
.end method

.method public getMinutes()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    :goto_0
    return p0
.end method

.method public getMonths()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    mul-int/lit8 v0, v0, 0xc

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    :goto_0
    return p0
.end method

.method public getSeconds()D
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    add-double/2addr v0, v2

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    :goto_0
    return-wide v0
.end method

.method public getTimeZoneHours()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    return p0
.end method

.method public getTimeZoneMinutes()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    return p0
.end method

.method public getXMLGregorianCalendar()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->getXMLGregorianCalendar(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    return-object p0
.end method

.method public getYears()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    :goto_0
    return p0
.end method

.method public hasTimeZone()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormalized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    return p0
.end method

.method public normalize()Lcom/sun/org/apache/xerces/internal/xs/datatypes/XSDateTime;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    :cond_0
    return-object p0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->type:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV;->dateToString(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
