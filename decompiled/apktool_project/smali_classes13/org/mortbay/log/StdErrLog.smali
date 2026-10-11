.class public Lorg/mortbay/log/StdErrLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/log/Logger;


# static fields
.field public static c:Lorg/mortbay/util/DateCache;

.field public static d:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/StringBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DEBUG"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/mortbay/log/StdErrLog;->d:Z

    :try_start_0
    new-instance v0, Lorg/mortbay/util/DateCache;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/mortbay/log/StdErrLog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 4
    :cond_0
    iput-object p1, p0, Lorg/mortbay/log/StdErrLog;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, -0x1

    const-string v1, "{}"

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    const/16 v1, 0x20

    if-ltz v2, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    const-string v3, "null"

    if-nez p2, :cond_2

    move-object p2, v3

    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    if-ltz v0, :cond_4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    if-nez p3, :cond_3

    move-object p3, v3

    :cond_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    iget-object p1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    :cond_6
    if-eqz p3, :cond_7

    iget-object p1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const-string v2, "\n\tat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x63

    if-le p2, p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    if-le p2, p1, :cond_1

    iget-object p1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const-string v0, ".0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    const-string v0, ".00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p1, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/log/StdErrLog;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 10
    sget-boolean v0, Lorg/mortbay/log/StdErrLog;->d:Z

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v0}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v1, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v1}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    .line 13
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    const-string v3, ":DBUG:"

    .line 14
    invoke-virtual {p0, v0, v1, v3}, Lorg/mortbay/log/StdErrLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/log/StdErrLog;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object p0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-boolean v0, Lorg/mortbay/log/StdErrLog;->d:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v0}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v1}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    .line 4
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    const-string v3, ":DBUG:"

    .line 5
    invoke-virtual {p0, v0, v1, v3}, Lorg/mortbay/log/StdErrLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p2}, Lorg/mortbay/log/StdErrLog;->c(Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object p0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/mortbay/log/StdErrLog;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Lorg/mortbay/log/StdErrLog;

    invoke-direct {p0, p1}, Lorg/mortbay/log/StdErrLog;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v0}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v1}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    const-string v3, ":INFO:"

    invoke-virtual {p0, v0, v1, v3}, Lorg/mortbay/log/StdErrLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/log/StdErrLog;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object p0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDebugEnabled()Z
    .locals 0

    sget-boolean p0, Lorg/mortbay/log/StdErrLog;->d:Z

    return p0
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    sput-boolean p1, Lorg/mortbay/log/StdErrLog;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "STDERR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/log/StdErrLog;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v0}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v1}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    .line 3
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    const-string v3, ":WARN:"

    .line 4
    invoke-virtual {p0, v0, v1, v3}, Lorg/mortbay/log/StdErrLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/log/StdErrLog;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object p0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 8
    sget-object v0, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v0}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v1, Lorg/mortbay/log/StdErrLog;->c:Lorg/mortbay/util/DateCache;

    invoke-virtual {v1}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v1

    .line 10
    iget-object v2, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    const-string v3, ":WARN:"

    .line 11
    invoke-virtual {p0, v0, v1, v3}, Lorg/mortbay/log/StdErrLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Lorg/mortbay/log/StdErrLog;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p2}, Lorg/mortbay/log/StdErrLog;->c(Ljava/lang/Throwable;)V

    .line 14
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object p0, p0, Lorg/mortbay/log/StdErrLog;->b:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
