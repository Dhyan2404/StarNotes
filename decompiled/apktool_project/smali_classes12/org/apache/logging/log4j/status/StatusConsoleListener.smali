.class public Lorg/apache/logging/log4j/status/StatusConsoleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/status/StatusListener;


# instance fields
.field public e:Lorg/apache/logging/log4j/Level;

.field public f:[Ljava/lang/String;

.field public final g:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/Level;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/status/StatusConsoleListener;-><init>(Lorg/apache/logging/log4j/Level;Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/Level;Ljava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "stream"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->e:Lorg/apache/logging/log4j/Level;

    if-eqz p2, :cond_0

    .line 4
    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->e:Lorg/apache/logging/log4j/Level;

    .line 5
    iput-object p2, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->g:Ljava/io/PrintStream;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must provide a stream to use for this listener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->g:Ljava/io/PrintStream;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    :cond_0
    return-void
.end method

.method public final f(Lorg/apache/logging/log4j/status/StatusData;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/status/StatusData;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->f:[Ljava/lang/String;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getStatusLevel()Lorg/apache/logging/log4j/Level;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->e:Lorg/apache/logging/log4j/Level;

    return-object p0
.end method

.method public log(Lorg/apache/logging/log4j/status/StatusData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/status/StatusConsoleListener;->f(Lorg/apache/logging/log4j/status/StatusData;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->g:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/status/StatusData;->getFormattedStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs setFilters([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filters"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->f:[Ljava/lang/String;

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

    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusConsoleListener;->e:Lorg/apache/logging/log4j/Level;

    return-void
.end method
