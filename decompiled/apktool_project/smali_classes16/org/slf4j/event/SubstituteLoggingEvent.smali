.class public Lorg/slf4j/event/SubstituteLoggingEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/slf4j/event/LoggingEvent;


# instance fields
.field public a:Lorg/slf4j/event/Level;

.field public b:Lorg/slf4j/Marker;

.field public c:Ljava/lang/String;

.field public d:Lorg/slf4j/helpers/SubstituteLogger;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[Ljava/lang/Object;

.field public h:J

.field public i:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgumentArray()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->g:[Ljava/lang/Object;

    return-object p0
.end method

.method public getLevel()Lorg/slf4j/event/Level;
    .locals 0

    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->a:Lorg/slf4j/event/Level;

    return-object p0
.end method

.method public getLogger()Lorg/slf4j/helpers/SubstituteLogger;
    .locals 0

    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->d:Lorg/slf4j/helpers/SubstituteLogger;

    return-object p0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getMarker()Lorg/slf4j/Marker;
    .locals 0

    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->b:Lorg/slf4j/Marker;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->i:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->h:J

    return-wide v0
.end method

.method public setArgumentArray([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->g:[Ljava/lang/Object;

    return-void
.end method

.method public setLevel(Lorg/slf4j/event/Level;)V
    .locals 0

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->a:Lorg/slf4j/event/Level;

    return-void
.end method

.method public setLogger(Lorg/slf4j/helpers/SubstituteLogger;)V
    .locals 0

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->d:Lorg/slf4j/helpers/SubstituteLogger;

    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->c:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Lorg/slf4j/Marker;)V
    .locals 0

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->b:Lorg/slf4j/Marker;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->f:Ljava/lang/String;

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->e:Ljava/lang/String;

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->i:Ljava/lang/Throwable;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->h:J

    return-void
.end method
