.class public Lorg/apache/logging/log4j/message/ReusableSimpleMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/message/ReusableMessage;
.implements Ljava/lang/CharSequence;
.implements Lorg/apache/logging/log4j/message/ParameterVisitable;
.implements Lcom/sunia/HTREnginev2/yud;


# annotations
.annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    value = {
        "allocation"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7face011f27a5451L


# instance fields
.field private charSequence:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public forEachParameter(Lorg/apache/logging/log4j/message/ParameterConsumer;Ljava/lang/Object;)V
    .locals 0
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

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

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

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterCount()S
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 0

    sget-object p0, Lorg/apache/logging/log4j/util/Constants;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public memento()Lorg/apache/logging/log4j/message/Message;
    .locals 1

    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public set(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charSequence"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/message/ReusableSimpleMessage;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "emptyReplacement"
        }
    .end annotation

    return-object p1
.end method
