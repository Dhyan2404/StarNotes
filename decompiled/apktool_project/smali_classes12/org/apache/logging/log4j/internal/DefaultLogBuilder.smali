.class public Lorg/apache/logging/log4j/internal/DefaultLogBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/LogBuilder;


# static fields
.field public static h:Lorg/apache/logging/log4j/message/Message;

.field public static final i:Ljava/lang/String;

.field public static final j:Lorg/apache/logging/log4j/Logger;


# instance fields
.field public final a:Lorg/apache/logging/log4j/Logger;

.field public b:Lorg/apache/logging/log4j/Level;

.field public c:Lorg/apache/logging/log4j/Marker;

.field public d:Ljava/lang/Throwable;

.field public e:Ljava/lang/StackTraceElement;

.field public volatile f:Z

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->h:Lorg/apache/logging/log4j/message/Message;

    const-class v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->i:Ljava/lang/String;

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->j:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/Logger;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logger"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->f:Z

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->g:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/Logger;Lorg/apache/logging/log4j/Level;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "logger",
            "level"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    .line 3
    iput-object p2, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b:Lorg/apache/logging/log4j/Level;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->g:J

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    iget-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->j:Lorg/apache/logging/log4j/Logger;

    const-string v0, "Attempt to reuse LogBuilder was ignored. {}"

    invoke-static {v2}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-wide v3, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->g:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->j:Lorg/apache/logging/log4j/Logger;

    const-string v0, "LogBuilder can only be used on the owning thread. {}"

    invoke-static {v2}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final b(Lorg/apache/logging/log4j/message/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    iget-object v2, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b:Lorg/apache/logging/log4j/Level;

    iget-object v3, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->c:Lorg/apache/logging/log4j/Marker;

    sget-object v4, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->i:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->e:Ljava/lang/StackTraceElement;

    iget-object v7, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->d:Ljava/lang/Throwable;

    move-object v6, p1

    invoke-interface/range {v1 .. v7}, Lorg/apache/logging/log4j/Logger;->logMessage(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->f:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->f:Z

    throw p1
.end method

.method public isInUse()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->f:Z

    return p0
.end method

.method public log()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->h:Lorg/apache/logging/log4j/message/Message;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "p0"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 27
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array/range {p2 .. p8}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 29
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array/range {p2 .. p9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 31
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array/range {p2 .. p10}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 33
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    filled-new-array/range {p2 .. p11}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "*>;)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/logging/log4j/util/LambdaUtil;->getAll([Lorg/apache/logging/log4j/util/Supplier;)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFactory;->newMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/message/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public log(Lorg/apache/logging/log4j/util/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/message/Message;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p1}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/logging/log4j/message/Message;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b(Lorg/apache/logging/log4j/message/Message;)V

    :cond_0
    return-void
.end method

.method public reset(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/LogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->f:Z

    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->b:Lorg/apache/logging/log4j/Level;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->c:Lorg/apache/logging/log4j/Marker;

    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->d:Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->e:Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public withLocation()Lorg/apache/logging/log4j/LogBuilder;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getStackTraceElement(I)Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->e:Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public withLocation(Ljava/lang/StackTraceElement;)Lorg/apache/logging/log4j/LogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->e:Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public withMarker(Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/LogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->c:Lorg/apache/logging/log4j/Marker;

    return-object p0
.end method

.method public withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/internal/DefaultLogBuilder;->d:Ljava/lang/Throwable;

    return-object p0
.end method
