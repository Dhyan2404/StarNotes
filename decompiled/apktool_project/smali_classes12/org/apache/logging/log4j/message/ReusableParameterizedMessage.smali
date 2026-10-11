.class public Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/ReusableMessage;
.implements Lorg/apache/logging/log4j/message/ParameterVisitable;
.implements Lcom/sunia/HTREnginev2/yud;


# annotations
.annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    value = {
        "allocation"
    }
.end annotation


# static fields
.field private static final MAX_PARMS:I = 0xa

.field private static final MIN_BUILDER_SIZE:I = 0x200

.field private static final serialVersionUID:J = 0x6c3f6faf867a8190L


# instance fields
.field private argCount:I

.field private transient buffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final indices:[I

.field private messagePattern:Ljava/lang/String;

.field private transient params:[Ljava/lang/Object;

.field transient reserved:Z

.field private transient throwable:Ljava/lang/Throwable;

.field private usedCount:I

.field private transient varargs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->indices:[I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserved:Z

    return-void
.end method

.method private static count(Ljava/lang/String;[I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "indices"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/pvk;->j(Ljava/lang/String;[I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-static {p0}, Lcom/sunia/HTREnginev2/pvk;->i(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getBuffer()Ljava/lang/StringBuilder;
    .locals 4

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->buffer:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->buffer:Ljava/lang/ThreadLocal;

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->buffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x2

    const/16 v3, 0x200

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->buffer:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0
.end method

.method private getParams()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getTrimmedParams()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    iget p0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private init(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "argCount",
            "paramArray"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    iput p2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->indices:[I

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->count(Ljava/lang/String;[I)I

    move-result p1

    invoke-direct {p0, p3, p2, p1}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->initThrowable([Ljava/lang/Object;II)V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->usedCount:I

    return-void
.end method

.method private initThrowable([Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "params",
            "argCount",
            "usedParams"
        }
    .end annotation

    if-ge p3, p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    instance-of p2, p1, Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->throwable:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->throwable:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserved:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public forEachParameter(Lorg/apache/logging/log4j/message/ParameterConsumer;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/message/ParameterConsumer<",
            "TS;>;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getParams()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {p1, v2, v1, p2}, Lorg/apache/logging/log4j/message/ParameterConsumer;->accept(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->indices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getParams()[Ljava/lang/Object;

    move-result-object v1

    iget p0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    invoke-static {p1, v0, v1, p0}, Lcom/sunia/HTREnginev2/pvk;->o(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getParams()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->usedCount:I

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->indices:[I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/sunia/HTREnginev2/pvk;->p(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I[I)V

    :goto_0
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getBuffer()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->formatTo(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Lorg/apache/logging/log4j/util/Constants;->MAX_REUSABLE_MESSAGE_SIZE:I

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->trimToMaxSize(Ljava/lang/StringBuilder;I)V

    return-object p0
.end method

.method public getParameterCount()S
    .locals 0

    iget p0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    int-to-short p0, p0

    return p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getTrimmedParams()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public memento()Lorg/apache/logging/log4j/message/Message;
    .locals 2

    new-instance v0, Lorg/apache/logging/log4j/message/ParameterizedMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->messagePattern:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getTrimmedParams()[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/logging/log4j/message/ParameterizedMessage;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public reserve()Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->reserved:Z

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 6
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 9
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 10
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 13
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 14
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 15
    aput-object p5, v0, p2

    const/4 p2, 0x4

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 18
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 19
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 20
    aput-object p5, v0, p2

    const/4 p2, 0x4

    .line 21
    aput-object p6, v0, p2

    const/4 p2, 0x5

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 24
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 25
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 26
    aput-object p5, v0, p2

    const/4 p2, 0x4

    .line 27
    aput-object p6, v0, p2

    const/4 p2, 0x5

    .line 28
    aput-object p7, v0, p2

    const/4 p2, 0x6

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 31
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 32
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 33
    aput-object p5, v0, p2

    const/4 p2, 0x4

    .line 34
    aput-object p6, v0, p2

    const/4 p2, 0x5

    .line 35
    aput-object p7, v0, p2

    const/4 p2, 0x6

    .line 36
    aput-object p8, v0, p2

    const/4 p2, 0x7

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
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

    .line 38
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 39
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 40
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 41
    aput-object p5, v0, p2

    const/4 p2, 0x4

    .line 42
    aput-object p6, v0, p2

    const/4 p2, 0x5

    .line 43
    aput-object p7, v0, p2

    const/4 p2, 0x6

    .line 44
    aput-object p8, v0, p2

    const/4 p2, 0x7

    .line 45
    aput-object p9, v0, p2

    const/16 p2, 0x8

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
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

    .line 47
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 48
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 49
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 50
    aput-object p5, v0, p2

    const/4 p2, 0x4

    .line 51
    aput-object p6, v0, p2

    const/4 p2, 0x5

    .line 52
    aput-object p7, v0, p2

    const/4 p2, 0x6

    .line 53
    aput-object p8, v0, p2

    const/4 p2, 0x7

    .line 54
    aput-object p9, v0, p2

    const/16 p2, 0x8

    .line 55
    aput-object p10, v0, p2

    const/16 p2, 0x9

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
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

    .line 57
    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 58
    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 59
    aput-object p4, v0, p2

    const/4 p2, 0x3

    .line 60
    aput-object p5, v0, p2

    const/4 p2, 0x4

    .line 61
    aput-object p6, v0, p2

    const/4 p2, 0x5

    .line 62
    aput-object p7, v0, p2

    const/4 p2, 0x6

    .line 63
    aput-object p8, v0, p2

    const/4 p2, 0x7

    .line 64
    aput-object p9, v0, p2

    const/16 p2, 0x8

    .line 65
    aput-object p10, v0, p2

    const/16 p2, 0x9

    .line 66
    aput-object p11, v0, p2

    const/16 p2, 0xa

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs set(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;
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

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->init(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    return-object p0
.end method

.method public swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "emptyReplacement"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->varargs:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    array-length v2, p1

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    array-length v4, p1

    if-gt v2, v4, :cond_1

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->params:[Ljava/lang/Object;

    :goto_1
    move-object p1, v0

    goto :goto_3

    :cond_2
    iget p0, p0, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->argCount:I

    array-length v2, p1

    if-gt p0, v2, :cond_3

    goto :goto_2

    :cond_3
    new-array p1, p0, [Ljava/lang/Object;

    :goto_2
    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReusableParameterizedMessage[messagePattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stringArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ReusableParameterizedMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
