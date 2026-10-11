.class final enum Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/PropertiesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum DAYS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum HOURS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum MICROS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum MILLIS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum MINUTES:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum NANOS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum SECONDS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;


# instance fields
.field private final descriptions:[Ljava/lang/String;

.field private final timeUnit:Ljava/time/temporal/ChronoUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    const-string v1, "ns,nano,nanos,nanosecond,nanoseconds"

    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    const-string v3, "NANOS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->NANOS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    new-instance v1, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    const-string v2, "us,micro,micros,microsecond,microseconds"

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    const-string v4, "MICROS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v1, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->MICROS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    new-instance v2, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    const-string v3, "ms,milli,millis,millsecond,milliseconds"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    const-string v5, "MILLIS"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v2, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->MILLIS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    new-instance v3, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    const-string v4, "s,second,seconds"

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-string v6, "SECONDS"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v3, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->SECONDS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    new-instance v4, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    const-string v5, "m,minute,minutes"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    const-string v7, "MINUTES"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v4, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->MINUTES:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    new-instance v5, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    const-string v6, "h,hour,hours"

    sget-object v7, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    const-string v8, "HOURS"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v5, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->HOURS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    new-instance v6, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    const-string v7, "d,day,days"

    sget-object v8, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-string v9, "DAYS"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v6, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->DAYS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    filled-new-array/range {v0 .. v6}, [Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->$VALUES:[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "descriptions",
            "timeUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/temporal/ChronoUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->descriptions:[Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->timeUnit:Ljava/time/temporal/ChronoUnit;

    return-void
.end method

.method public static getDuration(Ljava/lang/String;)Ljava/time/Duration;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->values()[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    move-result-object v1

    array-length v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_2

    aget-object v7, v1, v6

    iget-object v8, v7, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->descriptions:[Ljava/lang/String;

    array-length v9, v8

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    invoke-virtual {p0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v0, v7, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->timeUnit:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3, v4, v0}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    return-object p0
.end method

.method public static values()[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->$VALUES:[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    return-object v0
.end method


# virtual methods
.method public getTimeUnit()Ljava/time/temporal/ChronoUnit;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->timeUnit:Ljava/time/temporal/ChronoUnit;

    return-object p0
.end method
