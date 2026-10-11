.class public Lorg/mortbay/log/Slf4jLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/log/Logger;


# instance fields
.field public a:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "org.mortbay.log"

    .line 1
    invoke-direct {p0, v0}, Lorg/mortbay/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/mortbay/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;
    .locals 0

    new-instance p0, Lorg/mortbay/log/Slf4jLog;

    invoke-direct {p0, p1}, Lorg/mortbay/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p0

    return p0
.end method

.method public setDebugEnabled(Z)V
    .locals 1

    const-string p1, "setDebugEnabled not implemented"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/mortbay/log/Slf4jLog;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mortbay/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Error;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/mortbay/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/mortbay/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {p0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
