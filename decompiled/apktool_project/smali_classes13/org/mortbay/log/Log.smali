.class public Lorg/mortbay/log/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXCEPTION:Ljava/lang/String; = "EXCEPTION "

.field public static final IGNORED:Ljava/lang/String; = "IGNORED"

.field public static final IGNORED_FMT:Ljava/lang/String; = "IGNORED: {}"

.field public static final NOT_IMPLEMENTED:Ljava/lang/String; = "NOT IMPLEMENTED "

.field public static __ignored:Z

.field public static __logClass:Ljava/lang/String;

.field public static __verbose:Z

.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/Class;

.field public static c:Lorg/mortbay/log/Logger;

.field public static synthetic d:Ljava/lang/Class;

.field public static synthetic e:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "getException"

    const-string v1, "getRootCause"

    const-string v2, "getTargetException"

    const-string v3, "getTargetError"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/log/Log;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/mortbay/log/Log;->b:[Ljava/lang/Class;

    new-instance v0, Lorg/mortbay/log/a;

    invoke-direct {v0}, Lorg/mortbay/log/a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :try_start_0
    sget-object v0, Lorg/mortbay/log/Log;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.log.Log"

    invoke-static {v0}, Lorg/mortbay/log/Log;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/log/Log;->d:Ljava/lang/Class;

    :cond_0
    sget-object v1, Lorg/mortbay/log/Log;->__logClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/log/Logger;

    sput-object v1, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lorg/mortbay/log/Log;->e:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.mortbay.log.StdErrLog"

    invoke-static {v1}, Lorg/mortbay/log/Log;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/log/Log;->e:Ljava/lang/Class;

    :cond_1
    new-instance v2, Lorg/mortbay/log/StdErrLog;

    invoke-direct {v2}, Lorg/mortbay/log/StdErrLog;-><init>()V

    sput-object v2, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/mortbay/log/Log;->__logClass:Ljava/lang/String;

    sget-boolean v2, Lorg/mortbay/log/Log;->__verbose:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move-object v0, v1

    :goto_0
    sget-object v1, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Logging to {} via {}"

    invoke-interface {v1, v2, v1, v0}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/mortbay/log/Log;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aget-object v1, v1, v0

    sget-object v3, Lorg/mortbay/log/Log;->b:[Ljava/lang/Class;

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    if-eq v1, p0, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Nested in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2

    .line 4
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, p0, v1, v1}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 6
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, p0, p1, v1}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 8
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p0}, Lorg/mortbay/log/Log;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getLog()Lorg/mortbay/log/Logger;
    .locals 1

    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;
    .locals 1

    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v0, p0}, Lorg/mortbay/log/Logger;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static ignore(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lorg/mortbay/log/Log;->__ignored:Z

    const-string v2, "IGNORED"

    if-eqz v1, :cond_1

    invoke-interface {v0, v2, p0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lorg/mortbay/log/Log;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    sget-boolean v1, Lorg/mortbay/log/Log;->__verbose:Z

    if-eqz v1, :cond_2

    invoke-interface {v0, v2, p0}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lorg/mortbay/log/Log;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p0, v1, v1}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p0, p1, v1}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 5
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lorg/mortbay/log/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public static setLog(Lorg/mortbay/log/Logger;)V
    .locals 0

    sput-object p0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p0, v1, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p0, p1, v1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 5
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 7
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-interface {v0, p0, p1}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Lorg/mortbay/log/Log;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 2

    .line 10
    sget-object v0, Lorg/mortbay/log/Log;->c:Lorg/mortbay/log/Logger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "EXCEPTION "

    .line 11
    invoke-interface {v0, v1, p0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p0}, Lorg/mortbay/log/Log;->a(Ljava/lang/Throwable;)V

    return-void
.end method
