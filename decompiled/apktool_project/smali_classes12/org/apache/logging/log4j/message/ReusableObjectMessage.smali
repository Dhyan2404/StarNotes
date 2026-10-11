.class public Lorg/apache/logging/log4j/message/ReusableObjectMessage;
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
.field private static final serialVersionUID:J = 0x601193fbf10edad8L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    return-void
.end method

.method public forEachParameter(Lorg/apache/logging/log4j/message/ParameterConsumer;Ljava/lang/Object;)V
    .locals 1
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

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, p2}, Lorg/apache/logging/log4j/message/ParameterConsumer;->accept(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    invoke-static {p1, p0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public getParameterCount()S
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public memento()Lorg/apache/logging/log4j/message/Message;
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/message/ObjectMessage;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/message/ObjectMessage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    return-void
.end method

.method public swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "emptyReplacement"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    aput-object p0, p1, v1

    return-object p1

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->obj:Ljava/lang/Object;

    aput-object p0, p1, v1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/ReusableObjectMessage;->getFormattedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
