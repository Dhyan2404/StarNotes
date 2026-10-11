.class public final Lcom/twelvemonkeys/lang/DateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CALENDAR_YEAR:J = 0x758f0dfc0L

.field public static final DAY:J = 0x5265c00L

.field public static final HOUR:J = 0x36ee80L

.field public static final MINUTE:J = 0xea60L

.field public static final SECOND:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentTimeDay()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/lang/DateUtil;->roundToDay(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static currentTimeHour()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/lang/DateUtil;->roundToHour(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static currentTimeMinute()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/lang/DateUtil;->roundToMinute(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static currentTimeSecond()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/lang/DateUtil;->roundToSecond(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static delta(J)J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static delta(Ljava/util/Date;)J
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static roundToDay(J)J
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/twelvemonkeys/lang/DateUtil;->roundToDay(JLjava/util/TimeZone;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static roundToDay(JLjava/util/TimeZone;)J
    .locals 4

    .line 2
    invoke-virtual {p2, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p2

    int-to-long v0, p2

    add-long/2addr p0, v0

    const-wide/32 v2, 0x5265c00

    .line 3
    div-long/2addr p0, v2

    mul-long/2addr p0, v2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static roundToHour(J)J
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/twelvemonkeys/lang/DateUtil;->roundToHour(JLjava/util/TimeZone;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static roundToHour(JLjava/util/TimeZone;)J
    .locals 2

    .line 2
    invoke-virtual {p2, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p2

    const-wide/32 v0, 0x36ee80

    .line 3
    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    int-to-long v0, p2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static roundToMinute(J)J
    .locals 2

    const-wide/32 v0, 0xea60

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static roundToSecond(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method
