.class public Lorg/apache/logging/log4j/simple/SimpleLogger;
.super Lorg/apache/logging/log4j/spi/AbstractLogger;
.source "SourceFile"


# static fields
.field private static final SPACE:C = ' '

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final dateFormatter:Ljava/text/DateFormat;

.field private level:Lorg/apache/logging/log4j/Level;

.field private final logName:Ljava/lang/String;

.field private final showContextMap:Z

.field private final showDateTime:Z

.field private stream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;ZZZZLjava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/util/PropertiesUtil;Ljava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultLevel",
            "showLogName",
            "showShortLogName",
            "showDateTime",
            "showContextMap",
            "dateTimeFormat",
            "messageFactory",
            "props",
            "stream"
        }
    .end annotation

    invoke-direct {p0, p1, p8}, Lorg/apache/logging/log4j/spi/AbstractLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "org.apache.logging.log4j.simplelog."

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".level"

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p9, p8}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    invoke-static {p8, p2}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    const/4 p2, 0x0

    if-eqz p4, :cond_1

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p3, p4, :cond_0

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    :goto_0
    iput-boolean p5, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->showDateTime:Z

    iput-boolean p6, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->showContextMap:Z

    iput-object p10, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    if-eqz p5, :cond_3

    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->dateFormatter:Ljava/text/DateFormat;

    goto :goto_2

    :cond_3
    iput-object p2, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->dateFormatter:Ljava/text/DateFormat;

    :goto_2
    return-void
.end method


# virtual methods
.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    return-object p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 10
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public varargs isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "p1"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "testLevel",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "mgsLevel",
            "marker",
            "msg",
            "throwable"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p3, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->showDateTime:Z

    const/16 v0, 0x20

    if-eqz p3, :cond_0

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->dateFormatter:Ljava/text/DateFormat;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->dateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->logName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p4}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->showContextMap:Z

    if-eqz p2, :cond_2

    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getImmutableContext()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {p4}, Lorg/apache/logging/log4j/message/Message;->getParameters()[Ljava/lang/Object;

    move-result-object p2

    if-nez p5, :cond_3

    if-eqz p2, :cond_3

    array-length p3, p2

    if-lez p3, :cond_3

    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    aget-object p3, p2, p3

    instance-of p3, p3, Ljava/lang/Throwable;

    if-eqz p3, :cond_3

    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    aget-object p2, p2, p3

    move-object p5, p2

    check-cast p5, Ljava/lang/Throwable;

    :cond_3
    iget-object p2, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    iget-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(C)V

    iget-object p0, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    invoke-virtual {p5, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    return-void
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->level:Lorg/apache/logging/log4j/Level;

    :cond_0
    return-void
.end method

.method public setStream(Ljava/io/PrintStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stream"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/simple/SimpleLogger;->stream:Ljava/io/PrintStream;

    return-void
.end method
