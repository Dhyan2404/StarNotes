.class public Lorg/apache/logging/log4j/status/StatusData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3c4195b3c6273e41L


# instance fields
.field private final caller:Ljava/lang/StackTraceElement;

.field private final level:Lorg/apache/logging/log4j/Level;

.field private final msg:Lorg/apache/logging/log4j/message/Message;

.field private threadName:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "caller",
            "level",
            "msg",
            "t",
            "threadName"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/status/StatusData;->timestamp:J

    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusData;->caller:Ljava/lang/StackTraceElement;

    iput-object p2, p0, Lorg/apache/logging/log4j/status/StatusData;->level:Lorg/apache/logging/log4j/Level;

    iput-object p3, p0, Lorg/apache/logging/log4j/status/StatusData;->msg:Lorg/apache/logging/log4j/message/Message;

    iput-object p4, p0, Lorg/apache/logging/log4j/status/StatusData;->throwable:Ljava/lang/Throwable;

    iput-object p5, p0, Lorg/apache/logging/log4j/status/StatusData;->threadName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormattedStatus()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss,SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lorg/apache/logging/log4j/status/StatusData;->timestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/status/StatusData;->getThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/status/StatusData;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/status/StatusData;->msg:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v2}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/status/StatusData;->msg:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v2}, Lorg/apache/logging/log4j/message/Message;->getParameters()[Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusData;->throwable:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    array-length p0, v2

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v2, p0

    check-cast p0, Ljava/lang/Throwable;

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusData;->level:Lorg/apache/logging/log4j/Level;

    return-object p0
.end method

.method public getMessage()Lorg/apache/logging/log4j/message/Message;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusData;->msg:Lorg/apache/logging/log4j/message/Message;

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusData;->caller:Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusData;->threadName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/status/StatusData;->threadName:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusData;->threadName:Ljava/lang/String;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusData;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/logging/log4j/status/StatusData;->timestamp:J

    return-wide v0
.end method
