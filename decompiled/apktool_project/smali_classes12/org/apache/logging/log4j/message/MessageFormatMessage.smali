.class public Lorg/apache/logging/log4j/message/MessageFormatMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;


# static fields
.field private static final HASHVAL:I = 0x1f

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient formattedMessage:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private messagePattern:Ljava/lang/String;

.field private transient parameters:[Ljava/lang/Object;

.field private serializedParameters:[Ljava/lang/String;

.field private transient throwable:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "parameters"
        }
    .end annotation

    .line 8
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/message/MessageFormatMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "messagePattern",
            "parameters"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->locale:Ljava/util/Locale;

    .line 3
    iput-object p2, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->messagePattern:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->parameters:[Ljava/lang/Object;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    array-length p1, p3

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 6
    aget-object p1, p3, p1

    instance-of p2, p1, Ljava/lang/Throwable;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->throwable:Ljava/lang/Throwable;

    :cond_1
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
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
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->parameters:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->serializedParameters:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->serializedParameters:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
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

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/MessageFormatMessage;->getFormattedMessage()Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->parameters:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->serializedParameters:[Ljava/lang/String;

    if-lez v0, :cond_1

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->serializedParameters:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->parameters:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->serializedParameters:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/message/MessageFormatMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->messagePattern:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lorg/apache/logging/log4j/message/MessageFormatMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lorg/apache/logging/log4j/message/MessageFormatMessage;->messagePattern:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-object p0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->serializedParameters:[Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/logging/log4j/message/MessageFormatMessage;->serializedParameters:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msgPattern",
            "args"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/text/MessageFormat;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->locale:Ljava/util/Locale;

    invoke-direct {v0, p1, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p2, Lorg/apache/logging/log4j/message/MessageFormatMessage;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to format msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->messagePattern:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->formattedMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->messagePattern:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->parameters:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/message/MessageFormatMessage;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->formattedMessage:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->formattedMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->parameters:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->serializedParameters:[Ljava/lang/String;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->messagePattern:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/apache/logging/log4j/message/MessageFormatMessage;->serializedParameters:[Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/MessageFormatMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
