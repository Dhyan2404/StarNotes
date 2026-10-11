.class public Lorg/apache/logging/log4j/message/FormattedMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;


# static fields
.field private static final FORMAT_SPECIFIER:Ljava/lang/String; = "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

.field private static final HASHVAL:I = 0x1f

.field private static final MSG_PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = -0x93e05771a4380c9L


# instance fields
.field private transient argArray:[Ljava/lang/Object;

.field private transient formattedMessage:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private message:Lorg/apache/logging/log4j/message/Message;

.field private messagePattern:Ljava/lang/String;

.field private stringArgs:[Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/message/FormattedMessage;->MSG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

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

    .line 9
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
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

    .line 10
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

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
            "arguments"
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arguments",
            "throwable"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->locale:Ljava/util/Locale;

    .line 14
    iput-object p1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    .line 16
    iput-object p3, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->throwable:Ljava/lang/Throwable;

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
            "messagePattern",
            "arg"
        }
    .end annotation

    .line 1
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "messagePattern",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 2
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "messagePattern",
            "arguments"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/FormattedMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "locale",
            "messagePattern",
            "arguments",
            "throwable"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->locale:Ljava/util/Locale;

    .line 6
    iput-object p2, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->throwable:Ljava/lang/Throwable;

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
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/FormattedMessage;->getFormattedMessage()Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    aput-object v4, v5, v3

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/message/FormattedMessage;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object p0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/message/FormattedMessage;->getMessage(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->formattedMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "msgPattern",
            "args",
            "aThrowable"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/apache/logging/log4j/message/MessageFormatMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/logging/log4j/message/MessageFormatMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    :try_start_1
    sget-object v0, Lorg/apache/logging/log4j/message/FormattedMessage;->MSG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/logging/log4j/message/StringFormattedMessage;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->locale:Ljava/util/Locale;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/message/StringFormattedMessage;-><init>(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :cond_1
    new-instance p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 3

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->argArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/message/FormattedMessage;->getMessage(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    :cond_1
    iget-object p0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {p0}, Lorg/apache/logging/log4j/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->messagePattern:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/apache/logging/log4j/message/FormattedMessage;->stringArgs:[Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/FormattedMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
