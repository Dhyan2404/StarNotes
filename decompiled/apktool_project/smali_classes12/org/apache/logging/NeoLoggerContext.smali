.class public Lorg/apache/logging/NeoLoggerContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/spi/LoggerContext;


# static fields
.field protected static final DEFAULT_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss:SSS zzz"

.field protected static final SYSTEM_PREFIX:Ljava/lang/String; = "org.apache.logging.log4j.simplelog."

.field public static final j:Ljava/lang/String; = "system.out"

.field public static final k:Ljava/lang/String; = "system.err"


# instance fields
.field public final a:Lorg/apache/logging/log4j/util/PropertiesUtil;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Lorg/apache/logging/log4j/Level;

.field public final h:Ljava/io/PrintStream;

.field public final i:Lorg/apache/logging/log4j/spi/LoggerRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/spi/LoggerRegistry<",
            "Lorg/apache/logging/log4j/spi/ExtendedLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-direct {v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/NeoLoggerContext;->i:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "log4j2.simplelog.properties"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/NeoLoggerContext;->a:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "org.apache.logging.log4j.simplelog.showContextMap"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/logging/NeoLoggerContext;->e:Z

    const-string v1, "org.apache.logging.log4j.simplelog.showlogname"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/logging/NeoLoggerContext;->b:Z

    const-string v1, "org.apache.logging.log4j.simplelog.showShortLogname"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/logging/NeoLoggerContext;->c:Z

    const-string v1, "org.apache.logging.log4j.simplelog.showdatetime"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/logging/NeoLoggerContext;->d:Z

    const-string v2, "org.apache.logging.log4j.simplelog.level"

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/logging/NeoLoggerContext;->g:Lorg/apache/logging/log4j/Level;

    if-eqz v1, :cond_0

    const-string v1, "org.apache.logging.log4j.simplelog.dateTimeFormat"

    const-string v2, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/apache/logging/NeoLoggerContext;->f:Ljava/lang/String;

    const-string v1, "org.apache.logging.log4j.simplelog.logFile"

    const-string v2, "system.err"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_1

    :cond_1
    const-string v1, "system.out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_1
    iput-object v0, p0, Lorg/apache/logging/NeoLoggerContext;->h:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public getExternalContext()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/logging/log4j/spi/ExtendedLogger;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/logging/NeoLoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object p0

    return-object p0
.end method

.method public getLogger(Ljava/lang/Class;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ")",
            "Lorg/apache/logging/log4j/spi/ExtendedLogger;"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/NeoLoggerContext;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object p0

    return-object p0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/NeoLoggerContext;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object p0

    return-object p0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 12

    .line 2
    invoke-static {p1}, Lorg/apache/logging/NeoLogger;->removePOI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lorg/apache/logging/NeoLoggerContext;->i:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->checkMessageFactory(Lorg/apache/logging/log4j/spi/ExtendedLogger;Lorg/apache/logging/log4j/message/MessageFactory;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v11, Lorg/apache/logging/NeoLogger;

    iget-object v2, p0, Lorg/apache/logging/NeoLoggerContext;->g:Lorg/apache/logging/log4j/Level;

    iget-boolean v3, p0, Lorg/apache/logging/NeoLoggerContext;->b:Z

    iget-boolean v4, p0, Lorg/apache/logging/NeoLoggerContext;->c:Z

    iget-boolean v5, p0, Lorg/apache/logging/NeoLoggerContext;->d:Z

    iget-boolean v6, p0, Lorg/apache/logging/NeoLoggerContext;->e:Z

    iget-object v7, p0, Lorg/apache/logging/NeoLoggerContext;->f:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/logging/NeoLoggerContext;->a:Lorg/apache/logging/log4j/util/PropertiesUtil;

    iget-object v10, p0, Lorg/apache/logging/NeoLoggerContext;->h:Ljava/io/PrintStream;

    move-object v0, v11

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lorg/apache/logging/NeoLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;ZZZZLjava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/util/PropertiesUtil;Ljava/io/PrintStream;)V

    .line 6
    iget-object v0, p0, Lorg/apache/logging/NeoLoggerContext;->i:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {v0, p1, p2, v11}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->putIfAbsent(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/spi/ExtendedLogger;)V

    .line 7
    iget-object p0, p0, Lorg/apache/logging/NeoLoggerContext;->i:Lorg/apache/logging/log4j/spi/LoggerRegistry;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object p0

    return-object p0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasLogger(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public hasLogger(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;)Z"
        }
    .end annotation

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public hasLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Z
    .locals 0

    .line 3
    const/4 p0, 0x0

    return p0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public putObjectIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method
