.class public Lorg/apache/logging/log4j/message/ThreadDumpMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/message/ThreadDumpMessage$b;,
        Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;,
        Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/message/AsynchronouslyFormattable;
.end annotation


# static fields
.field private static FACTORY:Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory; = null

.field private static final serialVersionUID:J = -0xf50112a30aeef80L


# instance fields
.field private formattedMessage:Ljava/lang/String;

.field private volatile threads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/logging/log4j/message/ThreadInformation;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "title"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 3
    :cond_0
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    .line 4
    invoke-static {}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->getFactory()Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;->createThreadInfo()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->threads:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formattedMsg",
            "title"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->formattedMessage:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 7
    :cond_0
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/message/ThreadDumpMessage$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/logging/log4j/message/ThreadDumpMessage;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    return-object p0
.end method

.method private static getFactory()Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->FACTORY:Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    if-nez v0, :cond_0

    const-class v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->initFactory(Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->FACTORY:Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->FACTORY:Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    return-object v0
.end method

.method private static initFactory(Ljava/lang/ClassLoader;)Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "classLoader"
        }
    .end annotation

    const-class v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;

    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadInfoFactory;
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    const-string v2, "ThreadDumpMessage uses BasicThreadInfoFactory: could not load extended ThreadInfoFactory: {}"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/logging/log4j/message/ThreadDumpMessage$b;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage$b;-><init>(Lorg/apache/logging/log4j/message/ThreadDumpMessage$a;)V

    :cond_1
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Proxy required"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->threads:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/message/ThreadInformation;

    invoke-interface {v2, p1}, Lorg/apache/logging/log4j/message/ThreadInformation;->printThreadInfo(Ljava/lang/StringBuilder;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-interface {v2, p1, v0}, Lorg/apache/logging/log4j/message/ThreadInformation;->printStack(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->title:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->formattedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->formatTo(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/message/ThreadDumpMessage$ThreadDumpMessageProxy;-><init>(Lorg/apache/logging/log4j/message/ThreadDumpMessage;)V

    return-object v0
.end method
