.class public Lorg/slf4j/helpers/SubstituteLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/slf4j/Logger;


# instance fields
.field public final e:Ljava/lang/String;

.field public volatile f:Lorg/slf4j/Logger;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/reflect/Method;

.field public i:Lorg/slf4j/event/EventRecodingLogger;

.field public j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/slf4j/helpers/SubstituteLogger;->e:Ljava/lang/String;

    iput-object p2, p0, Lorg/slf4j/helpers/SubstituteLogger;->j:Ljava/util/Queue;

    iput-boolean p3, p0, Lorg/slf4j/helpers/SubstituteLogger;->k:Z

    return-void
.end method


# virtual methods
.method public a()Lorg/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->k:Z

    if-eqz v0, :cond_1

    sget-object p0, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->b()Lorg/slf4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lorg/slf4j/Logger;
    .locals 2

    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->i:Lorg/slf4j/event/EventRecodingLogger;

    if-nez v0, :cond_0

    new-instance v0, Lorg/slf4j/event/EventRecodingLogger;

    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLogger;->j:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lorg/slf4j/event/EventRecodingLogger;-><init>(Lorg/slf4j/helpers/SubstituteLogger;Ljava/util/Queue;)V

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->i:Lorg/slf4j/event/EventRecodingLogger;

    :cond_0
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->i:Lorg/slf4j/event/EventRecodingLogger;

    return-object p0
.end method

.method public debug(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/slf4j/helpers/SubstituteLogger;

    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->e:Ljava/lang/String;

    iget-object p1, p1, Lorg/slf4j/helpers/SubstituteLogger;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->e:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public info(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p0

    return p0
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isDelegateEventAware()Z
    .locals 5

    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lorg/slf4j/event/LoggingEvent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->h:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->g:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->g:Ljava/lang/Boolean;

    :goto_0
    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isDelegateNOP()Z
    .locals 0

    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    instance-of p0, p0, Lorg/slf4j/helpers/NOPLogger;

    return p0
.end method

.method public isDelegateNull()Z
    .locals 0

    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isErrorEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result p0

    return p0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isInfoEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result p0

    return p0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isTraceEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p0

    return p0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isWarnEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result p0

    return p0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public log(Lorg/slf4j/event/LoggingEvent;)V
    .locals 1

    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->h:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/slf4j/Logger;)V
    .locals 0

    iput-object p1, p0, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->a()Lorg/slf4j/Logger;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
