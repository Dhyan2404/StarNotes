.class public Lorg/apache/logging/log4j/message/LocalizedMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;
.implements Lorg/apache/logging/log4j/message/LoggerNameAwareMessage;


# static fields
.field private static final serialVersionUID:J = 0x360936f7fcf5c176L


# instance fields
.field private transient argArray:[Ljava/lang/Object;

.field private baseName:Ljava/lang/String;

.field private formattedMessage:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private transient logger:Lorg/apache/logging/log4j/status/StatusLogger;

.field private loggerName:Ljava/lang/String;

.field private transient resourceBundle:Ljava/util/ResourceBundle;

.field private stringArgs:[Ljava/lang/String;

.field private transient throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arg"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arg1",
            "arg2"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "key",
            "arg"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "key",
            "arguments"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "locale",
            "key",
            "arg"
        }
    .end annotation

    .line 25
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
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
            "baseName",
            "locale",
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 31
    filled-new-array {p4, p5}, [Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseName",
            "locale",
            "key",
            "arguments"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 6
    iput-object p3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    const/4 p3, 0x0

    .line 8
    iput-object p3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->throwable:Ljava/lang/Throwable;

    .line 9
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->resourceBundle:Ljava/util/ResourceBundle;

    .line 11
    iput-object p2, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arguments"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "key",
            "arg"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "key",
            "arguments"
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bundle",
            "key"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, v1, p2, v0}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "key",
            "arg"
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "key",
            "arguments"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "locale",
            "key",
            "arg"
        }
    .end annotation

    .line 26
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
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
            "bundle",
            "locale",
            "key",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 32
    filled-new-array {p4, p5}, [Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/message/LocalizedMessage;-><init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bundle",
            "locale",
            "key",
            "arguments"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 14
    iput-object p3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    const/4 p3, 0x0

    .line 16
    iput-object p3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->throwable:Ljava/lang/Throwable;

    .line 17
    iput-object p3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->resourceBundle:Ljava/util/ResourceBundle;

    .line 19
    iput-object p2, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->locale:Ljava/util/Locale;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->resourceBundle:Ljava/util/ResourceBundle;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getFormattedMessage()Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->resourceBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->locale:Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getResourceBundle(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->loggerName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getResourceBundle(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getFormat()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    :cond_5
    new-instance v2, Lorg/apache/logging/log4j/message/FormattedMessage;

    invoke-direct {v2, v1, v0}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/apache/logging/log4j/message/FormattedMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/message/FormattedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->throwable:Ljava/lang/Throwable;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->formattedMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->loggerName:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->argArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->stringArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public getResourceBundle(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/util/ResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "rbBaseName",
            "resourceBundleLocale",
            "loop"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "Unable to locate ResourceBundle "

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p3

    goto :goto_1

    :catch_0
    if-nez p3, :cond_2

    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/spi/AbstractLogger;->debug(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    const/16 p3, 0x2e

    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-lez p3, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3

    :try_start_1
    invoke-static {p1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iget-object p3, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->logger:Lorg/apache/logging/log4j/status/StatusLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/message/LocalizedMessage;->loggerName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/LocalizedMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
