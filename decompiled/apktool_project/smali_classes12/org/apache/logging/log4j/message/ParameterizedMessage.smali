.class public Lorg/apache/logging/log4j/message/ParameterizedMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/Message;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# static fields
.field private static final DEFAULT_STRING_BUILDER_SIZE:I = 0xff

.field public static final ERROR_MSG_SEPARATOR:Ljava/lang/String; = ":"

.field public static final ERROR_PREFIX:Ljava/lang/String; = "[!!!"

.field public static final ERROR_SEPARATOR:Ljava/lang/String; = "=>"

.field public static final ERROR_SUFFIX:Ljava/lang/String; = "!!!]"

.field private static final HASHVAL:I = 0x1f

.field public static final RECURSION_PREFIX:Ljava/lang/String; = "[..."

.field public static final RECURSION_SUFFIX:Ljava/lang/String; = "...]"

.field private static final serialVersionUID:J = -0x93e05771a4380c9L

.field private static threadLocalStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient argArray:[Ljava/lang/Object;

.field private formattedMessage:Ljava/lang/String;

.field private indices:[I

.field private messagePattern:Ljava/lang/String;

.field private transient throwable:Ljava/lang/Throwable;

.field private usedCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
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

    .line 12
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

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
            "arg0",
            "arg1"
        }
    .end annotation

    .line 13
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    .line 11
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static countArgumentPlaceholders(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messagePattern"
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/pvk;->i(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/pvk;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
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

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/pvk;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getThreadLocalStringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    sget-object v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lorg/apache/logging/log4j/message/ParameterizedMessage;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/pvk;->w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messagePattern"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/2addr v2, v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->indices:[I

    invoke-static {p1, v1}, Lcom/sunia/HTREnginev2/pvk;->j(Ljava/lang/String;[I)I

    move-result p1

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    invoke-direct {p0, v1, p1}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->initThrowable([Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, v1

    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->usedCount:I

    return-void
.end method

.method private initThrowable([Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "params",
            "usedParams"
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    iget-object p2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    if-nez p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    instance-of p2, p1, Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

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
    check-cast p1, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object p0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

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

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formattedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->indices:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-gez v1, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    iget p0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->usedCount:I

    invoke-static {p1, v0, v1, p0}, Lcom/sunia/HTREnginev2/pvk;->o(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    iget p0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->usedCount:I

    invoke-static {p1, v1, v2, p0, v0}, Lcom/sunia/HTREnginev2/pvk;->p(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I[I)V

    :goto_0
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formattedMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->getThreadLocalStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formatTo(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formattedMessage:Ljava/lang/String;

    sget v1, Lorg/apache/logging/log4j/util/Constants;->MAX_REUSABLE_MESSAGE_SIZE:I

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->trimToMaxSize(Ljava/lang/StringBuilder;I)V

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->formattedMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParameterizedMessage[messagePattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stringArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->argArray:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ParameterizedMessage;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
